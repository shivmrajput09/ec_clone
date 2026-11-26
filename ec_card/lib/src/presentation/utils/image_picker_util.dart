import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

class ImagePickerUtil {
  ImagePickerUtil._privateConstructor();

  static final ImagePickerUtil instance = ImagePickerUtil._privateConstructor();

  final _imagePicker = ImagePicker();

  Future<String> getImage({
    ImageSource source = ImageSource.gallery,
    // CameraDevice cameraSide = CameraDevice.rear,
  }) async {
    final image = await _imagePicker.pickImage(
        source: source,
        // preferredCameraDevice: cameraSide,
        imageQuality: 75,
        maxHeight: 1024,
        maxWidth: 1024);

    appLog("---------- Image Picker Utils ------> ${image!.path}");

    return image.path;
  }
}
