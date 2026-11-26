import 'package:dio/dio.dart';

abstract class EducationAPIService {
  Future<Response<dynamic>> educationDocumentAPI();

  Future<Response<dynamic>> educationVideoAPI();

  Future<Response<dynamic>> educationDocumentSearchAPI(String query);

  Future<Response<dynamic>> educationVIdeoSearchAPI(String query);

  /// The Weblinks tab. [search] is matched by the gateway against the title
  /// and the link itself; an empty one returns everything.
  Future<Response<dynamic>> educationWeblinkAPI({String search});

  Future<Response<dynamic>> viewEducationAPI(String type, String educationId);
}
