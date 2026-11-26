import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:ec_card_app/src/presentation/utils/image_picker_util.dart';
import 'package:flutter/material.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:permission_handler/permission_handler.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

class ImagePickerCropper extends StatelessWidget {
  const ImagePickerCropper({
    Key? key,
    this.imagePath,
    this.deleteImage,
    this.openGallery,
    required this.showDelete,
  }) : super(key: const Key('image-picker-cropper'));

  final void Function(String)? imagePath;
  final VoidCallback? deleteImage;
  final VoidCallback? openGallery;
  final bool showDelete;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 170.h,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: ScreenUtil().screenWidth,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              key: const Key('gallery-button'),
              onTap: () async {
                DeviceInfoPlugin plugin = DeviceInfoPlugin();
                int androidVersion = 0;

                if (Platform.isAndroid) {
                  AndroidDeviceInfo android = await plugin.androidInfo;
                  androidVersion = android.version.sdkInt;
                }

                // From Android 13 the plugin uses the system photo picker,
                // which grants access to the chosen file only. Requesting
                // READ_MEDIA_IMAGES is therefore unnecessary, and Google Play
                // policy disallows declaring it when a system picker suffices,
                // so the gate is skipped and the picker asks for itself.
                final bool usesSystemPicker =
                    Platform.isAndroid && androidVersion >= 33;

                final PermissionStatus status = usesSystemPicker
                    ? PermissionStatus.granted
                    : Platform.isAndroid
                        ? await Permission.storage.request()
                        : await Permission.photos.request();

                if (status.isGranted) {
                  if (openGallery != null) {
                    openGallery!();
                  } else {
                    final imageSrcPath =
                        await ImagePickerUtil.instance.getImage();

                    appLog(
                        "----------Image Picker: Selected Image Path from Gallery -----> $imageSrcPath");
                    if (imageSrcPath.isNotEmpty) {
                      imagePath!(imageSrcPath);
                      Navigator.pop(context);
                    }
                  }
                } else if (status.isDenied) {
                  await Permission.storage.request();
                } else {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(AppLocalizations.of(context)!.enable_permission),
                          content: Text(
                              AppLocalizations.of(context)!.allow_permission),
                          actions: [
                            TextButton(
                                onPressed: () async {
                                  await openAppSettings();
                                },
                                child: Text(AppLocalizations.of(context)!.open_settings))
                          ],
                        );
                      });
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.w, color: Colors.grey.shade400),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.r),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.photo,
                      size: 30,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      AppLocalizations.of(context)!.gallery,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              key: const Key('delete-image-button'),
              onTap: !showDelete ? null : deleteImage,
              child: Opacity(
                // onTap is already gated by showDelete; an InkWell gives no
                // built-in disabled look like IconButton does, so without
                // this the delete button reads as active even with no
                // attachment selected.
                opacity: showDelete ? 1.0 : 0.4,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 1.w, color: Colors.grey.shade400),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.r),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.delete_outline,
                        size: 30,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        AppLocalizations.of(context)!.delete,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
