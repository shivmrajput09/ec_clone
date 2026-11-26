import 'dart:convert';

import 'package:ec_card_app/src/data/core/model/response_data.dart';
import 'package:ec_card_app/src/data/venue/model/products.dart';
import 'package:ec_card_app/src/data/venue/model/products_response.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:ec_card_app/src/data/venue/model/venue.dart';
import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/domain/venue/venue_api_service.dart';
import 'package:ec_card_app/src/domain/venue/venue_repo.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

@LazySingleton(as: VenueRepository)
class VenueRepoImpl implements VenueRepository {
  final venueAPIservice = getIt<VenueAPIService>();
  @override
  Future<Either<AppErrors, List<VenueBody>>> getVenuesList(
      double latitude, double longitude) async {
    try {
      final response = await venueAPIservice.viewStoresAPI(latitude, longitude);
      final result = convertToResponseData(response);

      if (result.status == 200) {
        // appLog("---- VENUE REPO IMPL: ----- ${result.data}");
        final listOfVenues =
            convertIntoListOfVenueBody(jsonDecode(result.data)['storesList']);

        // appLog("---- VENUE REPO IMPL: ----- $listOfVenues");

        return right(listOfVenues);
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
  Future<Either<AppErrors, List<VenueBody>>> getIvtsList(
      double latitude, double longitude) async {
    try {
      final response = await venueAPIservice.viewIVTSAPI(latitude, longitude);
      final result = convertToResponseData(response);

      if (result.status == 200) {
        // appLog("---- VENUE REPO IMPL: IVTS -----> ${result.data}");
        final list =
            convertIVTSlistTOVenueList(jsonDecode(result.data)['ivtsList']);

        return right(list);
      } else {
        return left(serverErrorFrom(result));
      }
    } catch (e) {
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, ProductsResponse>> getProductsList() async {
    try {
      final response = await venueAPIservice.viewProductsAPI();
      final result = convertToResponseData(response);

      if (result.status == 200) {
        final data = jsonDecode(result.data);
        final userInfo = data['userInfo'] ?? {};
        final list = convertJSONlistTOVProductList(data['list'] ?? []);

        return right(ProductsResponse(
          list: list,
          message: data['message'] ?? '',
          postalCode: userInfo['postalCode'] ?? '',
          phoneNumber: userInfo['phone'] ?? '',
        ));
      } else {
        return left(serverErrorFrom(result));
      }
    } catch (e) {
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, String>> orderProducts(
    String street,
    String address,
    String city,
    String orgProductId,
  ) async {
    try {
      final response = await venueAPIservice.orderProductsAPI(
        street,
        address,
        city,
        orgProductId,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data;
        return right(data['message'] ?? 'Order placed successfully');
      } else {
        return left(AppErrors.defaultError(
          error: "Failed with status code: ${response.statusCode}",
        ));
      }
    } catch (e) {
      return left(appErrorFrom(e));
    }
  }
}
