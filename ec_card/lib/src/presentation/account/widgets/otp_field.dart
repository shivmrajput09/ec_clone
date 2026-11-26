import 'package:ec_card_app/src/application/loading_status/loading_status_cubit.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/presentation/core/widgets/otp_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OTPWidget extends StatelessWidget {
  const OTPWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadingStatusCubit, LoadingStatusState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          height: 50.h,
          child: OtpInputField(
            semanticLabel:
                AppLocalizations.of(context)!.enter_otp_delete_account,
            onChanged: (String otp) {
              context.read<LoadingStatusCubit>().otpChanged(otp);
            },
          ),
        );
      },
    );
  }
}
