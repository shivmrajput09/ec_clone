import 'package:dio/dio.dart';

abstract class MessageAPIService {
  Future<Response<dynamic>> getNotificationsAPI();

  Future<Response<dynamic>> readNotificationAPI(String id);
}
