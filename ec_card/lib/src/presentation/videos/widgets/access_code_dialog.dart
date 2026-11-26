import 'package:ec_card_app/src/application/quiz/video/video_cubit.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/home/home_page.dart';
import 'package:ec_card_app/src/presentation/sign_up/widgets/signup_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import '../../utils/extension.dart';

class AccessCodeDialog extends StatelessWidget {
  const AccessCodeDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VideoCubit, VideoState>(
      listener: (context, state) {
        state.quizByPassFailureOrSuccess?.map(
          (a) => a.fold((l) {
            context.showError(l);
          }, (r) {
            Navigator.pushAndRemoveUntil(
                context,
                CupertinoPageRoute(builder: (contex) => const HomePage()),
                (route) => false);
          }),
        );
      },
      builder: (context, state) {
        // A valid access code is exactly 6 digits (matches the web register
        // field's maxLength). Keep the submit button disabled until then.
        final isCodeValid = RegExp(r'^\d{6}$').hasMatch(state.accessCode);
        return AlertDialog(
          title: Text(
            AppLocalizations.of(context)!.please_enter_access_code,
            style:
                Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 16),
          ),
          content: SignUpFieldWidget(
            label: AppLocalizations.of(context)!.access_code,
            placeholder: AppLocalizations.of(context)!.enter_access_code,
            inputType: TextInputType.number,
            maxLength: 6,
            onChanged: (val) {
              context.read<VideoCubit>().onAccessCodeChanged(val);
            },
          ),
          actions: [
            state.isAccessCodeSubmitLoading
                ? Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Center(
                      child: CircularProgressIndicator(
                        color: primaryCyan,
                      ),
                    ),
                  )
                : Padding(
                    padding:
                        EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: isCodeValid
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
                              ?.copyWith(fontSize: 18, color: Colors.white),
                        ),
                        style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry?>(
                                  const EdgeInsets.symmetric(horizontal: 40)),
                          backgroundColor: MaterialStateProperty.all<Color?>(
                              isCodeValid ? primaryCyan : Colors.grey[300]),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder?>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.r))),
                        ),
                      ),
                    ),
                  )
          ],
          insetPadding: EdgeInsets.all(24.h),
        );
      },
    );
  }
}
