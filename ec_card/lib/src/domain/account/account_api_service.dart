import 'package:dio/dio.dart';

abstract class AccountAPIService {
  Future<Response<dynamic>> accountSupportAPI(
      {required String title,
      required String description,
      required String email,
      required String imagePath});
}
