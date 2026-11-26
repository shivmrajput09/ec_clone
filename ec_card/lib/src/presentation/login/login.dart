import 'package:ec_card_app/src/application/login/login_cubit.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/res/app_languages.dart';
import 'package:ec_card_app/src/presentation/core/widgets/button.dart';
import 'package:ec_card_app/src/presentation/login/widgets/login_field.dart';
import 'package:ec_card_app/src/presentation/otp/otp_screen.dart';
import 'package:ec_card_app/src/presentation/sign_up/terms_conditions.dart';
import 'package:ec_card_app/src/presentation/sign_up/widgets/language_selector_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/presentation/core/locale_provider.dart';
import '../utils/extension.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const routeName = "/login";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginCubit>(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          state.phoneValidationFailureOrSuccess?.map((either) => either.fold(
                  (appError) => appError.maybeMap(
                        authErrors: (e) => e.loginError.maybeMap(
                          invalidPhoneNumber: (_) {},
                          orElse: () => context.showError(appError),
                        ),
                        orElse: () => context.showError(appError),
                      ), (r) {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) =>
                        OTPScreen(calledFrom: 'login', phoneNumber: r.value),
                  ),
                );
              }));
        },
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: GestureDetector(
              // Tapping the background only dismisses the keyboard. Left in the
              // semantics tree, the whole screen became one clickable element
              // that took its name from the "New User?" text inside it.
              excludeFromSemantics: true,
              onTap: () => FocusScope.of(context).unfocus(),
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: primaryBackgroundColor,
                    image: const DecorationImage(
                      image: AssetImage('assets/images/backgroundSuccess.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  // color: primaryBackgroundColor,
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.w, vertical: 80.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          height: 150.h,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(height: 80.h),
                        if (kLanguageSelectionEnabled) ...[
                          LanguageSelectorWidget(
                            textColor: Colors.white,
                            borderColor: primaryCyan,
                            initialValue: context
                                .watch<LocaleProvider>()
                                .locale
                                .languageCode,
                            onChanged: (newLocale) {
                              context
                                  .read<LocaleProvider>()
                                  .setLocale(newLocale);
                            },
                            languages: kSupportedLanguages,
                          ),
                          SizedBox(height: 24.h),
                        ],
                        const LoginFieldWidget(),
                        const SizedBox(height: 40),
                        state.isLoading
                            ? const CircularProgressIndicator(
                                color: primaryCyan,
                              )
                            : ButtonWidget(
                                title: AppLocalizations.of(context)!.login,
                                onPressed: () {
                                  state.phoneNumber!.value.isNotEmpty
                                      ? context
                                          .read<LoginCubit>()
                                          .nextButtonClicked()
                                      : null;
                                }),
                        SizedBox(height: 24.h),
                        Wrap(
                          children: [
                            Text(
                              AppLocalizations.of(context)!.new_user,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    // Unset, this defaults to the theme's
                                    // titleLarge color — plain black, which
                                    // reads at only 3.06:1 against this
                                    // screen's dark background (under the
                                    // 4.5:1 WCAG minimum). Match the rest
                                    // of the screen's white-on-dark text.
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                            ),
                            InkWell(
                              onTap: () {
                                //show registration dialog
                                showCupertinoDialog(
                                  barrierDismissible: true,
                                  context: context,
                                  builder: (context) {
                                    return CupertinoAlertDialog(
                                      title: Text(AppLocalizations.of(context)!
                                          .welcomeToEcCard),
                                      content: Padding(
                                        padding: EdgeInsets.only(top: 12.sp),
                                        child: Text(
                                            AppLocalizations.of(context)!
                                                .registrationDisclaimer),
                                      ),
                                      actions: [
                                        CupertinoDialogAction(
                                          isDestructiveAction: true,
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                              AppLocalizations.of(context)!
                                                  .cancel),
                                        ),
                                        CupertinoDialogAction(
                                          isDestructiveAction: false,
                                          onPressed: () {
                                            Navigator.pop(context);
                                            Navigator.push(
                                                context,
                                                CupertinoPageRoute(
                                                    builder: (context) =>
                                                        const TermsConditionsPage()));
                                          },
                                          child: Text(
                                              AppLocalizations.of(context)!
                                                  .continue_button),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Text(
                                AppLocalizations.of(context)!.register_now,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                      // primaryCyan itself only reads at
                                      // 2.99:1 against this screen's dark
                                      // background, under the 4.5:1 WCAG
                                      // minimum for text.
                                      color: primaryCyanTextOnDark,
                                      fontSize: 16,
                                    ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
            ),
          );
        },
      ),
    );
  }
}
