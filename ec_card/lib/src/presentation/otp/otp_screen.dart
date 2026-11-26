import 'package:animations/animations.dart';
import 'package:ec_card_app/src/application/otp/otp_cubit.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/back_icon.dart';
import 'package:ec_card_app/src/presentation/core/widgets/button.dart';
import 'package:ec_card_app/src/presentation/loading_status/loading_status_page.dart';
import 'package:ec_card_app/src/presentation/login/login.dart';
import 'package:ec_card_app/src/presentation/otp/widgets/otp_field_widget.dart';
import 'package:ec_card_app/src/presentation/otp/widgets/resend_otp.dart';
import 'package:ec_card_app/src/presentation/sign_up/detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import '../utils/extension.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({
    Key? key,
    required this.calledFrom,
    required this.phoneNumber,
  }) : super(key: key);

  static const routeName = "/otp-screen";

  final String calledFrom;
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)!.settings.arguments as List<String>;

    return BlocProvider(
      create: (context) => getIt<OtpCubit>()..started(phoneNumber: phoneNumber),
      child: BlocConsumer<OtpCubit, OtpState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption
              .map((option) => option.fold((l) => context.showError(l), (r) {
                    calledFrom == 'login'
                        ? Navigator.pushAndRemoveUntil(
                            context,
                            PageRouteBuilder(
                              transitionDuration:
                                  const Duration(milliseconds: 350),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                return SharedAxisTransition(
                                  transitionType:
                                      SharedAxisTransitionType.horizontal,
                                  secondaryAnimation: secondaryAnimation,
                                  animation: animation,
                                  child: child,
                                );
                              },
                              pageBuilder:
                                  (context, animation, secondaryAnimation) {
                                return const LoadingStatusPage();
                              },
                            ),
                            // CupertinoPageRoute(
                            //     builder: (context) =>
                            //         const LoadingStatusPage()),
                            (route) => false)
                        : Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => SignUpDetailScreen(
                                      phoneNumber: phoneNumber,
                                    )));
                  }));
        },
        builder: (context, state) {
          return WillPopScope(
            onWillPop: () async {
              Navigator.popUntil(
                  context, ModalRoute.withName(LoginPage.routeName));

              return true;
            },
            child: Scaffold(
              appBar: AppBar(
                toolbarHeight: 60,
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                leading: IconButton(
                  onPressed: () {
                    Navigator.popUntil(
                        context, ModalRoute.withName(LoginPage.routeName));
                  },
                  icon: BackIcon(
                    semanticLabel:
                        AppLocalizations.of(context)!.backButtonLabel,
                  ),
                  color: primaryBackgroundColor,
                ),
                elevation: 0.5,
                shadowColor: primaryCyan,
                centerTitle: true,
                title: Text(AppLocalizations.of(context)!.otp),
              ),
              body: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                // Scrollable so the content reflows above the keyboard instead
                // of overflowing when the on-screen keypad reduces the viewport.
                child: SingleChildScrollView(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.w, vertical: 30.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          AppLocalizations.of(context)!
                              .otp_has_been_sent_to_the_mobile_number(
                                  // LTR-isolate the number so it renders
                                  // correctly inside RTL (Urdu/Arabic) text.
                                  '\u{2066}$phoneNumber\u{2069}'),
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                  fontSize: 16.0,
                                  color: primaryBackgroundColor),
                        ),
                        const SizedBox(height: 40),
                        const OtpFieldWidget(),
                        const SizedBox(height: 40),
                        ResendOtpButton(phoneNumber: phoneNumber),
                        const SizedBox(height: 40),
                        state.isLoading
                            ? const CircularProgressIndicator(
                                color: primaryCyan)
                            : ButtonWidget(
                                title: AppLocalizations.of(context)!.submit,
                                onPressed: () {
                                  // The code itself is never logged: it is
                                  // a live credential for as long as it lasts.
                                  appLog(
                                      "------ OTP SCREEN: submitting a ${state.smsCode.length}-digit code");
                                  state.smsCode.isNotEmpty
                                      ? context
                                          .read<OtpCubit>()
                                          .verifyOtp(calledFrom)
                                      : null;
                                })
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
