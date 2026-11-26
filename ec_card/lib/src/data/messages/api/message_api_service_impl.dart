import 'package:dio/src/response.dart';
import 'package:ec_card_app/src/data/core/api/api_endpoints.dart';
import 'package:ec_card_app/src/data/core/api/api_service.dart';
import 'package:ec_card_app/src/domain/messages/message_api_service.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MessageAPIService)
class MessageAPIServiceImpl implements MessageAPIService {
  final ApiService _apiService = getIt<ApiService>();

  @override
  Future<Response> getNotificationsAPI() async {
    final response = await _apiService.dio.get(APIEndpoints.NOTIFICATIONS_URL);
    return response;
  }

  @override
  Future<Response> readNotificationAPI(String id) async {
    final response =
        await _apiService.dio.get("${APIEndpoints.NOTIFICATIONS_URL}/$id");

    return response;
  }
}
