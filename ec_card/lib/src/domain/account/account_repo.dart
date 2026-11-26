import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';

abstract class AccountRepository {
  Future<Either<AppErrors, Unit>> submitSupportRequest(
      {required String title,
      required String description,
      required String email,
      required String imagePath});
}
