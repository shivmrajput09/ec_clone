import 'dart:convert';

import 'package:ec_card_app/src/data/core/model/response_data.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:ec_card_app/src/data/education/model/education_item/education_item.dart';
import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/domain/education/education_api_service.dart';
import 'package:ec_card_app/src/domain/messages/message_api_service.dart';
import 'package:ec_card_app/src/domain/messages/message_repo.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

@LazySingleton(as: MessageRepository)
class MessageRepoImpl implements MessageRepository {
  final messageAPIservice = getIt<MessageAPIService>();
  final educationAPIService = getIt<EducationAPIService>();

  @override
  Future<Either<AppErrors, Map<String, dynamic>>> getNotificationsList() async {
    try {
      final response = await messageAPIservice.getNotificationsAPI();
      final result = convertToResponseData(response);

      if (result.status == 200) {
        final messageList = jsonDecode(result.data);

        return right(messageList['notifications']);
      } else {
        return left(AppErrors.defaultError(error: result.message));
      }
    } catch (e) {
      appLog("---- MESSAGE API SERVICE: getNotificationsList Error ----> $e");
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, String>> markNotificationAsRead(
      String notificationId) async {
    try {
      final response =
          await messageAPIservice.readNotificationAPI(notificationId);
      final result = convertToResponseData(response);

      if (result.status == 200) {
        return right(result.message);
      } else {
        return left(AppErrors.defaultError(error: result.message));
      }
    } catch (e) {
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, EducationItem>> viewSingleEducationItem(
      String type, String educationId) async {
    try {
      final response =
          await educationAPIService.viewEducationAPI(type, educationId);
      final result = convertToResponseData(response);

      if (result.status == 200) {
        final educationData =
            EducationItem.fromJson(jsonDecode(result.data)['record']);

        return right(educationData);
      } else {
        return left(AppErrors.defaultError(error: result.message));
      }
    } catch (e) {
      appLog("---- MESSAGE API SERVICE: viewSingleEducationItem Error ----> $e");
      return left(appErrorFrom(e));
    }
  }
}
