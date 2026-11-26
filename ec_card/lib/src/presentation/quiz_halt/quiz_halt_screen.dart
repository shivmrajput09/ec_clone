import 'package:ec_card_app/src/application/quiz/video/video_cubit.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/home/home_page.dart';
import 'package:ec_card_app/src/presentation/sign_up/widgets/signup_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/extension.dart';

class QuizHaltPage extends StatelessWidget {
  const QuizHaltPage(
      {Key? key,
      required this.title,
      required this.message,
      required this.askTransactionsAllowed})
      : super(key: key);

  final String title;
  final String message;
  final Map<String, dynamic> askTransactionsAllowed;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<VideoCubit>()
        ..updateTransactionPermission(askTransactionsAllowed),
      child: BlocConsumer<VideoCubit, VideoState>(
        listener: (context, state) {
          state.quizByPassFailureOrSuccess?.map((a) => a.fold((l) {
                context.showError(l);
              }, (r) {
                Navigator.pushAndRemoveUntil(
                    context,
                    CupertinoPageRoute(builder: (contex) => const HomePage()),
                    (route) => false);
              }));
        },
        builder: (context, state) {
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 60.h,
                  horizontal: 20.w,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 12.h),
                    Text(
                      title.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              color: primaryCyanText,
                              fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 30.h),
                    Text(
                      message,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height / 8.5),
                    Text(
                      AppLocalizations.of(context)!.enter_access_code,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: primaryCyanText),
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: SignUpFieldWidget(
                        label: AppLocalizations.of(context)!.access_code,
                        placeholder:
                            AppLocalizations.of(context)!.enter_access_code,
                        inputType: TextInputType.number,
                        maxLength: 6,
                        onChanged: (val) {
                          context.read<VideoCubit>().onAccessCodeChanged(val);
                        },
                      ),
                    ),
                    SizedBox(height: 20.h),
                    if (askTransactionsAllowed['show'] == true)
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            width: askTransactionsAllowed['showUnlimitedOption']
                                ? MediaQuery.sizeOf(context).width / 2 - 20
                                : MediaQuery.sizeOf(context).width / 1.125,
                            child: SignUpFieldWidget(
                              label: AppLocalizations.of(context)!.transactions,
                              placeholder: "0",
                              enabled: !state.isMaxTransactionsAllowed,
                              inputType: TextInputType.number,
                              onChanged: (val) {
                                context
                                    .read<VideoCubit>()
                                    .onTransactionsChanged(val);
                              },
                            ),
                          ),
                          if (askTransactionsAllowed['showUnlimitedOption'] ==
                              true) ...[
                            SizedBox(width: 12.w),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Checkbox(
                                  value: state.isMaxTransactionsAllowed,
                                  onChanged: (val) {
                                    context
                                        .read<VideoCubit>()
                                        .onMaxTransactionsUpdated(val!);
                                  },
                                  side: const BorderSide(
                                      width: 2, color: Colors.grey),
                                  fillColor: WidgetStatePropertyAll<Color>(
                                      state.isMaxTransactionsAllowed
                                          ? primaryBackgroundColor
                                          : Colors.white),
                                  checkColor: Colors.white,
                                ),
                                Expanded(
                                  child: Text(
                                      AppLocalizations.of(context)!
                                          .allowUnlimitedTransactions,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            fontSize: 14,
                                            color: primaryBackgroundColor,
                                          )),
                                )
                              ],
                            )),
                          ]
                        ],
                      ),
                    const Spacer(),
                    state.isAccessCodeSubmitLoading
                        ? const CircularProgressIndicator(color: primaryCyan)
                        : SizedBox(
                            height: 48.h,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed:
                                  RegExp(r'^\d{6}$').hasMatch(state.accessCode)
                                      ? () {
                                          FocusScope.of(context).unfocus();
                                          context
                                              .read<VideoCubit>()
                                              .onAccessCodeSubmitted();
                                        }
                                      : null,
                              child: Text(
                                AppLocalizations.of(context)!.submit,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(
                                        fontSize: 18, color: Colors.white),
                              ),
                              style: ButtonStyle(
                                padding: WidgetStateProperty.all<
                                        EdgeInsetsGeometry?>(
                                    const EdgeInsets.symmetric(horizontal: 40)),
                                backgroundColor: RegExp(r'^\d{6}$')
                                        .hasMatch(state.accessCode)
                                    ? WidgetStateProperty.all<Color?>(
                                        primaryCyan)
                                    : WidgetStateProperty.all<Color?>(
                                        Colors.grey[300]),
                                shape: WidgetStateProperty.all<
                                        RoundedRectangleBorder?>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.r))),
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
