import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ec_card_app/src/data/core/app_update/app_update_controller.dart';
import 'package:ec_card_app/src/data/core/network_info.dart';
import 'package:ec_card_app/src/domain/local_storage/secure_storage_manager.dart';
import 'package:ec_card_app/src/domain/login/login_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

part '../login/core/application_event.dart';
part '../login/core/application_state.dart';
part '../login/core/application_bloc.freezed.dart';

@singleton
class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  final NetworkInfo _networkInfo;
  final LoginRepository loginRepo;
  final SecureStorgeManager _secureStorageManager;
  StreamSubscription? _networkSubscription;

  /// Whether the app has already told the user it is offline. Guards against
  /// repeating the warning for what is one outage reported by two sources.
  bool _isOffline = false;

  ApplicationBloc(
    this._networkInfo,
    this._secureStorageManager,
    this.loginRepo,
  ) : super(const ApplicationState.initial()) {
    on<ApplicationLifecycleChanged>((event, emit) {
      if (event.lifecycleState == AppLifecycleState.resumed) {
        emit(const ApplicationState.resumed());
      } else if (event.lifecycleState == AppLifecycleState.paused) {
        emit(const ApplicationState.paused());
      } else if (event.lifecycleState == AppLifecycleState.inactive) {
        emit(const ApplicationState.inactive());
      }
    });
    on<Logout>((event, emit) async {
      // emit(const ApplicationState.initial());
      await loginRepo.logout();
      emit(const ApplicationState.unauthenticated());
    });
    on<CheckStatus>((event, emit) async {
      if (!await _networkInfo.isConnected) {
        _isOffline = true;
        emit(const ApplicationState.noInternetConnection());
      }

      _networkSubscription =
          _networkInfo.listenForConnectionStatus.listen((networkStatus) {
        add(ApplicationEvent.internetStatusChanged(networkStatus));

        // Claim Transaction Syncing
        // if (networkStatus) {
        //   Future.delayed(const Duration(seconds: 3), () async {
        //     await OfflineSyncService().init();
        //   });
        // }
      });

      // Stay on the splash screen while the user is asked about a newer
      // release. A required update never lets start-up continue.
      await AppUpdateController.instance.waitForStartUp();

      final accessToken = await _secureStorageManager.getAccessToken();
      final refreshToken = await _secureStorageManager.getRefreshToken();

      if (accessToken != null &&
          refreshToken != null &&
          accessToken.isNotEmpty &&
          refreshToken.isNotEmpty) {
        //map user for access token
        appLog(
            "------ APPLICATION BLOC: Check Status: Authenticated ------");
        emit(const ApplicationState.authenticated());
      } else {
        appLog(
            "------ APPLICATION BLOC: Check Status: Unauthenticated ------");

        emit(const ApplicationState.unauthenticated());
      }
      //set authenticated based on access token availability
    });
    on<InternetStatusChanged>((event, emit) async {
      if (event.isConnected) {
        if (!_isOffline) return;
        _isOffline = false;
        emit(const ApplicationState.internetRestored());
        return;
      }

      // Two sources feed this event — connectivity_plus and the connection
      // checker's poll — so a single drop arrives more than once. Coming out
      // of doze the first poll also fails routinely, before the network stack
      // is ready, which is why the warning appeared on almost every resume.
      // Confirm with a fresh check rather than trusting one failed poll.
      if (await _networkInfo.isConnected) return;

      // Announce going offline once, not per event. Emitting per event stacked
      // several warnings on top of each other whenever a lifecycle change had
      // altered the state in between.
      if (_isOffline) return;
      _isOffline = true;
      emit(const ApplicationState.noInternetConnection());
    });
  }

  @override
  void onChange(Change<ApplicationState> change) {
    super.onChange(change);
    appLog("EC-Card: onChange $change");

    change.nextState.whenOrNull(authenticated: () {
      // add(ApplicationEvent.setRouteForIntent);
    });
  }

  @override
  void onEvent(ApplicationEvent event) {
    super.onEvent(event);
    appLog("EC-Card: onEvent $event");

    // event.map(checkStatus: (e) {}, internetStatusChanged: (e) {});
  }

  @override
  Future<void> close() {
    _networkSubscription?.cancel();
    return super.close();
  }
}
