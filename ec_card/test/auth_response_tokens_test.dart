import 'package:dio/dio.dart';
import 'package:ec_card_app/src/data/core/api/auth_response_tokens.dart';
import 'package:flutter_test/flutter_test.dart';

Headers _headers(Map<String, List<String>> map) => Headers.fromMap(map);

void main() {
  group('authResponseTokens', () {
    test('reads both tokens from Set-Cookie when no headers are sent', () {
      final tokens = authResponseTokens(_headers({
        'set-cookie': [
          'ecauthtoken=access-1; Path=/; HttpOnly; Secure; SameSite=Strict',
          'ec-csrf=csrf-1; Path=/; Secure; SameSite=Strict',
          'ecsecuretoken=refresh-1; Path=/; HttpOnly; Secure; SameSite=Strict',
        ],
      }));

      expect(tokens.accessToken, 'access-1');
      expect(tokens.refreshToken, 'refresh-1');
      expect(tokens.isComplete, isTrue);
    });

    test('keeps the last value when a cookie is set twice', () {
      // Self-registration: rotated temporary token first, new user token last.
      final tokens = authResponseTokens(_headers({
        'set-cookie': [
          'ecauthtoken=temporary; Path=/; HttpOnly',
          'ec-csrf=csrf-1; Path=/',
          'ecauthtoken=user; Path=/; HttpOnly',
          'ecsecuretoken=user-refresh; Path=/; HttpOnly',
        ],
      }));

      expect(tokens.accessToken, 'user');
      expect(tokens.refreshToken, 'user-refresh');
    });

    test('matches cookie names case-insensitively', () {
      final tokens = authResponseTokens(_headers({
        'set-cookie': ['ecAuthToken=access-1; Path=/', 'EcSecureToken=refresh-1'],
      }));

      expect(tokens.accessToken, 'access-1');
      expect(tokens.refreshToken, 'refresh-1');
    });

    test('treats a cleared cookie as no token', () {
      final tokens = authResponseTokens(_headers({
        'set-cookie': [
          'ecauthtoken=access-1; Path=/',
          'ecauthtoken=; Path=/; Expires=Thu, 01 Jan 1970 00:00:00 GMT',
        ],
      }));

      expect(tokens.accessToken, isNull);
      expect(tokens.isComplete, isFalse);
    });

    test('prefers a dedicated response header over a cookie', () {
      final tokens = authResponseTokens(_headers({
        'ecauthtoken': ['from-header'],
        'set-cookie': ['ecauthtoken=from-cookie', 'ecsecuretoken=refresh-1'],
      }));

      expect(tokens.accessToken, 'from-header');
      expect(tokens.refreshToken, 'refresh-1');
    });

    test('decodes percent-encoded cookie values', () {
      final tokens = authResponseTokens(_headers({
        'set-cookie': ['ecauthtoken=a%2Bb%3Dc'],
      }));

      expect(tokens.accessToken, 'a+b=c');
    });

    test('returns nothing when neither form is present', () {
      final tokens = authResponseTokens(_headers({
        'content-type': ['application/json'],
      }));

      expect(tokens.accessToken, isNull);
      expect(tokens.refreshToken, isNull);
      expect(tokens.isComplete, isFalse);
    });
  });
}
