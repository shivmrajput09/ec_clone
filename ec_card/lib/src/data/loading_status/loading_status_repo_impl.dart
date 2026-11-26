import 'dart:convert';

import 'package:ec_card_app/src/data/core/model/response_data.dart';
import 'package:ec_card_app/src/data/loading_status/model/org_brand_info/org_brand_info.dart';
import 'package:ec_card_app/src/data/loading_status/model/user_dashboard/user_dashboard.dart';
import 'package:ec_card_app/src/data/loading_status/model/user_profile/user_profile.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/domain/loading_status/loading_status_api_service.dart';
import 'package:ec_card_app/src/domain/loading_status/loading_status_repo.dart';
import 'package:ec_card_app/src/domain/local_storage/secure_storage_manager.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

@LazySingleton(as: LoadingStatusRepository)
class LoadingStatusRepoImpl implements LoadingStatusRepository {
  LoadingStatusRepoImpl(this._secureStorgeManager);

  final loadingStatusAPIService = getIt<LoadingStatusAPIService>();
  final SecureStorgeManager _secureStorgeManager;
  @override
  Future<Either<AppErrors, String>> checkQuizPassedStatus(
      {required bool isConnectedToInternet,
      bool skipProfileCheck = false}) async {
    try {
      Map<String, dynamic> resultData = {};
      bool showProfileQuestions = false;

      if (isConnectedToInternet) {
        // Callers that just submitted the additional-registration answers
        // set skipProfileCheck: the profile GET can briefly still report
        // questions.show == true (backend read-after-write lag), which
        // would otherwise bounce the user straight back to the profile
        // questions screen instead of on to the quiz/video/dashboard.
        if (!skipProfileCheck) {
          final profileResponse =
              await loadingStatusAPIService.userProfileAPI();
          final profileResult = convertToResponseData(profileResponse);
          if (profileResult.status == 200) {
            final UserProfileData userProfileData = UserProfileData.fromJson(
                jsonDecode(profileResult.data));
            showProfileQuestions = userProfileData.questions.show ?? false;
          } else {
            return left(AppErrors.defaultError(error: profileResult.message));
          }
        }

        // Onboarding order is Additional Questions -> Videos -> Quiz, so
        // video/quiz status is fetched regardless of whether profile questions
        // are still pending (the priority is applied below).
        final response = await loadingStatusAPIService.quizPassedAPI();
        final result = convertToResponseData(response);

        if (result.status == 200) {
          resultData = jsonDecode(result.data);

          await _secureStorgeManager.setQuizPassStatusToLocal(
              statusData: result.data);
        } else {
          return left(AppErrors.defaultError(error: result.message));
        }
      } else {
        final quizStatusData = await _secureStorgeManager.getQuizPassStatusFromLocal();
        resultData = jsonDecode(quizStatusData!);
      }

      appLog("RESULT DATA: $resultData");

      if (resultData['haltProgress']['halt'] == true) {
        return right(jsonEncode(resultData['haltProgress']));
      } else if (showProfileQuestions) {
        // Additional registration questions come before videos and the quiz.
        return right('showProfile');
      } else if (!resultData['skipVideosPage']) {
        return right("showVideo");
      } else if (!resultData['skipQuizPage']) {
        return right("showQuiz");
      } else {
        appLog("---- LOADING API SERVICE:  SHOW DASHBOARD ---->");
        return right('showDashboard');
      }
    } catch (e) {
      appLog("---- LOADING API SERVICE:  Error ----> $e");
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, OrgBrandInfoData>> getBrandInfo() async {
    try {
      final response = await loadingStatusAPIService.orgBrandInfoAPI();
      final result = convertToResponseData(response);

      if (result.status == 200) {
        final OrgBrandInfoData brandInfo =
            OrgBrandInfoData.fromJson(jsonDecode(result.data)['orgBrandInfo']);

        appLog("---- LOADING API SERVICE:  getBrandInfo ----> $brandInfo");
        return right(brandInfo);
      } else {
        return left(AppErrors.defaultError(error: result.message));
      }
    } catch (e) {
      appLog("---- LOADING API SERVICE:  getBrandInfo Error ----> $e");
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, UserDashboardData>> getUserDashBoardData(
      {required bool isConnectedToInternet}) async {
    try {
      UserDashboardData dashboardData = const UserDashboardData();

      if (isConnectedToInternet) {
        final response = await loadingStatusAPIService.userDashboardAPI();
        final result = convertToResponseData(response);
        if (result.status == 200) {
          dashboardData = UserDashboardData.fromJson(jsonDecode(result.data));

          await _secureStorgeManager.setUserDashBoardDataToLocal(
              userDashboardData: result.data);
        } else {
          return left(AppErrors.defaultError(error: result.message));
        }
      } else {
        final userData =
            await _secureStorgeManager.getUserDashboardDataFromLocal();
        dashboardData = UserDashboardData.fromJson(jsonDecode(userData!));
      }

      return right(dashboardData);
    } catch (e) {
      appLog("---- LOADING API SERVICE:  getUserDashBoardData Error ----> $e");
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, UserProfileData>> getUserProfileData(
      {required bool isConnectedToInternet}) async {
    try {
      UserProfileData userProfileData = const UserProfileData(
        profile: Profile(
          mobile: '',
          postalCode: '',
          dateOfBirth: '',
          gender: '',
        ),
        questions: Questions(
          show: true,
          list: [
            Question(
              choiceType: "single_select",
              required: false,
              enabled: true,
              type: "ethnicity",
              title: "ethnicity",
              questionType: "Single Select",
              options: [],
            ),
            Question(
              choiceType: "single_select",
              required: true,
              enabled: true,
              type: "employment_status",
              title: "employment_status",
              questionType: "Single Select",
              options: [],
            ),
            Question(
              choiceType: "single_select",
              required: false,
              enabled: true,
              type: "sexual_orientation",
              title: "sexual_orientation",
              questionType: "Single Select",
              options: [],
            ),
            Question(
              choiceType: "single_select",
              required: true,
              enabled: true,
              type: "main_language",
              title: "main_language",
              questionType: "Single Select",
              options: [],
            ),
            Question(
              choiceType: "multi_select",
              required: true,
              enabled: true,
              type: "disability",
              title: "disability",
              questionType: "Multi Select",
              options: [],
            ),
          ],
        ),
      );



      if (isConnectedToInternet) {
        final response = await loadingStatusAPIService.userProfileAPI();
        final result = convertToResponseData(response);
        if (result.status == 200) {
          userProfileData = UserProfileData.fromJson(jsonDecode(result.data));

          await _secureStorgeManager.setUserProfileDataToLocal(
              userProfileData: result.data);
        } else {
          return left(AppErrors.defaultError(error: result.message));
        }
      } else {
        final userData =
        await _secureStorgeManager.getUserProfileDataFromLocal();
        userProfileData = UserProfileData.fromJson(jsonDecode(userData!));
      }

      return right(userProfileData);
    } catch (e) {
      appLog("---- LOADING API SERVICE:  getUserProfileData Error ----> $e");
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, String>> confirmSelfDeletion(String otp) async {
    try {
      final response =
          await loadingStatusAPIService.userSelfDeleteConfirmAPI(otp);
      final result = convertToResponseData(response);

      if (result.status == 200) {
        return right("Deletion Successful");
      } else {
        return left(AppErrors.defaultError(error: result.message));
      }
    } catch (e) {
      appLog("---- LOADING API SERVICE:  confirmSelfDeletion Error ----> $e");
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, String>> selfDeletionProcess() async {
    try {
      final response = await loadingStatusAPIService.userSelfDeleteAPI();
      final result = convertToResponseData(response);

      if (result.status == 200) {
        return right(result.message);
      } else {
        return left(AppErrors.defaultError(error: result.message));
      }
    } catch (e) {
      appLog("---- LOADING API SERVICE:  selfDeletionProcess Error ----> $e");
      return left(appErrorFrom(e));
    }
  }
}
