import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

class FirebaseMessagingService {
  static Future<void> initialize() async {
    final messaging = FirebaseMessaging.instance;

    // 1. Request Permission (Android 13+ & iOS)
    try {
      final settings = await messaging.requestPermission(
        alert: true,
        badge: true,
        sound: true,
      );
      debugPrint('FCM Permission Status: ${settings.authorizationStatus.name}');
    } catch (e) {
      debugPrint('FCM permission error: $e');
    }

    // 2. Foreground Messages Listener (Jab app open ho)
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint('[Foreground Push] ${message.notification?.title}: ${message.notification?.body}');
    });

    // 3. User taps on Notification
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      debugPrint('[App opened from notification] ${message.data}');
    });

    // 4. Token generation
    try {
      final token = await messaging.getToken();
      debugPrint('FCM Device Token: $token');
    } catch (e) {
      debugPrint('Could not get FCM token: $e');
    }
  }
}