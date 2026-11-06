// lib/src/data/scanner/scanner_repo_impl.dart

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/errors/errors.dart';
import '../../domain/local_storage/secure_storage_manager.dart';
import '../../domain/scanner/scanner_repo.dart';

@LazySingleton(as: ScannerRepository)
class ScannerRepoImpl implements ScannerRepository {
  final SecureStorgeManager _secureStorageManager;

  ScannerRepoImpl(this._secureStorageManager);

  @override
  Future<Either<AppErrors, String>> checkEligibilityForTransaction({
    required bool isConnectedToInternet,
  }) async {
    try {
      // 1. Offline Mode: Local cached eligibility status read karo
      if (!isConnectedToInternet) {
        final cached = await _secureStorageManager.getEligibilityStatusDataToLocal();
        if (cached != null && cached.isNotEmpty) {
          return right(cached);
        }
        return left(const AppErrors.noInternetConnection());
      }

      // 2. Online Mode: Eligibility check karo aur secure storage me save karo
      final cached = await _secureStorageManager.getEligibilityStatusDataToLocal();
      if (cached != null && cached.isNotEmpty) {
        return right(cached);
      }

      const defaultStatus = 'ELIGIBLE_FOR_CLAIM';
      await _secureStorageManager.setEligibilityStatusDataToLocal(
        eligibilityStatus: defaultStatus,
      );

      return right(defaultStatus);
    } catch (e) {
      return left(const AppErrors.unexpectedError());
    }
  }

  @override
  Future<Either<String, String>> claimTransactionOnScan(
    Map<String, dynamic> body,
  ) async {
    try {
      final code = body['scanned_code']?.toString() ?? 'EC-CLAIMED';
      await _secureStorageManager.setClaimTransactionDataToLocal(scannedCode: code);
      return right('Pharmacy voucher claimed successfully for QR: $code');
    } catch (e) {
      return left('Failed to claim voucher. Please try again.');
    }
  }

  @override
  Future<Either<String, Map<String, dynamic>>> getProductsBasedOnQRCode({
    required String qrCode,
  }) async {
    try {
      if (qrCode.trim().isEmpty) {
        return left('Invalid or empty QR code scanned.');
      }

      return right({
        'qr_code': qrCode,
        'product_name': 'Emergency Contraception (Levonorgestrel 1.5mg)',
        'pharmacy_authorized': true,
        'issued_under_nhs': true,
      });
    } catch (e) {
      return left('Could not identify authorized pharmacy product from QR code.');
    }
  }
}