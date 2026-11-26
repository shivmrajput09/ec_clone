// ignore_for_file: constant_identifier_names

import 'package:dio/dio.dart';
import 'package:ec_card_app/src/data/core/api/api_endpoints.dart';
import 'package:ec_card_app/src/data/core/api/app_interceptor.dart';
import 'package:injectable/injectable.dart';

@injectable
class ApiService {
  final dio = createDio();

  static header() => {"Content-Type": "application/json"};

  static Dio createDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: APIEndpoints.BASE_URL,
      ),
    );

    // Pass the client into the interceptor so it can replay a request after a
    // silent token refresh (A06-2).
    dio.interceptors.add(AppInterceptors(dio));

    return dio;
  }
}
