import 'dart:async';

import 'package:ec_card_app/src/data/core/api/api_endpoints.dart';
import 'package:ec_card_app/src/data/core/api/api_service.dart';
import 'package:ec_card_app/src/domain/local_storage/secure_storage_manager.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

class FirebaseMessagingService {
  static Future<void> initialize() async {
    final messaging = FirebaseMessaging.instance;

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      _logMessage('Foreground message', message);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _logMessage('Message opened app', message);
    });

    try {
      final settings = await messaging
          .requestPermission(
            alert: true,
            announcement: false,
            badge: true,
            carPlay: false,
            criticalAlert: false,
            provisional: false,
            sound: true,
          )
          .timeout(const Duration(seconds: 12));

      appLog(
        'FCM permission status: ${settings.authorizationStatus.name}',
      );
    } on TimeoutException {
      appLog('FCM permission request timed out.');
    } catch (e) {
      appLog('FCM permission request failed: $e');
    }

    // FCM rotates tokens; the server keeps a list per user, so each new one
    // has to be sent as well or notifications stop reaching the device.
    messaging.onTokenRefresh.listen((token) {
      appLog('FCM token refreshed');
      unawaited(_saveTokenToServer(token));
    });

    unawaited(_fetchTokenWithTimeout(messaging));

    try {
      final initialMessage =
          await messaging.getInitialMessage().timeout(const Duration(seconds: 5));
      if (initialMessage != null) {
        _logMessage('Initial message', initialMessage);
      }
    } on TimeoutException {
      appLog('FCM initial message check timed out.');
    } catch (e) {
      appLog('FCM initial message check failed: $e');
    }
  }

  static Future<void> _fetchTokenWithTimeout(FirebaseMessaging messaging) async {
    try {
      final token = await messaging.getToken().timeout(const Duration(seconds: 12));
      // The token identifies this device to the push service; log only
      // that one was obtained.
      appLog('FCM token obtained (${token?.length ?? 0} chars)');
      if (token != null) {
        await _saveTokenToServer(token);
      }
    } on TimeoutException {
      appLog('FCM token fetch timed out.');
    } catch (e) {
      appLog('FCM token fetch failed: $e');
    }
  }

  /// Sends the token to the backend, which stores it on the user so pushes
  /// (order dispatched/cancelled and the like) can be addressed to this device.
  ///
  /// The endpoint requires an authenticated user, so this is a no-op until the
  /// user has logged in; [syncTokenToServer] re-runs it at that point.
  static Future<void> _saveTokenToServer(String token) async {
    try {
      final accessToken = await getIt<SecureStorgeManager>().getAccessToken();
      if (accessToken == null || accessToken.isEmpty) {
        appLog('FCM token not sent: no authenticated user yet.');
        return;
      }
      await getIt<ApiService>().dio.post(
            APIEndpoints.SAVE_FCM_TOKEN_URL,
            data: {'token': token},
          );
      appLog('FCM token saved to server.');
    } catch (e) {
      appLog('FCM token save failed: $e');
    }
  }

  /// Call once the user is authenticated: the token is usually fetched before
  /// login, when the save endpoint would reject it.
  static Future<void> syncTokenToServer() async {
    try {
      final token = await FirebaseMessaging.instance
          .getToken()
          .timeout(const Duration(seconds: 12));
      if (token != null) {
        await _saveTokenToServer(token);
      }
    } catch (e) {
      appLog('FCM token sync failed: $e');
    }
  }

  static void _logMessage(String source, RemoteMessage message) {
    appLog(
      '[$source] id=${message.messageId} title=${message.notification?.title} body=${message.notification?.body} data=${message.data}',
    );
  }
}
