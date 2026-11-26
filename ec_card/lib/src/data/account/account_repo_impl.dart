import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/data/core/model/response_data.dart';
import 'package:ec_card_app/src/domain/account/account_api_service.dart';
import 'package:ec_card_app/src/domain/account/account_repo.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AccountRepository)
class AccountRepoImpl implements AccountRepository {
  final accountAPIService = getIt<AccountAPIService>();
  @override
  Future<Either<AppErrors, Unit>> submitSupportRequest(
      {required String title,
      required String description,
      required String email,
      required String imagePath}) async {
    try {
      final response = await accountAPIService.accountSupportAPI(
          title: title,
          description: description,
          email: email,
          imagePath: imagePath);
      final result = convertToResponseData(response);

      if (result.status == 200) {
        return right(unit);
      } else {
        return left(AppErrors.defaultError(
          error: result.message,
        ));
      }
    } catch (e) {
      return left(appErrorFrom(e));
    }
  }
}
