import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/data/core/network_info.dart';
import 'package:ec_card_app/src/data/loading_status/model/org_brand_info/org_brand_info.dart';
import 'package:ec_card_app/src/data/loading_status/model/user_dashboard/user_dashboard.dart';
import 'package:ec_card_app/src/data/loading_status/model/user_profile/user_profile.dart';
import 'package:ec_card_app/src/data/quiz/model/video_item.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:ec_card_app/src/domain/loading_status/loading_status_repo.dart';
import 'package:ec_card_app/src/domain/scanner/scanner_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

part 'loading_status_state.dart';
part 'loading_status_cubit.freezed.dart';

@injectable
class LoadingStatusCubit extends Cubit<LoadingStatusState> {
  LoadingStatusCubit(
    this.loadingStatusRepo,
    this.scannerRepo,
    this._networkInfo,
  ) : super(LoadingStatusState.initial());

  final LoadingStatusRepository loadingStatusRepo;
  final ScannerRepository scannerRepo;
  final NetworkInfo _networkInfo;
  StreamSubscription? _networkStream;

  /// [Zero-Knowledge Explanation]
  /// Yeh function background mein hamesha check karta hai ki internet chal raha hai ya nahi.
  /// Jaise hi internet connect ya disconnect hota hai, yeh app ko bata deta hai taaki baaki API calls wait kar sakein.
  /// 
  /// [Change Effect]
  /// Agar tum _networkStream wali line hata do, toh app sirf ek baar internet check karegi (start hote time). 
  /// Agar beech mein wifi off hua, toh app ko pata nahi chalega aur error aa jayega.
  void updateNetworkStatus() async {
    if (await _networkInfo.isConnected) {
      emit(state.copyWith(isConnectedToInternet: true));
      appLog("LOADING STATUS CUBIT: Network Connected");
    } else {
      emit(state.copyWith(isConnectedToInternet: false));
      appLog("LOADING STATUS CUBIT: Network Disconnected");
    }

    _networkStream =
        _networkInfo.listenForConnectionStatus.listen((networkStatus) {
      appLog(
          "---------- LOADING STATUS CUBIT: NetworkStatus  Value: $networkStatus");
      emit(state.copyWith(isConnectedToInternet: networkStatus));
    });
  }

  @override
  Future<void> close() {
    _networkStream?.cancel();
    return super.close();
  }

  /// [Zero-Knowledge Explanation]
  /// Yeh Cubit ka sabse main gatekeeper function hai. `LoadingStatusPage` yahi function call karti hai.
  /// Yeh backend se poochta hai: "Batao is user ko abhi kahan bhejna hai?" (Profile pe, Quiz pe, ya Video pe).
  ///
  /// [Change Effect]
  /// Dekho, yahan pehle `quizPassedFailureOrSuccess: none()` set kiya hai. Yeh zaroori hai taaki purana state reset ho jaye.
  /// Agar tum yahan `none()` bhejna bhool gaye, toh app loop mein phans sakti hai kyunki use lagega usne pehle hi check kar liya hai.
  void started({bool skipProfileCheck = false}) async {
    // Clear the previous result along with setting isLoading: this cubit is
    // a single app-wide instance, so every LoadingStatusPage mount reuses
    // it. Without this, the emit below still carries the last check's
    // quizPassedFailureOrSuccess, and BlocConsumer's listener (which reacts
    // to any state change, not just that field) replays the stale result
    // immediately - e.g. re-navigating to "showProfile" right after
    // submitting the profile questions, before the fresh check even
    // resolves.
    emit(state.copyWith(isLoading: true, quizPassedFailureOrSuccess: none()));

    final result = await loadingStatusRepo.checkQuizPassedStatus(
        isConnectedToInternet: state.isConnectedToInternet,
        skipProfileCheck: skipProfileCheck);

    result.fold((l) {
      appLog("QUIZ PASS L: $l");
      emit(state.copyWith(
        quizPassedFailureOrSuccess: some(left(l)),
        isLoading: false,
      ));
    }, (r) {
      appLog("QUIZ PASS R: $r");
      emit(state.copyWith(
        quizPassedFailureOrSuccess: some(right(r)),
        isLoading: false,
      ));
    });
  }

  /// [Zero-Knowledge Explanation]
  /// Yeh function sirf user ki profile (Photo, name) server se lata hai.
  void fetchUserProfileData() async {
    emit(state.copyWith(profileLoading: true));

    final profile = await loadingStatusRepo.getUserProfileData(
        isConnectedToInternet: state.isConnectedToInternet);
    profile.fold((l) {
      emit(state.copyWith(
        // dashboardLoading: false,
        profileCallFailureOrSuccess: some(left(l)),
      ));
    }, (r) {
      appLog("------ ${r.questions}");
      emit(state.copyWith(
        profileLoading: false,
        userProfileData: r,
        profileCallFailureOrSuccess: some(right(r)),
      ));
    });
  }

  /// [Zero-Knowledge Explanation]
  /// Yeh function main Dashboard ka poora data lata hai. (jaise Notification kitne hain, support status kya hai).
  ///
  /// [Change Effect]
  /// Agar error (`l`) aane par tum `dashboardLoading: false` nahi karoge, toh user ke home page par ek ghoomta hua chakkar hamesha ke liye atak jayega aur uski app freeze ho jayegi.
  void fetchUserDashboardData() async {
    emit(state.copyWith(dashboardLoading: true));

    final dashboard = await loadingStatusRepo.getUserDashBoardData(
        isConnectedToInternet: state.isConnectedToInternet);
    dashboard.fold((l) {
      // Clear the loading flag on failure too: leaving it set left the home
      // page showing a progress indicator with no way out.
      emit(state.copyWith(
        dashboardLoading: false,
        dashboardCallFailureOrSuccess: some(left(l)),
      ));
    }, (r) {
      appLog("------ ${r.support}");
      emit(state.copyWith(
        dashboardLoading: false,
        userDashboardData: r,
        dashboardCallFailureOrSuccess: some(right(r)),
      ));
    });
  }

  /// [Zero-Knowledge Explanation]
  /// User Account delete karne ka initial process (App se user data clear karne ka request).
  void startDeletionProcess() async {
    emit(state.copyWith(selfDeletionProcessStarted: false));

    Future.delayed(const Duration(seconds: 3), () async {
      final result = await loadingStatusRepo.selfDeletionProcess();
      result.fold((l) => null, (r) {
        emit(state.copyWith(
          selfDeletionProcessStarted: true,
        ));
      });
    });
  }

  void otpChanged(String otp) {
    emit(state.copyWith(
      otp: otp,
    ));
  }

  /// [Zero-Knowledge Explanation]
  /// Account delete karne ke liye OTP confirmation. Delete hone se pehle double check.
  void confirmDeletionProcess(String otp) async {
    emit(state.copyWith(otpLoading: true));

    final result = await loadingStatusRepo.confirmSelfDeletion(state.otp);
    result.fold((l) {
      emit(state.copyWith(
        otpLoading: false,
        deleteFailureOrSuccessOption: some(left(l)),
      ));
    }, (r) {
      emit(state.copyWith(
        otpLoading: false,
        deleteFailureOrSuccessOption: some(right(r)),
      ));
    });
  }

  /// [Zero-Knowledge Explanation]
  /// Yeh Dashboard ke notification bell icon ka number update karta hai. Jab user ek notification read kar leta hai, toh yeh -1 kar deta hai.
  void updateNotificationCount() {
    int updatedNotificationCount = state.userDashboardData!.unReadNotifications;
    if (state.userDashboardData!.unReadNotifications > 0) {
      updatedNotificationCount = updatedNotificationCount - 1;
    }

    emit(state.copyWith(
      userDashboardData: state.userDashboardData?.copyWith(
        unReadNotifications: updatedNotificationCount,
      ),
    ));
  }
}