import 'package:easy_localization/easy_localization.dart';
import 'package:ec_card_app/src/application/register/register_cubit.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/back_icon.dart';
import 'package:ec_card_app/src/presentation/login/login.dart';
import 'package:ec_card_app/src/presentation/sign_up/registration_complete.dart';
import 'package:ec_card_app/src/presentation/sign_up/widgets/button_row.dart';
import 'package:ec_card_app/src/presentation/sign_up/widgets/dob_field.dart';
import 'package:ec_card_app/src/presentation/sign_up/widgets/gender_chip_widget.dart';
import 'package:ec_card_app/src/presentation/sign_up/widgets/phone_field.dart';
import 'package:ec_card_app/src/presentation/sign_up/widgets/signup_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/extension.dart';

import 'package:ec_card_app/src/localization/app_localizations.dart';

class SignUpDetailScreen extends StatelessWidget {
  const SignUpDetailScreen({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  static const routeName = "/signup-detail";

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegisterCubit>(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          state.registrationFailureOrSuccess
              ?.map((either) => either.fold((appError) {
                    appError.maybeMap(
                      orElse: () => context.showError(appError),
                    );
                  }
                      //  => appError.maybeMap(
                      //       unexpectedError: (e) => context.showError(e),
                      //       orElse: () => context.showError(appError),
                      //     )
                      , (r) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => RegistrationCompleteScreen(
                                  message: r,
                                )),
                        (route) => false);
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
                title: Text(AppLocalizations.of(context)!.register),
              ),
              body: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40.w, vertical: 40.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FixedPhoneFieldWidget(
                                phoneNumber: phoneNumber,
                              ),
                              const SizedBox(height: 40),
                              // PostCode TextField
                              SignUpFieldWidget(
                                label: AppLocalizations.of(context)!.postcode,
                                placeholder: AppLocalizations.of(context)!
                                    .enter_postcode,
                                onChanged: (val) {
                                  context
                                      .read<RegisterCubit>()
                                      .postCodeChanged(val);
                                },
                              ),
                              Visibility(
                                visible: state.showPostcodeError,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      start: 20.w, top: 20.h),
                                  child: Text(
                                    AppLocalizations.of(context)!.field_is_mandatory,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 12),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30),
                              //DOB TextField
                              DOBFieldWidget(
                                dobController: TextEditingController(
                                    text: state.dob.isEmpty
                                        ? "--/--/----"
                                        : DateFormat(
                                                "d/MM/yyyy",
                                                safeDateFormatLocale(
                                                    Localizations.localeOf(
                                                            context)
                                                        .languageCode))
                                            .format(DateTime.parse(state.dob))),
                              ),
                              // const SizedBox(height: 10),
                              // const DOBBox(),
                              const SizedBox(height: 30),
                              //Error Text
                              Visibility(
                                visible: state.verifyDOBError,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
                                      child: Text(
                                        state.verifyDOBErrorMessage,
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .error,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 30),
                                  ],
                                ),
                              ),
                              //Access Code
                              Visibility(
                                visible: state.showAccessCodeField,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SignUpFieldWidget(
                                      label: AppLocalizations.of(context)!
                                          .access_code,
                                      placeholder: AppLocalizations.of(context)!
                                          .enter_access_code,
                                      onChanged: (val) {
                                        context
                                            .read<RegisterCubit>()
                                            .accessCodeChanged(val);
                                      },
                                    ),
                                    Visibility(
                                      visible: state.showAccessCodeError,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 20.w, top: 10.w),
                                        child: Text(
                                          AppLocalizations.of(context)!.field_is_mandatory,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 12),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 30),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        SizedBox(
                                          width: state.showUnlimitedOption
                                              ? MediaQuery.sizeOf(context)
                                                          .width /
                                                      2 -
                                                  54
                                              : MediaQuery.sizeOf(context)
                                                      .width /
                                                  1.28,
                                          child: SignUpFieldWidget(
                                            label: AppLocalizations.of(context)!.transactions,
                                            enabled:
                                                !state.isMaxTransactionsAllowed,
                                            placeholder: "0",
                                            inputType: TextInputType.number,
                                            onChanged: (val) {
                                              context
                                                  .read<RegisterCubit>()
                                                  .onTransactionsChanged(val);
                                            },
                                          ),
                                        ),
                                        if (state.showUnlimitedOption) ...[
                                          SizedBox(width: 12.w),
                                          Expanded(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Checkbox(
                                                value: state
                                                    .isMaxTransactionsAllowed,
                                                onChanged: (val) {
                                                  context
                                                      .read<RegisterCubit>()
                                                      .onMaxTransactionsUpdated(
                                                          val!);
                                                },
                                                side: const BorderSide(
                                                    width: 2,
                                                    color: Colors.grey),
                                                fillColor: WidgetStatePropertyAll<
                                                    Color>(state
                                                        .isMaxTransactionsAllowed
                                                    ? primaryBackgroundColor
                                                    : Colors.white),
                                                checkColor: Colors.white,
                                              ),
                                              Expanded(
                                                child: Text(
                                                    AppLocalizations.of(context)!.allowUnlimitedTransactions,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium
                                                        ?.copyWith(
                                                          fontSize: 14,
                                                          color:
                                                              primaryBackgroundColor,
                                                        )),
                                              )
                                            ],
                                          )),
                                        ]
                                      ],
                                    ),
                                    Visibility(
                                      visible: state.showTransactionsError,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 20.w, top: 10.w),
                                        child: Text(
                                          AppLocalizations.of(context)!.field_is_mandatory,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 12),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 30),
                                  ],
                                ),
                              ),

                              //Gender Choice
                              const GenderChipWidget(),
                            ],
                          ),
                        ),
                        state.isLoading
                            ? const CircularProgressIndicator(
                                color: primaryCyan,
                              )
                            : ButtonsRowWidget(
                                secondButtonTitle:
                                    AppLocalizations.of(context)!.save_details,
                                onCancelPressed: () {
                                  Navigator.popUntil(
                                      context, (route) => route.isFirst);
                                },
                                onSubmitPressed: () {
                                  FocusScope.of(context).unfocus();
                                  (!state.showPostcodeError &&
                                          !state.showGenderError &&
                                          !state.showDobError)
                                      ? context
                                          .read<RegisterCubit>()
                                          .saveDetailsButtonClicked(phoneNumber)
                                      : null;
                                },
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
