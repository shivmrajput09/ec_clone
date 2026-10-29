import 'package:ec_card_app/src/application/login/login_cubit.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';

class LoginFieldWidget extends StatelessWidget {
  const LoginFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tried wrapping this in MergeSemantics(Semantics(label: ...))
            // to give the Android node a non-empty content-desc for
            // NAF-style scanners (BrowserStack's "Missing View Type"):
            // confirmed on-device that Flutter's accessibility bridge still
            // routes a text field's label into `hint`, never
            // `content-desc`, no matter how the label is supplied. The
            // wrapper only doubled what TalkBack reads ("Mobile Number,
            // Mobile Number") without changing the scanner result, so it
            // was reverted. See test/login_field_semantics_test.dart.
            TextField(
              // autofocus: true,
              autocorrect: false,
              enableSuggestions: false,
              textInputAction: TextInputAction.done,
              maxLength: state.phoneNumber != null &&
                      state.phoneNumber!.value.isNotEmpty
                  ? state.phoneNumber!.value.startsWith("0")
                      ? 11
                      : 10
                  : 10,
              keyboardType: TextInputType.phone,
              cursorColor: Colors.white,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
                label: Text(AppLocalizations.of(context)!.mobile_no),
                labelStyle: const TextStyle(color: Colors.white),
                hintText: AppLocalizations.of(context)!.enter_mobile_no,
                fillColor: primaryCyan,
                hintStyle: TextStyle(color: Colors.grey[400]),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: primaryCyan, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: primaryCyan, width: 1),
                ),
                counterText: "",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: primaryCyan, width: 1),
                ),
              ),
              onChanged: (val) {
                context.read<LoginCubit>().phoneFieldValueChanged(val);
              },
            ),
            // Visibility(
            //   visible: state.showPhoneFieldError,
            //   child: Padding(
            //     padding: EdgeInsets.only(left: 20.w, top: 20.h),
            //     child: Text(
            //       AppLocalizations.of(context)!.invalidPhoneNumber,
            //       style: const TextStyle(color: Colors.red, fontSize: 12),
            //     ),
            //   ),
            // ),
          ],
        );
      },
    );
  }
}
