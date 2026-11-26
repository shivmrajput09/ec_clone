import 'package:ec_card_app/src/presentation/core/res/app_languages.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  static const String _key = 'userLanguage';

  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  Future<void> loadSavedLocale() async {
    // Ignore any saved preference while language selection is unshipped —
    // existing installs may already have a non-English code persisted.
    if (!kLanguageSelectionEnabled) {
      _locale = const Locale('en');
      return;
    }
    final prefs = await SharedPreferences.getInstance();
    final code = prefs.getString(_key) ?? 'en';
    _locale = Locale(code);
  }

  Future<void> setLocale(String code) async {
    if (!kLanguageSelectionEnabled) return;
    if (_locale.languageCode == code) return;
    _locale = Locale(code);
    // Rebuild the UI immediately; persist the choice in the background so
    // the switch doesn't wait on SharedPreferences I/O to feel instant.
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, code);
  }
}
