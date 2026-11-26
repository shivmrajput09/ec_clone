import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;

  Stream<bool> get listenForConnectionStatus;
}

@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionChecker _internetConnectionChecker;
  final Connectivity _connectivity;

  NetworkInfoImpl(this._internetConnectionChecker, this._connectivity);

  @override
  Future<bool> get isConnected async =>
      _internetConnectionChecker.hasConnection;

  StreamController<bool>? _statusController;
  final List<StreamSubscription<dynamic>> _sources = [];

  /// Built once and shared. Previously this getter, and the two it combined,
  /// each created a fresh controller and subscribed again on every access —
  /// so a second caller would have doubled every reading and leaked the
  /// subscriptions behind it.
  @override
  Stream<bool> get listenForConnectionStatus {
    final existing = _statusController;
    if (existing != null) return existing.stream;

    final controller = StreamController<bool>.broadcast();
    _statusController = controller;

    // Connectivity tells us the radio changed; it does not tell us whether
    // anything is reachable, so confirm before reporting a connection.
    _sources.add(_connectivity.onConnectivityChanged.listen((status) async {
      if (status == ConnectivityResult.none) {
        controller.add(false);
      } else {
        controller.add(await _internetConnectionChecker.hasConnection);
      }
    }));

    _sources.add(_internetConnectionChecker.onStatusChange.listen((status) {
      controller.add(status == InternetConnectionStatus.connected);
    }));

    return controller.stream;
  }

  /// Both sources report the same outage, so callers see each drop twice.
  /// Deduplicating here would hide genuine transitions, so the decision about
  /// what to do with a repeat belongs to the caller.
  Future<void> dispose() async {
    for (final subscription in _sources) {
      await subscription.cancel();
    }
    _sources.clear();
    await _statusController?.close();
    _statusController = null;
  }
}
