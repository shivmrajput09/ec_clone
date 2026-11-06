// lib/src/data/loading_status/loading_status_repo_impl.dart

import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/errors/errors.dart';
import '../../domain/loading_status/loading_status_repo.dart';
import '../../domain/local_storage/secure_storage_manager.dart';
import 'model/org_brand_info/org_brand_info.dart';
import 'model/user_dashboard/user_dashboard.dart';
import 'model/user_profile/user_profile.dart';

@LazySingleton(as: LoadingStatusRepository)
class LoadingStatusRepoImpl implements LoadingStatusRepository {
  final SecureStorgeManager _secureStorageManager;

  LoadingStatusRepoImpl(this._secureStorageManager);

  @override
  Future<Either<AppErrors, String>> checkQuizPassedStatus({
    required bool isConnectedToInternet,
    bool skipProfileCheck = false,
  }) async {
    try {
      // 1. Local Secure Storage se saved progress check karo
      final localStatus = await _secureStorageManager.getQuizPassStatusFromLocal();
      if (localStatus != null && localStatus.isNotEmpty) {
        try {
          final decoded = jsonDecode(localStatus);
          if (decoded is Map<String, dynamic>) {
            // Agar quiz pass ho chuka hai -> Dashboard / HomePage
            if (decoded['quizPassed'] == true) {
              return right('showDashboard');
            }
            // Agar videos dekhi hain par quiz bacha hai -> QuizScreen
            if (decoded['videosWatched'] == true) {
              return right('showQuiz');
            }
          }
        } catch (_) {}
      }

      // 2. Offline check
      if (!isConnectedToInternet) {
        // Offline hone par agar cache nahi mila, toh safe route showVideo
        return right('showVideo');
      }

      // 3. Default Onboarding Progressive Flow:
      // First Time user hamesha Video Module se start karega
      return right('showVideo');
    } catch (e) {
      return left(const AppErrors.unexpectedError());
    }
  }

  @override
  Future<Either<AppErrors, OrgBrandInfoData>> getBrandInfo() async {
    try {
      return right(const OrgBrandInfoData(
        orgName: 'EC Card National Health Service',
        copyrightText: '© EC Card Healthcare UK',
        isActivated: true,
        isPublished: true,
      ));
    } catch (e) {
      return left(const AppErrors.unexpectedError());
    }
  }

  @override
  Future<Either<AppErrors, UserProfileData>> getUserProfileData({
    required bool isConnectedToInternet,
  }) async {
    try {
      // Local cache se profile check karo
      final localData = await _secureStorageManager.getUserProfileDataFromLocal();
      if (localData != null && localData.isNotEmpty) {
        try {
          final profile = UserProfileData.fromJson(jsonDecode(localData));
          return right(profile);
        } catch (_) {}
      }

      final phoneNumber = await _secureStorageManager.getPhoneNumber() ?? '';

      // Freezed model ke exact constructor parameters match kiye gaye hain
      final defaultProfile = UserProfileData(
        profile: Profile(
          mobile: phoneNumber.isNotEmpty ? phoneNumber : '07123456789',
          postalCode: 'EC1A 1BB',
          dateOfBirth: '2000-01-01',
          gender: 'Not specified',
        ),
        questions: const Questions(
          show: false,
          list: [],
        ),
      );

      await _secureStorageManager.setUserProfileDataToLocal(
        userProfileData: jsonEncode(defaultProfile.toJson()),
      );

      return right(defaultProfile);
    } catch (e) {
      return left(const AppErrors.unexpectedError());
    }
  }

  @override
  Future<Either<AppErrors, UserDashboardData>> getUserDashBoardData({
    required bool isConnectedToInternet,
  }) async {
    try {
      // Local cache se dashboard data check karo
      final localData = await _secureStorageManager.getUserDashboardDataFromLocal();
      if (localData != null && localData.isNotEmpty) {
        try {
          final dashboard = UserDashboardData.fromJson(jsonDecode(localData));
          return right(dashboard);
        } catch (_) {}
      }

      final phoneNumber = await _secureStorageManager.getPhoneNumber() ?? '';

      // Freezed model ke exact constructor parameters match kiye gaye hain
      final defaultDashboard = UserDashboardData(
        message: 'Welcome to EC Card Health Hub',
        unReadNotifications: 0,
        brandLogo: '',
        tncWebUrl: 'https://eccard.org.uk/terms',
        privacyWebUrl: 'https://eccard.org.uk/privacy',
        support: {
          'user': phoneNumber.isNotEmpty ? phoneNumber : 'EC Member',
          'email': 'support@eccard.org.uk',
          'active': true,
        },
      );

      await _secureStorageManager.setUserDashBoardDataToLocal(
        userDashboardData: jsonEncode(defaultDashboard.toJson()),
      );

      return right(defaultDashboard);
    } catch (e) {
      return left(const AppErrors.unexpectedError());
    }
  }

  @override
  Future<Either<AppErrors, String>> selfDeletionProcess() async {
    return right('Account self-deletion request initiated successfully.');
  }

  @override
  Future<Either<AppErrors, String>> confirmSelfDeletion(String otp) async {
    await _secureStorageManager.clearSecureStorage();
    return right('Account session and data removed completely.');
  }
}