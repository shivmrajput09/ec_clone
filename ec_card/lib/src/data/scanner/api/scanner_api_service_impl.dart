import 'package:dio/dio.dart';
import 'package:ec_card_app/src/data/core/api/api_endpoints.dart';
import 'package:ec_card_app/src/data/core/api/api_service.dart';
import 'package:ec_card_app/src/domain/scanner/scanner_api_service.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

@LazySingleton(as: ScannerAPIService)
class ScannerAPIServiceImpl implements ScannerAPIService {
  final ApiService _apiService = getIt<ApiService>();

  // The online-store checkout funnel (cart icon -> "Order Now" -> "Confirm")
  // independently re-checks eligibility at every step. Caching the result
  // briefly avoids paying that round trip 2-3x in the same flow, while the
  // short TTL means a user who takes their time still gets a fresh check.
  Response? _cachedEligibilityResponse;
  DateTime? _eligibilityCachedAt;
  static const _eligibilityCacheTtl = Duration(seconds: 20);

  @override
  Future<Response> claimTransactionAPI(Map<String, dynamic> body) async {
    appLog("Inside Claim Transaction API Call");

    final response = await _apiService.dio.post(
      APIEndpoints.CLAIM_TRANSACTION_URL,
      data: body,
    );

    return response;
  }

  @override
  Future<Response> userEligibleTransactionAPI() async {
    final cachedAt = _eligibilityCachedAt;
    if (_cachedEligibilityResponse != null &&
        cachedAt != null &&
        DateTime.now().difference(cachedAt) < _eligibilityCacheTtl) {
      appLog("Inside Check Eligible Transaction API Call: cache hit");
      return _cachedEligibilityResponse!;
    }

    appLog("Inside Check Eligible Transaction API Call");

    final response = await _apiService.dio.get(
      APIEndpoints.CHECK_ELIGIBLE_TRANSACTION_URL,
    );

    _cachedEligibilityResponse = response;
    _eligibilityCachedAt = DateTime.now();
    return response;
  }

  @override
  void invalidateEligibilityCache() {
    _cachedEligibilityResponse = null;
    _eligibilityCachedAt = null;
  }

  @override
  Future<Response> offlineSync(
      {required String qrCode, required String transactionTime}) async {
    // No shared secret and no mobile number: the gateway identifies the user
    // from the authenticated token pair the interceptor attaches, and derives
    // the organisation from it. The secret this call used to send was fixed,
    // shipped inside the binary, and therefore readable by anyone who cared to
    // look.
    final response = await _apiService.dio.post(
      APIEndpoints.SYNC_TRANSACTION_URL,
      data: {
        "qrTransactionCode": qrCode,
        "transactionTime": transactionTime,
      },
    );

    return response;
  }

  @override
  Future<Response> getProductsBasedOnScan({required String code}) async {
    appLog("Inside Get Products API call");
    final response =
        await _apiService.dio.post(APIEndpoints.GET_PRODUCTS_BY_QR_URL, data: {
      "qrTransactionCode": code,
    });

    return response;
  }
}
