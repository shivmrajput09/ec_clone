import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/data/education/model/education_item/education_item.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';

abstract class MessageRepository {
  Future<Either<AppErrors, Map<String, dynamic>>> getNotificationsList();

  Future<Either<AppErrors, String>> markNotificationAsRead(
      String notificationId);

  Future<Either<AppErrors, EducationItem>> viewSingleEducationItem(
      String type, String educationId);
}
