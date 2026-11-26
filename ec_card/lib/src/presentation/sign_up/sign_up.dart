import 'package:ec_card_app/src/application/register/register_cubit.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/res/app_languages.dart';
import 'package:ec_card_app/src/presentation/core/widgets/back_icon.dart';
import 'package:ec_card_app/src/presentation/core/widgets/button.dart';
import 'package:ec_card_app/src/presentation/login/login.dart';
import 'package:ec_card_app/src/presentation/otp/otp_screen.dart';
import 'package:ec_card_app/src/presentation/sign_up/widgets/language_selector_widget.dart';
import 'package:ec_card_app/src/presentation/sign_up/widgets/signup_field.dart';
import 'package:ec_card_app/src/presentation/utils/extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/presentation/core/locale_provider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static const routeName = "/sign-up";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegisterCubit>(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          state.phoneValidationFailureOrSuccess?.map((either) => either.fold(
                  (appError) => appError.maybeMap(
                        authErrors: (e) => e.loginError.maybeMap(
                          invalidPhoneNumber: (_) {},
                          unknownError: (value) => context.showError(appError),
                          orElse: () => context.showError(appError),
                        ),
                        orElse: () => context.showError(appError),
                      ), (r) {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) =>
                        OTPScreen(calledFrom: 'register', phoneNumber: r.value),
                  ),
                );
              }));
        },
        builder: (context, state) {
          return PopScope(
            canPop: false,
            onPopInvokedWithResult: (didPop, result) {
              if (didPop) {
                return;
              }
              Navigator.popUntil(
                  context, ModalRoute.withName(LoginPage.routeName));
            },
            child: Scaffold(
              appBar: AppBar(
                toolbarHeight: 60,
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                leading: IconButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
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
                title: Text(AppLocalizations.of(context)!.register_no),
              ),
              body: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final bottomInset = MediaQuery.of(context).viewInsets.bottom;
                    return SingleChildScrollView(
                      padding: EdgeInsets.only(bottom: bottomInset + 16.h),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(minHeight: constraints.maxHeight),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 30.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.register_text_one,
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                        fontSize: 17, color: primaryBackgroundColor),
                              ),
                              const SizedBox(height: 17),
                              Text(
                                AppLocalizations.of(context)!.register_text_two,
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                        fontSize: 17, color: primaryBackgroundColor),
                              ),
                              const SizedBox(height: 20),
                              if (kLanguageSelectionEnabled) ...[
                                LanguageSelectorWidget(
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
                                const SizedBox(height: 20),
                              ],
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SignUpFieldWidget(
                                    label: AppLocalizations.of(context)!.mobile_no,
                                    placeholder:
                                        AppLocalizations.of(context)!.enter_mobile_no,
                                    inputType: TextInputType.phone,
                                    maxLength: state.phoneNumber != null &&
                                            state.phoneNumber!.value.isNotEmpty
                                        ? state.phoneNumber!.value.startsWith("0")
                                            ? 11
                                            : 10
                                        : 10,
                                    onChanged: (val) {
                                      context
                                          .read<RegisterCubit>()
                                          .phoneFieldValueChanged(val);
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(height: 40),
                              state.isLoading
                                  ? const CircularProgressIndicator(
                                      color: primaryCyan,
                                    )
                                  : ButtonWidget(
                                      title: AppLocalizations.of(context)!.register,
                                      onPressed: () {
                                        state.phoneNumber!.value.isNotEmpty
                                            ? context
                                                .read<RegisterCubit>()
                                                .registerButtonClicked()
                                            : null;
                                      })
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
