// ignore_for_file: constant_identifier_names

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import '../../domain/local_storage/secure_storage_manager.dart';

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
  final FlutterSecureStorage _secureStorage;

  SecureStorageManagerImpl() : _secureStorage = const FlutterSecureStorage();

  @override
  Future<String?> getUserInfo() async {
    return await _secureStorage.read(key: _userInfo);
  }

  @override
  Future<void> setUserInfo({required String userInfo}) async {
    await _secureStorage.write(key: _userInfo, value: userInfo);
  }

  @override
  Future<String?> getAccessToken() async {
    return await _secureStorage.read(key: ACCESS_TOKEN);
  }

  @override
  Future<String?> getPhoneNumber() async {
    return await _secureStorage.read(key: PHONE_NUMBER);
  }

  @override
  Future<String?> getRefreshToken() async {
    return await _secureStorage.read(key: REFRESH_TOKEN);
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
    return await _secureStorage.read(key: CLAIM_TRANSACTION);
  }

  @override
  Future<String?> getEligibilityStatusDataToLocal() async {
    return await _secureStorage.read(key: ELIGIBILITY_STATUS);
  }

  @override
  Future<String?> getQuizPassStatusFromLocal() async {
    return await _secureStorage.read(key: QUIZ_PASS_STATUS);
  }

  @override
  Future<String?> getUserDashboardDataFromLocal() async {
    return await _secureStorage.read(key: USER_DASHBOARD);
  }

  @override
  Future<void> setClaimTransactionDataToLocal({required String scannedCode}) async {
    await _secureStorage.write(key: CLAIM_TRANSACTION, value: scannedCode);
  }

  @override
  Future<void> setEligibilityStatusDataToLocal({required String eligibilityStatus}) async {
    await _secureStorage.write(key: ELIGIBILITY_STATUS, value: eligibilityStatus);
  }

  @override
  Future<void> setQuizPassStatusToLocal({required String statusData}) async {
    await _secureStorage.write(key: QUIZ_PASS_STATUS, value: statusData);
  }

  @override
  Future<void> setUserDashBoardDataToLocal({required String userDashboardData}) async {
    await _secureStorage.write(key: USER_DASHBOARD, value: userDashboardData);
  }

  @override
  Future<void> setUserProfileDataToLocal({required String userProfileData}) async {
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
    return await _secureStorage.read(key: USER_PROFILE);
  }
}