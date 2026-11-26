import 'package:easy_localization/easy_localization.dart';
import 'package:ec_card_app/src/application/register/register_cubit.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

class DOBFieldWidget extends StatelessWidget {
  const DOBFieldWidget({Key? key, required this.dobController})
      : super(key: key);

  final TextEditingController dobController;
  @override
  Widget build(BuildContext context) {
    appLog("----- controller value: $dobController");
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: dobController,
              focusNode: AlwaysDisabledFocusNode(),
              autocorrect: false,
              enableSuggestions: false,
              textInputAction: TextInputAction.done,
              maxLength: 10,
              keyboardType: TextInputType.phone,
              cursorColor: primaryBackgroundColor,
              style: TextStyle(color: primaryBackgroundColor),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () async {
                    final DateTime? startDate = await showDatePicker(
                      context: context,
                      initialDate: state.dob.isNotEmpty
                          ? DateTime.parse(state.dob)
                          : DateTime.now().add(const Duration(seconds: 1)),
                      firstDate: DateTime(1970),
                      lastDate: DateTime.now().add(const Duration(hours: 1)),
                    );

                    if (startDate != null) {
                      context
                          .read<RegisterCubit>()
                          .onDobChanged(startDate.toString());
                    }

                    // context.read<RegisterCubit>().dobChanged(_dobController);
                  },
                  // The icon alone gives the button no name, so a screen
                  // reader announced only "double-tap to activate".
                  icon: Icon(
                    Icons.calendar_today_outlined,
                    semanticLabel:
                        AppLocalizations.of(context)!.chooseDateOfBirth,
                  ),
                  iconSize: 20.sp,
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
                label: Text(AppLocalizations.of(context)!.dob),
                labelStyle: TextStyle(color: primaryBackgroundColor),
                hintText: AppLocalizations.of(context)!.dob_placeholder,
                fillColor: primaryCyan,
                hintStyle: TextStyle(color: Colors.grey[400]),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.cyan, width: 1),
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
            ),
            Visibility(
              visible: state.showDobError,
              child: Padding(
                padding: EdgeInsetsDirectional.only(start: 20.w, top: 20.h),
                child: Text(
                  AppLocalizations.of(context)!.field_is_mandatory,
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
