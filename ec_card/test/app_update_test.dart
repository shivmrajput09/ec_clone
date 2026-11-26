import 'dart:async';

import 'package:ec_card_app/src/data/core/app_update/app_update_controller.dart';
import 'package:ec_card_app/src/data/core/app_update/app_update_service.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/presentation/core/widgets/app_update_gate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakeAppUpdateService extends AppUpdateService {
  _FakeAppUpdateService(AppUpdate? update) : _answer = Future.value(update);
  _FakeAppUpdateService.delayed(this._answer);

  final Future<AppUpdate?> _answer;

  @override
  Future<AppUpdate?> check() => _answer;
}

Map<String, dynamic> _body({
  String androidVersion = '1.0.0',
  bool androidForce = false,
  String androidStoreUrl = '',
  String iosVersion = '1.0.0',
  bool iosForce = false,
  String iosStoreUrl = '',
}) =>
    {
      'status': 200,
      'data': {
        'android': {
          'version': androidVersion,
          'forceUpdate': androidForce,
          'storeUrl': androidStoreUrl,
        },
        'ios': {
          'version': iosVersion,
          'forceUpdate': iosForce,
          'storeUrl': iosStoreUrl,
        },
        'message': 'App versions',
      },
      'message': 'App versions',
    };

void main() {
  group('isOlderVersion', () {
    test('compares each part as a number', () {
      expect(isOlderVersion('4.0.22', '4.0.23'), isTrue);
      expect(isOlderVersion('4.0.3', '4.0.22'), isTrue);
      expect(isOlderVersion('4.0.22', '4.1'), isTrue);
      expect(isOlderVersion('4.0.22', '4.0.3'), isFalse);
      expect(isOlderVersion('12.0.6', '4.0.22'), isFalse);
    });

    test('treats the same release as current', () {
      expect(isOlderVersion('4.0.22', '4.0.22'), isFalse);
      expect(isOlderVersion('4.0', '4.0.0'), isFalse);
      expect(isOlderVersion('4.0.22+93', '4.0.22'), isFalse);
    });

    test('never prompts on a version it cannot read', () {
      expect(isOlderVersion('4.0.22', ''), isFalse);
      expect(isOlderVersion('4.0.22', 'latest'), isFalse);
      expect(isOlderVersion('', '5.0.0'), isFalse);
    });
  });

  group('appUpdateFrom', () {
    test('offers nothing for the default config', () {
      expect(
        appUpdateFrom(_body(),
            platform: 'android',
            installedVersion: '4.0.22',
            packageName: 'com.nhs.android'),
        isNull,
      );
    });

    test('reads the entry for its own platform', () {
      final body = _body(androidVersion: '4.0.23', iosVersion: '12.0.6');

      expect(
        appUpdateFrom(body,
            platform: 'ios', installedVersion: '12.0.6', packageName: 'x'),
        isNull,
      );
      expect(
        appUpdateFrom(body,
                platform: 'android',
                installedVersion: '4.0.22',
                packageName: 'com.nhs.android')
            ?.latestVersion,
        '4.0.23',
      );
    });

    test('carries forceUpdate through', () {
      final update = appUpdateFrom(
        _body(androidVersion: '5.0.0', androidForce: true),
        platform: 'android',
        installedVersion: '4.0.22',
        packageName: 'com.nhs.android',
      );

      expect(update?.isRequired, isTrue);
    });

    test('falls back to the Play Store listing on Android', () {
      final update = appUpdateFrom(
        _body(androidVersion: '5.0.0', androidStoreUrl: 'http://insecure'),
        platform: 'android',
        installedVersion: '4.0.22',
        packageName: 'com.nhs.android',
      );

      expect(update?.storeUrl.toString(),
          'https://play.google.com/store/apps/details?id=com.nhs.android');
    });

    test('offers nothing on iOS without a store link', () {
      final body = _body(iosVersion: '13.0.0');

      expect(
        appUpdateFrom(body,
            platform: 'ios', installedVersion: '12.0.6', packageName: 'x'),
        isNull,
      );

      final withLink = _body(
          iosVersion: '13.0.0',
          iosStoreUrl: 'https://apps.apple.com/app/id123456789');
      expect(
        appUpdateFrom(withLink,
                platform: 'ios', installedVersion: '12.0.6', packageName: 'x')
            ?.storeUrl
            .host,
        'apps.apple.com',
      );
    });

    test('ignores replies that are not a successful envelope', () {
      expect(
        appUpdateFrom('<html></html>',
            platform: 'android', installedVersion: '1.0.0', packageName: 'x'),
        isNull,
      );
      expect(
        appUpdateFrom({..._body(androidVersion: '9.0.0'), 'status': 204},
            platform: 'android', installedVersion: '1.0.0', packageName: 'x'),
        isNull,
      );
    });
  });

  group('AppUpdateController', () {
    final storeUrl = Uri.parse('https://play.google.com/store/apps/details');
    final optional =
        AppUpdate(latestVersion: '5.0.0', isRequired: false, storeUrl: storeUrl);
    final required =
        AppUpdate(latestVersion: '5.0.0', isRequired: true, storeUrl: storeUrl);

    Future<bool> startedWithin(Future<void> startUp,
            [Duration wait = const Duration(milliseconds: 100)]) =>
        startUp.then((_) => true).timeout(wait, onTimeout: () => false);

    test('start-up continues at once when the app is current', () async {
      final controller =
          AppUpdateController(service: _FakeAppUpdateService(null));

      expect(await startedWithin(controller.waitForStartUp()), isTrue);
      expect(controller.pending, isNull);
    });

    test('an optional update holds start-up until it is put off', () async {
      final controller =
          AppUpdateController(service: _FakeAppUpdateService(optional));
      final startUp = controller.waitForStartUp();

      expect(await startedWithin(startUp), isFalse);
      expect(controller.pending, optional);

      controller.postpone();

      expect(await startedWithin(startUp), isTrue);
      expect(controller.pending, isNull);
    });

    test('a required update never lets start-up continue', () async {
      final controller =
          AppUpdateController(service: _FakeAppUpdateService(required));
      final startUp = controller.waitForStartUp();

      controller.postpone();

      expect(await startedWithin(startUp), isFalse);
      expect(controller.pending, required);
    });

    test('a slow gateway lets start-up continue and its answer is ignored',
        () async {
      final answer = Completer<AppUpdate?>();
      final controller = AppUpdateController(
        service: _FakeAppUpdateService.delayed(answer.future),
        launchTimeout: const Duration(milliseconds: 20),
      );

      expect(await startedWithin(controller.waitForStartUp()), isTrue);

      answer.complete(required);
      await Future<void>.delayed(Duration.zero);

      expect(controller.pending, isNull);
    });
  });

  group('AppUpdateGate', () {
    Future<void> pumpGate(WidgetTester tester, AppUpdate? update) async {
      await tester.pumpWidget(MaterialApp(
        locale: const Locale('en'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        builder: (context, child) => AppUpdateGate(
          controller:
              AppUpdateController(service: _FakeAppUpdateService(update)),
          child: child!,
        ),
        home: const Scaffold(body: Text('home')),
      ));
      await tester.pumpAndSettle();
    }

    final storeUrl = Uri.parse('https://play.google.com/store/apps/details');

    testWidgets('shows nothing when the app is current', (tester) async {
      await pumpGate(tester, null);

      expect(find.text('home'), findsOneWidget);
      expect(find.byType(CupertinoAlertDialog), findsNothing);
    });

    testWidgets('an optional update can be put off', (tester) async {
      await pumpGate(
        tester,
        AppUpdate(latestVersion: '5.0.0', isRequired: false, storeUrl: storeUrl),
      );

      expect(find.text('Update available'), findsOneWidget);

      await tester.tap(find.text('Later'));
      await tester.pump();

      expect(find.byType(CupertinoAlertDialog), findsNothing);
    });

    testWidgets('a required update cannot be dismissed', (tester) async {
      await pumpGate(
        tester,
        AppUpdate(latestVersion: '5.0.0', isRequired: true, storeUrl: storeUrl),
      );

      expect(find.text('Update required'), findsOneWidget);
      expect(find.text('Later'), findsNothing);
      expect(find.text('Update now'), findsOneWidget);
    });
  });
}
