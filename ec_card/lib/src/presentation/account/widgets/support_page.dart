import 'dart:io';

import 'package:ec_card_app/src/application/account/account_cubit.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/presentation/account/widgets/image_picker.dart';
import 'package:ec_card_app/src/presentation/account/widgets/support_header.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../utils/extension.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AccountCubit>(),
      child: BlocConsumer<AccountCubit, AccountState>(
        listener: (context, state) {
          state.supportSubmitFailureOrSuccess.map((a) => a.fold((l) {
                context.showError(l);
              }, (r) {
                Fluttertoast.showToast(
                    msg: AppLocalizations.of(context)!.submitted_successfully);
                Navigator.pop(context);
              }));
        },
        builder: (context, state) {
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Scaffold(
              appBar: CustomAppBar(
                  appBar: AppBar(),
                  title: AppLocalizations.of(context)!.support),
              body: SingleChildScrollView(
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Text(
                            AppLocalizations.of(context)!.contact_information,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade700),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        const SupportHeaderWidget(),
                        SizedBox(height: 24.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Text(
                            AppLocalizations.of(context)!.send_support_message,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade700),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 4,
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 10.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    TextField(
                                      key: const Key("title-textfield"),
                                      // controller: titleController,
                                      maxLength: 100,
                                      keyboardType: TextInputType.emailAddress,
                                      textInputAction: TextInputAction.next,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(
                                              fontSize: 14.sp,
                                              color: black,
                                              fontWeight: FontWeight.w500),
                                      decoration: InputDecoration(
                                        counterText:
                                            "", //used to hide maxlength counter
                                        hintText: AppLocalizations.of(context)!
                                            .title_hint,
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .titleLarge!
                                            .copyWith(
                                                fontSize: 14.sp,
                                                color: Colors.black54),
                                        filled: true,
                                        fillColor: textFieldFillColor,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                            borderSide: BorderSide.none),
                                        errorStyle: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(color: errorColor),
                                        errorText: state.titleError
                                            ? AppLocalizations.of(context)!
                                                .title_cannot_be_empty
                                            : null,
                                      ),
                                      onChanged: (val) {
                                        context
                                            .read<AccountCubit>()
                                            .titleEntered(val);
                                      },
                                    ),
                                    SizedBox(height: 20.h),
                                    TextField(
                                        key: const Key("description-textfield"),
                                        // controller: descriptionController,
                                        keyboardType: TextInputType.multiline,
                                        maxLines: 5,
                                        maxLength: 300,
                                        textInputAction:
                                            TextInputAction.newline,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              fontSize: 14.sp,
                                              color: black,
                                            ),
                                        decoration: InputDecoration(
                                          // counterText:
                                          //     "", //used to hide maxlength counter
                                          hintText:
                                              AppLocalizations.of(context)!
                                                  .description_hint,
                                          hintStyle: Theme.of(context)
                                              .textTheme
                                              .titleLarge!
                                              .copyWith(
                                                  fontSize: 14.sp,
                                                  color: Colors.black54),
                                          filled: true,
                                          fillColor: textFieldFillColor,
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.r),
                                              borderSide: BorderSide.none),
                                          errorStyle: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(color: errorColor),
                                          errorText: state.descriptionError
                                              ? AppLocalizations.of(context)!
                                                  .description_cannot_be_empty
                                              : null,
                                        ),
                                        onChanged: (val) {
                                          context
                                              .read<AccountCubit>()
                                              .descriptionEntered(val);
                                        }),
                                    SizedBox(height: 20.h),
                                    TextField(
                                      key: const Key("email-textfield"),
                                      maxLength: 100,
                                      keyboardType: TextInputType.emailAddress,
                                      textInputAction: TextInputAction.next,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(
                                              fontSize: 14.sp,
                                              color: black,
                                              fontWeight: FontWeight.w600),
                                      decoration: InputDecoration(
                                        counterText:
                                            "", //used to hide maxlength counter
                                        hintText: AppLocalizations.of(context)!
                                            .email_hint,
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .titleLarge!
                                            .copyWith(
                                                fontSize: 14.sp,
                                                color: Colors.black54),
                                        filled: true,
                                        fillColor: textFieldFillColor,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                            borderSide: BorderSide.none),
                                        errorStyle: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(color: errorColor),
                                        errorText: state.emailError
                                            ? AppLocalizations.of(context)!
                                                .email_invalid
                                            : null,
                                      ),
                                      onChanged: (val) {
                                        context
                                            .read<AccountCubit>()
                                            .emailChanged(val);
                                      },
                                    ),
                                    SizedBox(height: 20.h),
                                    InkWell(
                                      onTap: () {
                                        FocusScope.of(context).unfocus();
                                        context.showBottomSheet(
                                            child: ImagePickerCropper(
                                          showDelete: state.imagePath.isEmpty
                                              ? false
                                              : true,
                                          deleteImage: () {
                                            context
                                                .read<AccountCubit>()
                                                .deleteImage();
                                            Navigator.pop(context);
                                          },
                                          imagePath: (profilePicturePath) {
                                            context
                                                .read<AccountCubit>()
                                                .setImage(profilePicturePath);
                                          },
                                        ));
                                      },
                                      child: state.imagePath.isNotEmpty
                                          ? ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.file(
                                                File(state.imagePath),
                                                semanticLabel:
                                                    AppLocalizations.of(context)!
                                                        .attachedImage,
                                                fit: BoxFit.cover,
                                                height: 250.h,
                                                width: double.infinity,
                                              ),
                                            )
                                          : ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              leading:
                                                  const Icon(Icons.attach_file),
                                              title: Text(
                                                AppLocalizations.of(context)!
                                                    .add_attachment,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleLarge
                                                    ?.copyWith(fontSize: 14.sp),
                                              ),
                                            ),
                                    ),
                                  ])),
                        ),
                        SizedBox(height: 30.h),
                        // Wrap centers both buttons and lets them flow onto a
                        // second line for longer translated labels, instead of
                        // left-aligning them the way ButtonBar did.
                        Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 16.w,
                          runSpacing: 12.h,
                          children: [
                            //close button
                            ElevatedButton(
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all<
                                          EdgeInsetsGeometry?>(
                                      const EdgeInsets.symmetric(
                                          horizontal: 40)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder?>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: const BorderSide(
                                        width: 1, color: Colors.grey),
                                  )),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color?>(
                                          Colors.grey[200])),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                AppLocalizations.of(context)!.cancel,
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ),
                            //submit button
                            ElevatedButton(
                              onPressed: state.title.isNotEmpty &&
                                      state.description.isNotEmpty &&
                                      state.email.isNotEmpty &&
                                      !state.emailError
                                  ? () {
                                      context
                                          .read<AccountCubit>()
                                          .submitButtonPressed();
                                    }
                                  : null,
                              child: state.isLoading
                                  ? CircularProgressIndicator(
                                      color: white,
                                      semanticsLabel:
                                          AppLocalizations.of(context)!.submit)
                                  : Text(
                                      AppLocalizations.of(context)!.submit,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(
                                              fontSize: 18,
                                              color: Colors.white),
                                    ),
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<
                                        EdgeInsetsGeometry?>(
                                    const EdgeInsets.symmetric(horizontal: 40)),
                                backgroundColor:
                                    MaterialStateProperty.all<Color?>(
                                        state.title.isNotEmpty &&
                                                state.description.isNotEmpty &&
                                                state.email.isNotEmpty &&
                                                !state.emailError
                                            ? primaryCyan
                                            : Colors.grey[300]),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder?>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.r))),
                              ),
                            ),
                          ],
                        )
                        /*Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 48,
                                  child: ElevatedButton(
                                    onPressed: state.title.isNotEmpty &&
                                            state.description.isNotEmpty &&
                                            state.email.isNotEmpty
                                        ? () {
                                            context
                                                .read<AccountCubit>()
                                                .submitButtonPressed();
                                          }
                                        : null,
                                    child: Text(
                                      AppLocalizations.of(context)!.submit,
                                      style: Theme.of(context)
                                          .textTheme
                                          .button
                                          ?.copyWith(
                                              fontSize: 18,
                                              color: Colors.white),
                                    ),
                                    style: ButtonStyle(
                                      padding: MaterialStateProperty.all<
                                              EdgeInsetsGeometry?>(
                                          const EdgeInsets.symmetric(
                                              horizontal: 40)),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color?>(
                                              state.title.isNotEmpty &&
                                                      state.description
                                                          .isNotEmpty &&
                                                      state.email.isNotEmpty
                                                  ? primaryCyan
                                                  : Colors.grey[300]),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder?>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.r))),
                                    ),
                                  ),
                                )
                                
                                )*/
                      ],
                    )),
              ),
            ),
          );
        },
      ),
    );
  }
}
