import 'package:flutter/foundation.dart';

void appLog(Object? message) {
  if (kReleaseMode) return;
  debugPrint(message?.toString());
}