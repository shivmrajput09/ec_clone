import 'package:dio/dio.dart';

abstract class VenueAPIService {
  Future<Response<dynamic>> viewStoresAPI(double latitude, double longitude);

  Future<Response<dynamic>> viewIVTSAPI(double latitude, double longitude);

  Future<Response<dynamic>> viewProductsAPI();

  Future<Response<dynamic>> orderProductsAPI(
    String street,
    String address,
    String city,
    String orgProductId,
  );

  Future<Response<dynamic>> orderHistoryAPI();
}
