import 'dart:convert';

import 'package:ec_card_app/src/data/core/model/response_data.dart';
import 'package:ec_card_app/src/data/education/model/education_item/education_item.dart';
import 'package:ec_card_app/src/data/education/model/weblink_item/weblink_item.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/domain/education/education_api_service.dart';
import 'package:ec_card_app/src/domain/education/education_repo.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

@LazySingleton(as: EducationRepository)
class EducationRepoImpl implements EducationRepository {
  final educationAPIservice = getIt<EducationAPIService>();
  @override
  Future<Either<AppErrors, List<EducationItem>>>
      getEducationDocumentsList() async {
    try {
      final response = await educationAPIservice.educationDocumentAPI();
      final result = convertToResponseData(response);

      if (result.status == 200) {
        final listOfDocuments = convertIntoListOfEducationItems(
            jsonDecode(result.data)['documents']);
        return right(listOfDocuments);
      } else {
        return left(AppErrors.defaultError(error: result.message));
      }
    } catch (e) {
      appLog("---- EDUCATION API SERVICE: getEducationDocumentsList Error ----> $e");
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, List<EducationItem>>> searchEducationDocuments(
      String query) async {
    try {
      final response =
          await educationAPIservice.educationDocumentSearchAPI(query);
      final result = convertToResponseData(response);

      if (result.status == 200) {
        final searchedList = convertIntoListOfEducationItems(
            jsonDecode(result.data)['documents']);

        return right(searchedList);
      } else {
        return left(AppErrors.defaultError(
          error: result.message,
        ));
      }
    } catch (e) {
      appLog("---- EDUCATION API SERVICE: searchEducationDocuments Error ----> $e");
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, List<EducationItem>>>
      getEducationVideosList() async {
    try {
      final response = await educationAPIservice.educationVideoAPI();
      final result = convertToResponseData(response);

      if (result.status == 200) {
        final listOfVideo =
            convertIntoListOfEducationItems(jsonDecode(result.data)['videos']);
        return right(listOfVideo);
      } else {
        return left(AppErrors.defaultError(error: result.message));
      }
    } catch (e) {
      appLog("---- EDUCATION API SERVICE: getEducationVideosList Error ----> $e");
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, List<EducationItem>>> searchEducationVideos(
      String query) async {
    try {
      final response = await educationAPIservice.educationVIdeoSearchAPI(query);
      final result = convertToResponseData(response);

      if (result.status == 200) {
        final searchedList =
            convertIntoListOfEducationItems(jsonDecode(result.data)['videos']);

        return right(searchedList);
      } else {
        return left(AppErrors.defaultError(
          error: result.message,
        ));
      }
    } catch (e) {
      appLog("---- EDUCATION API SERVICE: searchEducationVideos Error ----> $e");
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, List<WeblinkItem>>> getEducationWeblinks(
      {String query = ''}) async {
    try {
      final response =
          await educationAPIservice.educationWeblinkAPI(search: query);
      final result = convertToResponseData(response);

      if (result.status == 200) {
        // The list is absent rather than empty on some replies.
        final body = jsonDecode(result.data);
        final weblinks = body is Map ? body['weblinks'] : null;
        return right(weblinks is Iterable
            ? convertIntoListOfWeblinkItems(weblinks)
            : const <WeblinkItem>[]);
      } else {
        return left(AppErrors.defaultError(error: result.message));
      }
    } catch (e) {
      // A search that matches nothing is refused with a 4xx carrying
      // `{status: 204, data: {educationList: []}, message: "No educational
      // material matching your search found"}`. That is an empty result, not
      // a failure — reported as one, it left the previous results on screen.
      final rejection = rejectionData(e);
      if (rejection != null && rejection.status == 204) {
        return right(const <WeblinkItem>[]);
      }

      appLog("---- EDUCATION API SERVICE: getEducationWeblinks Error ----> $e");
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<String> updateEducationView(String type, String educationId) async {
    final response =
        await educationAPIservice.viewEducationAPI(type, educationId);
    final result = convertToResponseData(response);

    if (result.status == 200) {
      return result.message;
    } else {
      return result.message;
    }
  }
}
