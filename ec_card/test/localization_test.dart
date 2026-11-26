import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';

/// Fallback delegate for locales not supported by GlobalMaterialLocalizations
/// (e.g. Scottish Gaelic 'gd', Somali 'so'). Falls back to English defaults.
class _FallbackMaterialLocalizationsDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _FallbackMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      const DefaultMaterialLocalizations();

  @override
  bool shouldReload(_FallbackMaterialLocalizationsDelegate old) => false;
}

/// Fallback delegate for locales not supported by GlobalCupertinoLocalizations.
class _FallbackCupertinoLocalizationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const _FallbackCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<CupertinoLocalizations> load(Locale locale) async =>
      const DefaultCupertinoLocalizations();

  @override
  bool shouldReload(_FallbackCupertinoLocalizationsDelegate old) => false;
}

/// Helper that wraps a widget in a MaterialApp with localization support
/// for the given locale.
Widget buildLocalizedWidget(Locale locale, Widget child) {
  return MaterialApp(
    locale: locale,
    localizationsDelegates: const [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      _FallbackMaterialLocalizationsDelegate(),
      _FallbackCupertinoLocalizationsDelegate(),
    ],
    supportedLocales: const [
      Locale('en'),
      Locale('ar'),
      Locale('bn'),
      Locale('es'),
      Locale('fr'),
      Locale('gd'),
      Locale('gu'),
      Locale('pa'),
      Locale('pl'),
      Locale('pt'),
      Locale('ro'),
      Locale('so'),
      Locale('tr'),
      Locale('ur'),
    ],
    home: child,
  );
}

/// Widget that displays localized strings for testing
class LocalizationTestWidget extends StatelessWidget {
  const LocalizationTestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(l10n.appTitle, key: const Key('appTitle')),
            Text(l10n.login, key: const Key('login')),
            Text(l10n.register, key: const Key('register')),
            Text(l10n.account, key: const Key('account')),
            Text(l10n.language, key: const Key('language')),
            Text(l10n.settings, key: const Key('settings')),
            Text(l10n.submit, key: const Key('submit')),
            Text(l10n.cancel, key: const Key('cancel')),
            Text(l10n.delete, key: const Key('delete')),
            Text(l10n.close, key: const Key('close')),
            Text(l10n.search, key: const Key('search')),
            Text(l10n.ok, key: const Key('ok')),
            Text(l10n.gallery, key: const Key('gallery')),
            Text(l10n.field_is_mandatory, key: const Key('field_is_mandatory')),
            Text(l10n.current_location, key: const Key('current_location')),
            Text(l10n.submission_failed('test error'),
                key: const Key('submission_failed')),
            Text(l10n.terms_condition, key: const Key('terms_condition')),
            Text(l10n.resend_otp_countdown('00:59'),
                key: const Key('resend_otp_countdown')),
          ],
        ),
      ),
    );
  }
}

void main() {
  group('AppLocalizations delegate', () {
    testWidgets('resolves for all 14 supported locales', (tester) async {
      final locales = [
        'en', 'ar', 'bn', 'es', 'fr', 'gd', 'gu', 'pa', 'pl', 'pt', 'ro',
        'so', 'tr', 'ur',
      ];
      for (final code in locales) {
        final locale = Locale(code);
        final isSupported =
            AppLocalizations.delegate.isSupported(locale);
        expect(isSupported, isTrue,
            reason: 'Locale $code should be supported');
      }
    });

    testWidgets('does not support unsupported locale', (tester) async {
      final isSupported =
          AppLocalizations.delegate.isSupported(const Locale('zh'));
      expect(isSupported, isFalse);
    });
  });

  group('English localization', () {
    testWidgets('renders English strings correctly', (tester) async {
      await tester.pumpWidget(
        buildLocalizedWidget(
          const Locale('en'),
          const LocalizationTestWidget(),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('ec_card_app'), findsOneWidget);
      expect(find.text('Log In'), findsOneWidget);
      expect(find.text('Register'), findsOneWidget);
      expect(find.text('Account'), findsOneWidget);
      expect(find.text('Language'), findsOneWidget);
      expect(find.text('Submit'), findsOneWidget);
      expect(find.text('Cancel'), findsOneWidget);
      expect(find.text('Delete'), findsOneWidget);
      expect(find.text('Close'), findsOneWidget);
      expect(find.text('Search'), findsOneWidget);
      expect(find.text('OK'), findsOneWidget);
      expect(find.text('Gallery'), findsOneWidget);
      expect(find.text('Field is mandatory'), findsOneWidget);
      expect(find.text('Current Location'), findsOneWidget);
      expect(find.text('Submission failed: test error'), findsOneWidget);
    });
  });

  group('Non-English localization', () {
    testWidgets('renders Spanish strings (not English)', (tester) async {
      await tester.pumpWidget(
        buildLocalizedWidget(
          const Locale('es'),
          const LocalizationTestWidget(),
        ),
      );
      await tester.pumpAndSettle();

      // Should NOT show English
      expect(find.text('Log In'), findsNothing);
      expect(find.text('Register'), findsNothing);

      // Should show Spanish via key lookup
      final l10nFinder = find.byKey(const Key('login'));
      expect(l10nFinder, findsOneWidget);
      final loginText =
          (tester.widget<Text>(l10nFinder)).data;
      expect(loginText, isNotNull);
      expect(loginText, isNot(equals('Log In')),
          reason: 'Spanish login should differ from English');
    });

    testWidgets('renders Arabic strings (not English)', (tester) async {
      await tester.pumpWidget(
        buildLocalizedWidget(
          const Locale('ar'),
          const LocalizationTestWidget(),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Log In'), findsNothing);

      final l10nFinder = find.byKey(const Key('login'));
      expect(l10nFinder, findsOneWidget);
      final loginText =
          (tester.widget<Text>(l10nFinder)).data;
      expect(loginText, isNotNull);
      expect(loginText, isNot(equals('Log In')),
          reason: 'Arabic login should differ from English');
    });

    testWidgets('renders French strings (not English)', (tester) async {
      await tester.pumpWidget(
        buildLocalizedWidget(
          const Locale('fr'),
          const LocalizationTestWidget(),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Log In'), findsNothing);

      final l10nFinder = find.byKey(const Key('login'));
      expect(l10nFinder, findsOneWidget);
      final loginText =
          (tester.widget<Text>(l10nFinder)).data;
      expect(loginText, isNotNull);
      expect(loginText, isNot(equals('Log In')),
          reason: 'French login should differ from English');
    });
  });

  group('Placeholder interpolation', () {
    testWidgets('submission_failed interpolates error in English',
        (tester) async {
      await tester.pumpWidget(
        buildLocalizedWidget(
          const Locale('en'),
          const LocalizationTestWidget(),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Submission failed: test error'), findsOneWidget);
    });

    testWidgets('submission_failed interpolates error in Spanish',
        (tester) async {
      await tester.pumpWidget(
        buildLocalizedWidget(
          const Locale('es'),
          const LocalizationTestWidget(),
        ),
      );
      await tester.pumpAndSettle();

      final finder = find.byKey(const Key('submission_failed'));
      expect(finder, findsOneWidget);
      final text = (tester.widget<Text>(finder)).data!;
      expect(text, contains('test error'),
          reason: 'Interpolated error string should appear in output');
      expect(text, isNot(equals('Submission failed: test error')),
          reason: 'Spanish should differ from English');
    });
  });

  group('Regression: Terms & Conditions pluralization', () {
    testWidgets('English terms_condition is plural', (tester) async {
      await tester.pumpWidget(
        buildLocalizedWidget(
          const Locale('en'),
          const LocalizationTestWidget(),
        ),
      );
      await tester.pumpAndSettle();

      final finder = find.byKey(const Key('terms_condition'));
      final text = (tester.widget<Text>(finder)).data!;
      expect(text, contains('Conditions'),
          reason: 'Should read "Terms & Conditions", not "Terms & Condition"');
    });
  });

  group('Regression: OTP resend countdown localization', () {
    testWidgets('countdown string is built from the templated key, not raw concatenation',
        (tester) async {
      await tester.pumpWidget(
        buildLocalizedWidget(
          const Locale('en'),
          const LocalizationTestWidget(),
        ),
      );
      await tester.pumpAndSettle();

      final finder = find.byKey(const Key('resend_otp_countdown'));
      final text = (tester.widget<Text>(finder)).data!;
      expect(text, contains('00:59'),
          reason: 'Countdown time should be interpolated into the message');
      expect(text, isNot(equals('00:59')),
          reason: 'The surrounding wording must come from the localized template');
    });
  });

  group('Locale switching', () {
    testWidgets('switching locale changes displayed text', (tester) async {
      // Start with English
      await tester.pumpWidget(
        buildLocalizedWidget(
          const Locale('en'),
          const LocalizationTestWidget(),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('Log In'), findsOneWidget);

      // Switch to French
      await tester.pumpWidget(
        buildLocalizedWidget(
          const Locale('fr'),
          const LocalizationTestWidget(),
        ),
      );
      await tester.pumpAndSettle();

      // English text should be gone
      expect(find.text('Log In'), findsNothing);

      // French text should be present
      final loginFinder = find.byKey(const Key('login'));
      final loginText = (tester.widget<Text>(loginFinder)).data;
      expect(loginText, isNot(equals('Log In')));
    });
  });

  group('All locales render without errors', () {
    final locales = [
      'en', 'ar', 'bn', 'es', 'fr', 'gd', 'gu', 'pa', 'pl', 'pt', 'ro',
      'so', 'tr', 'ur',
    ];

    for (final code in locales) {
      testWidgets('locale $code renders all keys without error',
          (tester) async {
        await tester.pumpWidget(
          buildLocalizedWidget(
            Locale(code),
            const LocalizationTestWidget(),
          ),
        );
        await tester.pumpAndSettle();

        // Verify all keyed widgets rendered (no null/error)
        for (final key in [
          'appTitle', 'login', 'register', 'account', 'language',
          'settings', 'submit', 'cancel', 'delete', 'close', 'search',
          'ok', 'gallery', 'field_is_mandatory', 'current_location',
          'submission_failed', 'terms_condition', 'resend_otp_countdown',
        ]) {
          final finder = find.byKey(Key(key));
          expect(finder, findsOneWidget,
              reason: 'Key "$key" should render for locale $code');
          final text = (tester.widget<Text>(finder)).data;
          expect(text, isNotNull,
              reason: 'Key "$key" should have non-null text for locale $code');
          expect(text!.isNotEmpty, isTrue,
              reason: 'Key "$key" should have non-empty text for locale $code');
        }
      });
    }
  });
}
