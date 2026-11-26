import 'dart:convert';

import 'package:ec_card_app/src/data/core/model/response_data.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/domain/local_storage/secure_storage_manager.dart';
import 'package:ec_card_app/src/domain/scanner/scanner_api_service.dart';
import 'package:ec_card_app/src/domain/scanner/scanner_repo.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

@LazySingleton(as: ScannerRepository)
class ScannerRepoImpl implements ScannerRepository {
  ScannerRepoImpl(this._secureStorgeManager);

  final scannerAPIService = getIt<ScannerAPIService>();
  final SecureStorgeManager _secureStorgeManager;
  @override
  Future<Either<AppErrors, String>> checkEligibilityForTransaction(
      {required bool isConnectedToInternet}) async {
    try {
      // appLog("SCANNER REPO: INTERNET STATUS ---> $isConnectedToInternet");
      String resultData = '';
      // if (isConnectedToInternet) {
      //   final response = await scannerAPIService.userEligibleTransactionAPI();
      //   final result = convertToResponseData(response);

      //   // appLog("SCANNER REPO: ELIGIBILITY CHECK RESPONSE----> $result");

      //   if (result.status == 200) {
      //     resultData = result.data;

      //     // appLog("SCANNER REPO INTERNET AVAILABLE: ${result.data}");

      //     await _secureStorgeManager.setEligibilityStatusDataToLocal(
      //         eligibilityStatus: resultData);

      //     return right(resultData);
      //   } else {
      //     return left(AppErrors.defaultError(
      //       error: result.message,
      //     ));
      //   }
      // } else {
      //   final eligibilityData =
      //       await _secureStorgeManager.getEligibilityStatusDataToLocal();

      //   // appLog("SCANNER REPO NO INTERNET: $eligibilityData");

      //   if (eligibilityData != null) {
      //     resultData = eligibilityData;

      //     return right(resultData);
      //   } else {
      //     return left(const AppErrors.unexpectedError());
      //   }
      // }

      final response = await scannerAPIService.userEligibleTransactionAPI();
      final result = convertToResponseData(response);

      // appLog("SCANNER REPO: ELIGIBILITY CHECK RESPONSE----> $result");

      if (result.status == 200) {
        resultData = result.data;

        // appLog("SCANNER REPO INTERNET AVAILABLE: ${result.data}");

        await _secureStorgeManager.setEligibilityStatusDataToLocal(
            eligibilityStatus: resultData);

        return right(resultData);
      } else {
        return left(AppErrors.defaultError(
          error: result.message,
        ));
      }
    } catch (e) {
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<String, String>> claimTransactionOnScan(
      Map<String, dynamic> body) async {
    try {
      // if (body['qrCode'].toString().startsWith("eccard___ivtsId") &&
      //     !isConnectedToInternet) {
      //   return left("No internet connection");
      // } else if (isConnectedToInternet) {
      //   // final response =
      //   final response = await scannerAPIService.claimTransactionAPI(body);
      //   final result = convertToResponseData(response);

      //   // appLog("SCANNER REPO IMPL: CLAIM TRANS RESPONSE ---->  $result");

      //   if (result.status == 200) {
      //     // result.data;
      //     return right(result.message);
      //   } else {
      //     return left(result.message);
      //   }
      // } else {
      //   // await _secureStorgeManager.setClaimTransactionDataToLocal(
      //   //     scannedCode: jsonEncode({
      //   //   "qrTransactionCode": qrCode,
      //   //   "transactionTime": transactionTime.toString(),
      //   // }));

      //   //set eligibility data
      //   final Map<String, dynamic> eligibilityData = {
      //     "isEligible": false,
      //     "prevClaimDate": body['transactionTime'].toString(),
      //     "nextClaimDate": body['transactionTime'].add(const Duration(days: 7)),
      //     "message": "Your next claim will be ready by 6 days"
      //   };

      //   await _secureStorgeManager.setEligibilityStatusDataToLocal(
      //       eligibilityStatus: jsonEncode(eligibilityData));

      //   return right(eligibilityData['message']);
      // }

      final response = await scannerAPIService.claimTransactionAPI(body);
      final result = convertToResponseData(response);

      // appLog("SCANNER REPO IMPL: CLAIM TRANS RESPONSE ---->  $result");

      if (result.status == 200) {
        appLog("CLAIM TRANSACTION SUCCESS: ${jsonDecode(result.data)}");
        return right(result.data);
      } else {
        return left(result.message);
      }
    } catch (e) {
      // Prefer the server's account of the refusal, as the `else` above does;
      // a rejected claim throws here instead when the API answers with a 4xx.
      return left(rejectionData(e)?.message ?? "unexpected error");
    }
  }

  @override
  Future<Either<String, Map<String, dynamic>>> getProductsBasedOnQRCode(
      {required String qrCode}) async {
    try {
      appLog("Inside scanner Repo to get products list");
      final result =
          await scannerAPIService.getProductsBasedOnScan(code: qrCode);
      final ResponseData response = convertToResponseData(result);
      if (response.status == 200) {
        return right(Map<String, dynamic>.from(jsonDecode(response.data)));
      } else {
        return left(
          response.message,
        );
      }
    } catch (e) {
      appLog("Error in Fetching products using the QR: $e");
      return left(rejectionData(e)?.message ?? "An unexpected error occured!");
    }
  }
}
