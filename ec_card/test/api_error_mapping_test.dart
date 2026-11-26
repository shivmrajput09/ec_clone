import 'package:dio/dio.dart';
import 'package:ec_card_app/src/data/core/model/response_data.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:flutter_test/flutter_test.dart';

/// A response as the gateway sends it, with the headers that matter here.
Response<dynamic> _response(
  int status, {
  dynamic body,
  Map<String, List<String>> headers = const {},
}) {
  return Response<dynamic>(
    requestOptions: RequestOptions(path: '/user/v1/login'),
    statusCode: status,
    data: body,
    headers: Headers.fromMap(headers),
  );
}

DioException _thrown(Response<dynamic> response) => DioException(
      requestOptions: response.requestOptions,
      response: response,
      type: DioExceptionType.badResponse,
    );

void main() {
  group('convertToResponseData survives what the gateway actually sends', () {
    test('an HTML index page instead of the envelope', () {
      // A route the gateway does not serve for this method answers with the
      // web app's page, and with a 200.
      final result = convertToResponseData(
        _response(200, body: '<!doctype html><html lang="en">'),
      );

      expect(result.status, 200);
      expect(result.message, '');
      expect(result.data, '{}');
    });

    test('a null payload, which every refusal sends', () {
      final result = convertToResponseData(
        _response(401,
            body: {'status': 401, 'data': null, 'message': 'Session expired'}),
      );

      expect(result.status, 401);
      expect(result.message, 'Session expired');
      expect(result.data, '{}');
    });

    test('a list payload where an object was expected', () {
      final result = convertToResponseData(
        _response(200, body: {'status': 200, 'data': [1, 2], 'message': 'ok'}),
      );

      expect(result.data, '[1,2]');
    });

    test('the envelope status wins over the transport status', () {
      final result = convertToResponseData(
        _response(400,
            body: {'status': 204, 'data': {}, 'message': 'Invalid or expired OTP'}),
      );

      expect(result.status, 204);
    });
  });

  group('appErrorFrom', () {
    test('prefers the gateway\'s own explanation', () {
      final error = _thrown(_response(400,
          body: {'status': 204, 'data': {}, 'message': 'Invalid or expired OTP'}));

      expect(appErrorFrom(error),
          const AppErrors.defaultError(error: 'Invalid or expired OTP'));
    });

    test('rate limiting keeps the countdown rather than the vague message', () {
      // The gateway sends both. Retry-After is the useful half.
      final error = _thrown(_response(
        429,
        body: {
          'status': 429,
          'data': null,
          'message': 'Too many requests. Please try again later.'
        },
        headers: {
          'retry-after': ['161']
        },
      ));

      expect(appErrorFrom(error),
          const AppErrors.tooManyRequests(retryAfter: Duration(seconds: 161)));
    });

    test('rate limiting without a Retry-After still reports as rate limiting', () {
      final error = _thrown(_response(429, body: {'status': 429}));

      expect(appErrorFrom(error), const AppErrors.tooManyRequests());
    });

    test('a Retry-After date, which is not parsed, yields no countdown', () {
      final error = _thrown(_response(429, body: {'status': 429}, headers: {
        'retry-after': ['Wed, 21 Oct 2026 07:28:00 GMT']
      }));

      expect(appErrorFrom(error), const AppErrors.tooManyRequests());
    });

    test('statuses with no message map to what they mean', () {
      expect(appErrorFrom(_thrown(_response(403))),
          const AppErrors.permissionDenied());
      expect(appErrorFrom(_thrown(_response(413))),
          const AppErrors.payloadTooLarge());
      expect(appErrorFrom(_thrown(_response(500))),
          const AppErrors.serverError());
      expect(appErrorFrom(_thrown(_response(503))),
          const AppErrors.serviceUnavailable());
    });

    test('a lost connection is not reported as a refusal', () {
      final error = DioException(
        requestOptions: RequestOptions(path: '/user/v1/login'),
        type: DioExceptionType.connectionError,
      );

      expect(appErrorFrom(error), const AppErrors.noInternetConnection());
    });

    test('anything the server never described stays unexpected', () {
      expect(appErrorFrom(Exception('parse failure')),
          const AppErrors.unexpectedError());
    });
  });
}
