abstract class SecureStorgeManager {
  Future<String?> getUserInfo();
  Future<void> setUserInfo({required String userInfo});
  Future<String?> getAccessToken();
  Future<void> setAccessToken({required String accessToken});
  Future<String?> getRefreshToken();
  Future<void> setRefreshToken({required String refreshToken});
  Future<String?> getPhoneNumber();
  Future<void> setPhoneNumber({required String phoneNumber});
  Future<void> setQuizPassStatusToLocal({required String statusData});
  Future<String?> getQuizPassStatusFromLocal();
  Future<void> setUserDashBoardDataToLocal({required String userDashboardData});
  Future<String?> getUserDashboardDataFromLocal();
  Future<void> setUserProfileDataToLocal({required String userProfileData});
  Future<String?> getUserProfileDataFromLocal();
  Future<void> setEligibilityStatusDataToLocal({required String eligibilityStatus});
  Future<String?> getEligibilityStatusDataToLocal();
  Future<void> setClaimTransactionDataToLocal({required String scannedCode});
  Future<String?> getClaimTransactionDataFromLocal();
  Future<void> deleteClaimTransactionDataFromLocal();
  Future<void> clearSecureStorage();
}