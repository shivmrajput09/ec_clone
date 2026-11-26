import 'dart:async';

import 'package:ec_card_app/src/data/core/app_update/app_update_service.dart';
import 'package:flutter/foundation.dart';

/// The launch-time update check, shared by start-up and the update prompt.
///
/// Start-up waits on the splash screen until [waitForStartUp] completes, so the
/// prompt only ever appears there: never over login or the dashboard, and never
/// when the app returns from the background.
class AppUpdateController extends ChangeNotifier {
  AppUpdateController({
    AppUpdateService? service,
    this.launchTimeout = const Duration(seconds: 3),
  }) : _service = service ?? AppUpdateService();

  /// Used by the app. Tests create their own.
  static final AppUpdateController instance = AppUpdateController();

  final AppUpdateService _service;

  /// The longest start-up waits for the gateway. A slow or unreachable gateway
  /// must not keep everyone on the splash screen, so past this the check is
  /// abandoned for this launch and a late answer is ignored.
  final Duration launchTimeout;

  AppUpdate? _update;
  bool _postponed = false;
  Future<void>? _launchCheck;
  final Completer<void> _startUp = Completer<void>();

  /// The update to prompt for now, or null when there is nothing to show.
  AppUpdate? get pending {
    final update = _update;
    if (update == null || (_postponed && !update.isRequired)) return null;
    return update;
  }

  /// Whether start-up has been allowed past the splash screen.
  bool get isStartUpAllowed => _startUp.isCompleted;

  /// Completes when start-up may leave the splash screen: no update is due,
  /// the check failed or ran past [launchTimeout], or the user put an optional
  /// update off. Never completes while a required update is pending.
  ///
  /// The first call starts the check; later calls share it.
  Future<void> waitForStartUp() {
    _launchCheck ??= _checkAtLaunch();
    return _startUp.future;
  }

  Future<void> _checkAtLaunch() async {
    final timer = Timer(launchTimeout, _allowStartUp);
    try {
      // Never throws: any failure is reported as no update.
      final update = await _service.check();

      // Too late: start-up has moved on and the prompt belongs on the splash.
      if (_startUp.isCompleted) return;

      _update = update;
      notifyListeners();
      if (pending == null) _allowStartUp();
    } finally {
      timer.cancel();
    }
  }

  /// Puts off an optional update for the rest of this session and lets
  /// start-up continue. Ignored for a required update.
  void postpone() {
    final update = _update;
    if (update == null || update.isRequired) return;

    _postponed = true;
    notifyListeners();
    _allowStartUp();
  }

  void _allowStartUp() {
    if (!_startUp.isCompleted) _startUp.complete();
  }
}
