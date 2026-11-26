import 'package:dio/dio.dart';

abstract class LoadingStatusAPIService {
  Future<Response<dynamic>> quizPassedAPI({bool? quizCheck = true});

  Future<Response<dynamic>> userProfileAPI();

  Future<Response<dynamic>> orgBrandInfoAPI();

  Future<Response<dynamic>> userDashboardAPI();

  Future<Response<dynamic>> userSelfDeleteAPI();

  Future<Response<dynamic>> userSelfDeleteConfirmAPI(String otp);
}
