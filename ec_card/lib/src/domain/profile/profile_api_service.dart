import 'package:dio/dio.dart';
import 'package:ec_card_app/src/data/core/api/api_endpoints.dart';
import 'package:ec_card_app/src/data/core/api/api_service.dart';

import '../../injection.dart';

/// Submits the profile questions.
///
/// This used to talk to the network directly through `package:http`, assembling
/// its own headers from secure storage. That put it outside everything the
/// shared client does: the tokens were force-unwrapped, so a request made
/// without a stored session threw rather than failing cleanly; a rotated access
/// token was never saved; and a 401 here did not end the session, leaving the
/// app holding credentials the gateway had stopped honouring.
///
/// Going through the shared client means the interceptor attaches the tokens,
/// stores the rotated ones, and tears down a rejected session — and that
/// refusals reach the caller as exceptions carrying the gateway's own message,
/// the way they do everywhere else.
class ProfileAPIService {
  ProfileAPIService();

  final ApiService _apiService = getIt<ApiService>();

  Future<Response<dynamic>> submitProfileAPI(
      Map<String, dynamic> profileData) async {
    return _apiService.dio.post(
      APIEndpoints.USER_PROFILE_URL,
      data: profileData,
    );
  }
}
