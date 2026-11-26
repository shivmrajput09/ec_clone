import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/data/education/model/education_item/education_item.dart';
import 'package:ec_card_app/src/data/education/model/weblink_item/weblink_item.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';

abstract class EducationRepository {
  Future<Either<AppErrors, List<EducationItem>>> getEducationDocumentsList();

  Future<Either<AppErrors, List<EducationItem>>> searchEducationDocuments(
      String query);

  Future<Either<AppErrors, List<EducationItem>>> getEducationVideosList();

  Future<Either<AppErrors, List<EducationItem>>> searchEducationVideos(
      String query);

  Future<Either<AppErrors, List<WeblinkItem>>> getEducationWeblinks(
      {String query});

  Future<String> updateEducationView(String type, String educationId);
}
