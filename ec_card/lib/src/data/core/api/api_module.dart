// lib/src/data/core/api/api_module.dart

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ApiModule {
  
  @lazySingleton
  Dio get dio {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.eccard.com/v1/', // Yahan EC Card ka real API URL aayega
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    // Interceptor: Terminal mein request aur response print karne ke liye (Debugging)
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
      ),
    );

    return dio;
  }
}