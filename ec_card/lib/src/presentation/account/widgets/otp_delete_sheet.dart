import 'package:ec_card_app/src/application/loading_status/loading_status_cubit.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/presentation/account/widgets/otp_field.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/button.dart';
import 'package:ec_card_app/src/presentation/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import '../../utils/extension.dart';

class OTPDeleteSheet extends StatelessWidget {
  const OTPDeleteSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoadingStatusCubit>()..startDeletionProcess(),
      child: BlocConsumer<LoadingStatusCubit, LoadingStatusState>(
        listener: (context, state) {
          state.deleteFailureOrSuccessOption.map((either) => either.fold((l) {
                context.showError(l);
              }, (r) {
                Navigator.pushAndRemoveUntil(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                    (route) => false);
              }));
        },
        builder: (context, state) {
          return Padding(
            // Keeps the sheet's content, including the OTP field, shifted
            // above the on-screen keyboard instead of sizing the sheet to a
            // fixed near-full-screen height that pushes the field off-screen
            // once the keyboard opens.
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Container(
                decoration: const BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.h, horizontal: 40.h),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 40.h),
                        Text(
                          AppLocalizations.of(context)!.enter_otp_delete_account,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(
                          height: 60.h,
                        ),
                        const OTPWidget(),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 30.h),
                          child: Text(
                            AppLocalizations.of(context)!.delete_confirm_warning,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        state.selfDeletionProcessStarted
                            ? state.otpLoading
                                ? const CircularProgressIndicator(
                                    color: primaryCyan,
                                  )
                                : ButtonWidget(
                                    title: AppLocalizations.of(context)!.submit,
                                    onPressed: () {
                                      context
                                          .read<LoadingStatusCubit>()
                                          .confirmDeletionProcess('otp');
                                    },
                                  )
                            : const CircularProgressIndicator(
                                color: primaryCyan,
                              ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
