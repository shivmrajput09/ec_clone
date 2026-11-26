import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ec_card_app/src/data/core/api/api_endpoints.dart';
import 'package:ec_card_app/src/data/core/api/api_service.dart';
import 'package:ec_card_app/src/domain/account/account_api_service.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:flutter/material.dart';
import 'package:http_parser/http_parser.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

@LazySingleton(as: AccountAPIService)
class AccountAPIServiceImpl implements AccountAPIService {
  final ApiService _apiService = getIt<ApiService>();
  @override
  Future<Response> accountSupportAPI(
      {required String title,
      required String description,
      required String email,
      required String imagePath}) async {
    appLog('Inside Account Support API Call');

    Map<String, dynamic> formDataMap = {
      "title": title,
      "message": description,
      "email": email,
    };

    if (imagePath.isNotEmpty) {
      final file = File(imagePath);
      final type = await _imageTypeOf(file);

      formDataMap['file'] = await MultipartFile.fromFile(
        imagePath,
        filename: 'file_support.${type.subtype}',
        contentType: type,
      );
    }

    final FormData formData = FormData.fromMap(formDataMap);

    final response = await _apiService.dio.post(
      APIEndpoints.SUPPORT_URL,
      data: formData,
    );

    return response;
  }
}

/// The media type of [file], read from its first bytes.
///
/// Attachments used to be announced as `image/png` whatever they actually
/// were. The picker's cropper returns a JPEG, and on iOS the camera roll
/// commonly returns HEIC, so the declared type was usually a lie — which the
/// gateway rejects outright now that it checks the bytes against the
/// declaration.
///
/// Sniffing the signature rather than trusting the file extension keeps this
/// honest even when the extension is wrong, which it often is after cropping.
Future<MediaType> _imageTypeOf(File file) async {
  final header = await file.openRead(0, 12).first;

  bool startsWith(List<int> signature) {
    if (header.length < signature.length) return false;
    for (var i = 0; i < signature.length; i++) {
      if (header[i] != signature[i]) return false;
    }
    return true;
  }

  if (startsWith([0xFF, 0xD8, 0xFF])) return MediaType('image', 'jpeg');
  if (startsWith([0x89, 0x50, 0x4E, 0x47])) return MediaType('image', 'png');
  if (startsWith([0x47, 0x49, 0x46, 0x38])) return MediaType('image', 'gif');

  // RIFF....WEBP
  if (startsWith([0x52, 0x49, 0x46, 0x46]) &&
      header.length >= 12 &&
      header[8] == 0x57 &&
      header[9] == 0x45 &&
      header[10] == 0x42 &&
      header[11] == 0x50) {
    return MediaType('image', 'webp');
  }

  // ....ftyp, then a HEIF/HEIC brand.
  if (header.length >= 12 &&
      header[4] == 0x66 &&
      header[5] == 0x74 &&
      header[6] == 0x79 &&
      header[7] == 0x70) {
    return MediaType('image', 'heic');
  }

  // Nothing recognised: fall back to the extension the file carries rather
  // than inventing a type, so the gateway's own message explains any refusal.
  final extension = file.path.split('.').last.toLowerCase();
  return MediaType('image', extension.isEmpty ? 'jpeg' : extension);
}
