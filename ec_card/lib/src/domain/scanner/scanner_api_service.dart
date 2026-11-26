import 'package:dio/dio.dart';

abstract class ScannerAPIService {
  Future<Response<dynamic>> userEligibleTransactionAPI();

  /// Drops the cached [userEligibleTransactionAPI] result so the next call
  /// hits the network. Call this after an action that can change eligibility
  /// (e.g. placing an order) instead of waiting for the cache to expire.
  void invalidateEligibilityCache();

  Future<Response<dynamic>> claimTransactionAPI(Map<String, dynamic> body);

  Future<Response<dynamic>> offlineSync(
      {required String qrCode, required String transactionTime});

  Future<Response<dynamic>> getProductsBasedOnScan({required String code});
}
