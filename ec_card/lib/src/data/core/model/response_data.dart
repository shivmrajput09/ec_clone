// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_data.freezed.dart';

part 'response_data.g.dart';

ResponseData responseDataFromJson(String str) =>
    ResponseData.fromJson(jsonDecode(str));

String responseDataToJson(ResponseData data) => json.encode(data.toJson());

@freezed
class ResponseData with _$ResponseData {
  const factory ResponseData({
    @JsonKey(name: 'status') @Default(0) int status,
    @JsonKey(name: 'data') @Default('') String data,
    @JsonKey(name: 'message') @Default('') String message,
  }) = _ResponseData;

  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);
}

ResponseData convertToResponseData(Response<dynamic> response) {
  final body = response.data;

  // Not every reply is the envelope the app expects. A route the gateway does
  // not serve for the method used falls through to the web app and answers
  // with its HTML index page — with a 200 — so the body is a string, and
  // reading a field off it used to throw.
  if (body is! Map) {
    return ResponseData(
      status: response.statusCode ?? 0,
      data: '{}',
      message: '',
    );
  }

  final status = body['status'];
  final message = body['message'];

  return ResponseData(
    // The envelope carries its own status, which is not always the HTTP one.
    // Where it is missing, the transport's status is the better answer than
    // the default of zero.
    status: status is int ? status : (response.statusCode ?? 0),
    // `data` is null on most refusals and is occasionally a list rather than
    // an object. Encoding whatever arrived keeps the callers' `jsonDecode`
    // working, and an absent payload becomes an empty object instead of the
    // cast failure that took down the whole call.
    data: json.encode(body['data'] ?? const <String, dynamic>{}),
    message: message is String ? message : '',
  );
}

/// The body the gateway sends with a rejected request, or null if there isn't
/// a usable one.
///
/// A rejection arrives as a 4xx *and* a body in the usual shape saying why —
/// `{status: 204, data: {}, message: "Invalid or expired OTP"}`. Dio's default
/// `validateStatus` throws on any 4xx before a repository can read that body,
/// so the `else` branches written to handle a rejection never run and the
/// explanation is lost: the caller falls into `catch` and reports the generic
/// unexpected error instead. Reaching into the thrown exception gets the body
/// back.
///
/// A transport failure — no network, timeout, DNS — carries no response at
/// all and returns null here, so it stays an unexpected error rather than
/// being reported to the user as a rejection the server never made.
ResponseData? rejectionData(Object error) {
  if (error is! DioException) return null;

  final body = error.response?.data;
  if (body is! Map) return null;

  final message = body['message'];
  if (message is! String || message.trim().isEmpty) return null;

  final status = body['status'];

  // `data` is deliberately left empty: a rejection carries no payload, and the
  // cast in [convertToResponseData] would throw on the bodies that omit it.
  return ResponseData(
    status: status is int ? status : (error.response?.statusCode ?? 0),
    message: message.trim(),
  );
}

/// What to report for a caught [error].
///
/// The server's own explanation is preferred over anything the app can say.
/// Requests carry `Accept-Language` and the gateway answers in kind — a
/// rejected code reads "Invalid or expired OTP" in English and "OTP annilys
/// neu wedi dod i ben" in Welsh — so its message is both more specific than a
/// generic string and already translated into all the languages the app
/// offers.
///
/// Only a failure the server never described — no network, a timeout, a
/// parsing slip — falls back to the generic message.
AppErrors appErrorFrom(Object error) {
  // Rate limiting is the one refusal the app can improve on. The gateway says
  // "Too many requests. Please try again later." and separately, in
  // Retry-After, exactly how long later — so this is checked before the
  // message, to turn vague advice into a countdown the user can act on.
  if (error is DioException && error.response?.statusCode == 429) {
    return AppErrors.tooManyRequests(retryAfter: _retryAfterOf(error));
  }

  final rejection = rejectionData(error);
  if (rejection != null) {
    return AppErrors.defaultError(error: rejection.message);
  }

  // No message to pass on, so fall back to what the status itself means.
  // These are the refusals the hardened gateway makes that carry no body:
  // saying which one it was is more use than "something went wrong".
  if (error is DioException) {
    switch (error.response?.statusCode) {
      case 403:
        return const AppErrors.permissionDenied();
      case 404:
        return const AppErrors.notFound();
      case 413:
        return const AppErrors.payloadTooLarge();
      case 500:
        return const AppErrors.serverError();
      case 503:
        return const AppErrors.serviceUnavailable();
    }

    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const AppErrors.requestTimeout();
      case DioExceptionType.connectionError:
        return const AppErrors.noInternetConnection();
      default:
        break;
    }
  }

  return const AppErrors.unexpectedError();
}

/// How long the gateway asked us to wait before trying again.
///
/// `Retry-After` is either a whole number of seconds or an HTTP date. Only the
/// seconds form is read here; a date, or anything unparseable, yields null and
/// the caller falls back to a message without a countdown.
Duration? _retryAfterOf(DioException error) {
  final header = error.response?.headers.value('retry-after');
  if (header == null) return null;

  final seconds = int.tryParse(header.trim());
  if (seconds == null || seconds <= 0) return null;

  return Duration(seconds: seconds);
}

/// What to report for a [result] the server returned but did not mark as
/// successful.
///
/// The API's older convention is to answer 200 and put the real outcome in the
/// body, so a refusal arrives here rather than as a thrown rejection. It
/// carries the same explanatory message, which is worth showing for the same
/// reasons; an empty one leaves nothing to say and falls back.
AppErrors serverErrorFrom(ResponseData result) {
  final message = result.message.trim();
  if (message.isEmpty) return const AppErrors.unexpectedError();

  return AppErrors.defaultError(error: message);
}
