import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';

abstract class ScannerRepository {
  Future<Either<AppErrors, String>> checkEligibilityForTransaction(
      {required bool isConnectedToInternet});

  Future<Either<String, String>> claimTransactionOnScan(
      Map<String, dynamic> body);

  Future<Either<String, Map<String, dynamic>>> getProductsBasedOnQRCode(
      {required String qrCode});
}
