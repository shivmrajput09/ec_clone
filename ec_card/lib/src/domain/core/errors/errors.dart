import 'package:freezed_annotation/freezed_annotation.dart';
import 'login_errors.dart';

part 'errors.freezed.dart';

@freezed
class AppErrors with _$AppErrors {
  const factory AppErrors.notFound() = NotFound;
  const factory AppErrors.requestTimeout() = RequestTimeout;
  const factory AppErrors.noInternetConnection() = NoInternetConnection;
  const factory AppErrors.defaultError({required String error}) = DefaultError;
  const factory AppErrors.unexpectedError() = UnexpectedError;
  const factory AppErrors.permissionDenied() = PermissionDenied;
  const factory AppErrors.authErrors({required LoginErrors loginError}) = AuthErrors;
  const factory AppErrors.payloadTooLarge() = PayloadTooLarge;
  const factory AppErrors.tooManyRequests({Duration? retryAfter}) = TooManyRequests;
  const factory AppErrors.serverError() = ServerError;
  const factory AppErrors.serviceUnavailable() = ServiceUnavailable;
}