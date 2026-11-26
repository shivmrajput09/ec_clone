// ignore_for_file: constant_identifier_names

import 'package:ec_card_app/src/domain/local_storage/secure_storage_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

const _userInfo = 'user_info';
const ACCESS_TOKEN = 'access_token';
const REFRESH_TOKEN = 'refresh_token';
const PHONE_NUMBER = 'phone_number';
const QUIZ_PASS_STATUS = 'quiz_pass_status';
const USER_DASHBOARD = 'user_dashboard_data';
const USER_PROFILE = 'user_profile_data';
const ELIGIBILITY_STATUS = 'eligibility_status_data';
const CLAIM_TRANSACTION = 'claim_transaction_data';

@LazySingleton(as: SecureStorgeManager)
class SecureStorageManagerImpl implements SecureStorgeManager {
  SecureStorageManagerImpl(this._secureStorage);

  final FlutterSecureStorage _secureStorage;

  @override
  Future<String?> getUserInfo() async {
    final userInfo = await _secureStorage.read(key: _userInfo);
    return userInfo;
  }

  @override
  Future<void> setUserInfo({required String userInfo}) async {
    await _secureStorage.write(key: _userInfo, value: userInfo);
  }

  @override
  Future<String?> getAccessToken() async {
    final accessToken = await _secureStorage.read(key: ACCESS_TOKEN);
    return accessToken;
  }

  @override
  Future<String?> getPhoneNumber() async {
    final phoneNumber = await _secureStorage.read(key: PHONE_NUMBER);
    return phoneNumber;
  }

  @override
  Future<String?> getRefreshToken() async {
    final refreshToken = await _secureStorage.read(key: REFRESH_TOKEN);
    return refreshToken;
  }

  @override
  Future<void> setAccessToken({required String accessToken}) async {
    await _secureStorage.write(key: ACCESS_TOKEN, value: accessToken);
  }

  @override
  Future<void> setPhoneNumber({required String phoneNumber}) async {
    await _secureStorage.write(key: PHONE_NUMBER, value: phoneNumber);
  }

  @override
  Future<void> setRefreshToken({required String refreshToken}) async {
    await _secureStorage.write(key: REFRESH_TOKEN, value: refreshToken);
  }

  @override
  Future<String?> getClaimTransactionDataFromLocal() async {
    final claimTransactionData =
        await _secureStorage.read(key: CLAIM_TRANSACTION);
    return claimTransactionData;
  }

  @override
  Future<String?> getEligibilityStatusDataToLocal() async {
    final eligibilityStatusData =
        await _secureStorage.read(key: ELIGIBILITY_STATUS);
    return eligibilityStatusData;
  }

  @override
  Future<String?> getQuizPassStatusFromLocal() async {
    final quizStatusData = await _secureStorage.read(key: QUIZ_PASS_STATUS);
    return quizStatusData;
  }

  @override
  Future<String?> getUserDashboardDataFromLocal() async {
    final userDashboardData = await _secureStorage.read(key: USER_DASHBOARD);
    return userDashboardData;
  }

  @override
  Future<void> setClaimTransactionDataToLocal(
      {required String scannedCode}) async {
    await _secureStorage.write(key: CLAIM_TRANSACTION, value: scannedCode);
  }

  @override
  Future<void> setEligibilityStatusDataToLocal(
      {required String eligibilityStatus}) async {
    await _secureStorage.write(
        key: ELIGIBILITY_STATUS, value: eligibilityStatus);
  }

  @override
  Future<void> setQuizPassStatusToLocal({required String statusData}) async {
    await _secureStorage.write(key: QUIZ_PASS_STATUS, value: statusData);
  }

  @override
  Future<void> setUserDashBoardDataToLocal(
      {required String userDashboardData}) async {
    await _secureStorage.write(key: USER_DASHBOARD, value: userDashboardData);
  }

  @override
  Future<void> setUserProfileDataToLocal(
      {required String userProfileData}) async {
    await _secureStorage.write(key: USER_PROFILE, value: userProfileData);
  }

  @override
  Future<void> deleteClaimTransactionDataFromLocal() async {
    await _secureStorage.delete(key: CLAIM_TRANSACTION);
  }

  @override
  Future<void> clearSecureStorage() async {
    await _secureStorage.deleteAll();
  }

  @override
  Future<String?> getUserProfileDataFromLocal() async {
    final userProfileData = await _secureStorage.read(key: USER_PROFILE);
    return userProfileData;
  }
}
