import 'package:dio/dio.dart';
import 'package:ec_card_app/src/data/core/api/api_endpoints.dart';
import 'package:ec_card_app/src/data/core/api/api_service.dart';
import 'package:ec_card_app/src/domain/venue/venue_api_service.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

@LazySingleton(as: VenueAPIService)
class VenueAPIServiceImpl implements VenueAPIService {
  final ApiService _apiService = getIt<ApiService>();

  @override
  Future<Response> viewStoresAPI(double latitude, double longitude) async {
    appLog("----- Venue API Impl: Inside View Stores API");

    final response = await _apiService.dio.post(
      APIEndpoints.VIEW_STORES_URL,
      data: {
        "latitude": latitude,
        "longitude": longitude,
      },
    );

    return response;
  }

  @override
  Future<Response> viewIVTSAPI(double latitude, double longitude) async {
    appLog("-------- VENUE API IMPL: Inside View IVTS API");

    final response = await _apiService.dio.post(
      APIEndpoints.VIEW_IVTS_URL,
      data: {
        "latitude": latitude,
        "longitude": longitude,
      },
    );

    return response;
  }

  @override
  Future<Response> viewProductsAPI() async {
    appLog("-------- VENUE API IMPL: Inside View Products API");

    final response = await _apiService.dio.get(
      APIEndpoints.GET_PRODUCTS_FROM_ONLINE_STORE_URL,
    );

    return response;
  }

  @override
  Future<Response> orderProductsAPI(
    String street,
    String address,
    String city,
    String orgProductId,
  ) async {
    appLog("-------- VENUE API IMPL: Inside Order Products API");

    final response = await _apiService.dio.post(
      APIEndpoints.ORDER_PRODUCTS_ONLINE,
      data: {
        "street": street,
        "address": address,
        "city": city,
        "orgProductId": orgProductId,
      },
    );

    return response;
  }

  @override
  Future<Response> orderHistoryAPI() async {
    appLog("-------- VENUE API IMPL: Inside Order History API");

    final response = await _apiService.dio.get(
      APIEndpoints.ORDER_HISTORY_ONLINE,
    );

    return response;
  }
}
