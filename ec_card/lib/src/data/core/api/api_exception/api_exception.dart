// ignore_for_file: dead_code

import 'package:dio/dio.dart';
import 'package:ec_card_app/src/presentation/core/res/strings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:easy_localization/easy_localization.dart';

part 'api_exception.freezed.dart';

@freezed
abstract class ApiException with _$ApiException {
  const factory ApiException.requestCancelled() = RequestCancelled;

  const factory ApiException.unauthorisedRequest() = UnauthorisedRequest;

  const factory ApiException.badRequest() = BadRequest;

  const factory ApiException.notFound(String reason) = NotFound;

  const factory ApiException.methodNotAllowed() = MethodNotAllowed;

  const factory ApiException.notAcceptable() = NotAcceptable;

  const factory ApiException.requestTimeout() = RequestTimeout;

  const factory ApiException.sendTimeout() = SendTimeout;

  const factory ApiException.conflict() = Conflict;

  const factory ApiException.internalServerError() = InternalServerError;

  const factory ApiException.notImplemented() = NotImplemented;

  const factory ApiException.serviceUnavailable() = ServiceUnavailable;

  const factory ApiException.noInternetConnection() = NoInternetConnection;

  const factory ApiException.formatException() = FormatException;

  const factory ApiException.unableToProcess() = UnableToProcess;

  const factory ApiException.defaultError(String error) = DefaultError;

  const factory ApiException.unexpectedError() = UnExpectedError;

  const factory ApiException.unauthorizedException() = UnauthorizedException;

  const factory ApiException.unableToPerformAction() = UnableToPerformAction;

  const factory ApiException.userDisabled() = UserDisabled;

  const factory ApiException.invalidIdToken() = InvalidIdToken;

  const factory ApiException.usernameNotValid() = UserNameNotvalid;

  const factory ApiException.registrationFailed() = RegistrationFailed;

  static ApiException getApiException(Response response) {
    switch (response.statusCode) {
      case 400:
        return const ApiException.badRequest();
        break;
      case 401:
      case 403:
        return const ApiException.unauthorisedRequest();
        break;
      case 404:
        return const ApiException.notFound("Not Found");
        break;
      case 424:
        return const ApiException.unableToPerformAction();
        break;
      case 500:
        return const ApiException.internalServerError();
        break;
      default:
        return ApiException.defaultError(
            'Received unknown status code : ${response.statusCode}');
    }
  }

  static String getErrorMessage(ApiException apiException) {
    return apiException.maybeWhen(
      notImplemented: () => Strings.not_implemented.tr(),
      requestCancelled: () => Strings.request_cancelled.tr(),
      internalServerError: () => Strings.internal_server_error.tr(),
      notFound: (String reason) => reason,
      serviceUnavailable: () => Strings.servcie_unavailable.tr(),
      methodNotAllowed: () => Strings.method_not_allowed.tr(),
      badRequest: () => Strings.bad_request.tr(),
      unauthorisedRequest: () => Strings.unauthorized_request.tr(),
      unexpectedError: () => Strings.unexpectedError.tr(),
      noInternetConnection: () => Strings.no_internet_connection.tr(),
      requestTimeout: () => Strings.request_timeout.tr(),
      conflict: () => Strings.conflict.tr(),
      sendTimeout: () => Strings.send_timeout.tr(),
      unableToProcess: () => Strings.unable_to_process.tr(),
      unauthorizedException: () => Strings.unauthorized_exception.tr(),
      defaultError: (String error) => error,
      formatException: () => Strings.format_exception.tr(),
      notAcceptable: () => Strings.not_acceptable.tr(),
      unableToPerformAction: () => Strings.unable_to_perform_action.tr(),
      orElse: () => '',
    );
  }
}
