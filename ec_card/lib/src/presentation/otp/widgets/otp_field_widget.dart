import 'package:ec_card_app/src/application/otp/otp_cubit.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/presentation/core/widgets/otp_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpFieldWidget extends StatelessWidget {
  const OtpFieldWidget({Key? key})
      : super(key: const Key("opt-screen-otp-entry-field"));
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OtpCubit, OtpState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          height: 50.h,
          child: OtpInputField(
            // Not `.otp`: the screen's own title already announces "OTP", and
            // two elements sharing a name on one screen cannot be told apart
            // by ear or referred to individually. `phone_verification` is
            // already translated in every locale, so this needs no new
            // strings — though a purpose-written "Enter the 6-digit code"
            // would read better if translations are ever commissioned.
            semanticLabel: AppLocalizations.of(context)!.phone_verification,
            autoFocus: true,
            onChanged: (String otp) {
              context.read<OtpCubit>().otpChanged(otp);
            },
          ),
        );
      },
    );
  }
}
