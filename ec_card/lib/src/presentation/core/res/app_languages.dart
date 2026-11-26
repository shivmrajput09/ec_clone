/// Whether the user-facing language selector ships.
///
/// While false the app is English-only: the selectors are hidden and the locale
/// is pinned to English regardless of any previously saved preference. The
/// localization infrastructure itself stays wired up, so flipping this to true
/// restores language selection without further changes.
const bool kLanguageSelectionEnabled = true;

/// Supported languages for the app's language selector.
/// Names are autoglossonyms (each language in its own script).
const List<Map<String, String>> kSupportedLanguages = [
  {'code': 'cy', 'name': 'Cymraeg'},
  {'code': 'gd', 'name': 'Gàidhlig'},
  {'code': 'en', 'name': 'English'},
  {'code': 'ar', 'name': 'العربية'},
  {'code': 'bn', 'name': 'বাংলা'},
  {'code': 'es', 'name': 'Español'},
  {'code': 'fr', 'name': 'Français'},
  {'code': 'gu', 'name': 'ગુજરાતી'},
  {'code': 'pa', 'name': 'ਪੰਜਾਬੀ'},
  {'code': 'pl', 'name': 'Polski'},
  {'code': 'pt', 'name': 'Português'},
  {'code': 'ro', 'name': 'Romana'},
  {'code': 'so', 'name': 'Soomaali'},
  {'code': 'tr', 'name': 'Türkçe'},
  {'code': 'ur', 'name': 'اردو'},
];
