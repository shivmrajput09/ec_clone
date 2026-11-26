import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/data/core/model/response_data.dart';

import '../core/errors/errors.dart';
import 'profile_api_service.dart';

class ProfileRepository {
  ProfileRepository({required this.profileAPIService});

  final ProfileAPIService profileAPIService;

  Future<Either<AppErrors, String>> submitProfileAnswers(
      List<Map<dynamic, dynamic>> answers) async {
    try {
      final response =
          await profileAPIService.submitProfileAPI({"questions": answers});
      final result = convertToResponseData(response);

      if (result.status == 200) {
        return right(result.message);
      } else {
        return left(serverErrorFrom(result));
      }
    } catch (e) {
      return left(appErrorFrom(e));
    }
  }
}
