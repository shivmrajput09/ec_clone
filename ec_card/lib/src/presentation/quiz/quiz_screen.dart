import 'dart:convert';
import 'dart:io';

import 'package:ec_card_app/src/application/quiz/quiz_cubit.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/back_icon.dart';
import 'package:ec_card_app/src/presentation/loading_status/loading_status_page.dart';
import 'package:ec_card_app/src/presentation/quiz/quiz_complete.dart';
import 'package:ec_card_app/src/presentation/quiz/widgets/quiz_card.dart';
import 'package:ec_card_app/src/presentation/quiz/widgets/quiz_fail.screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/extension.dart';

import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key, this.showBackButton = true}) : super(key: key);

  final bool? showBackButton;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, true);
        return true;
      },
      child: BlocProvider(
        create: (context) => getIt<QuizCubit>()..getQuestionsList(),
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 60,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            leading: showBackButton == true
                ? IconButton(
                    onPressed: () {
                      appLog("Back pressed");
                      Navigator.pop(context, true);
                    },
                    icon: BackIcon(
                      semanticLabel:
                          AppLocalizations.of(context)!.backButtonLabel,
                    ),
                    color: primaryBackgroundColor,
                  )
                : const SizedBox(),
            elevation: 0.5,
            shadowColor: primaryCyan,
            centerTitle: true,
            title: Text(AppLocalizations.of(context)!.quiz_text),
          ),
          body: BlocConsumer<QuizCubit, QuizState>(
            listener: (context, state) {
              state.questionFecthingFailureOrSuccess.map((a) => a.fold((l) {
                    context.showError(l);
                  }, (r) {
                    // Account has already passed the quiz: the server returns no
                    // questions, so skip the (otherwise blank) quiz screen.
                    // Route back through LoadingStatusPage rather than
                    // straight to the dashboard, so any pending additional
                    // questions still get shown.
                    if (state.quizLevelPassed) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const LoadingStatusPage()),
                          (route) => false);
                    }
                  }));

              state.submitQuizFailureOrSuccess?.map((a) => a.fold((l) {
                    context.showError(l);
                  }, (r) {
                    final Map<String, dynamic> resultData = jsonDecode(r);

                    if (resultData['quizLevelPassed'] == false) {
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(content: Text("${resultData['message']}")));
                      Navigator.pushAndRemoveUntil(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => QuizFailScreen(
                                    message: resultData['message'],
                                  )),
                          (route) => false);
                    } else {
                      Navigator.pushAndRemoveUntil(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => QuizCompleteScreen(
                                    message: resultData['message'],
                                  )),
                          (route) => false);
                    }
                  }));
            },
            builder: (context, state) {
              return state.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(color: primaryCyan),
                    )
                  : SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: state.quizList.length,
                              itemBuilder: (context, index) {
                                return QuizCardWidget(
                                    question: state.quizList[index]);
                              }),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 60.h, vertical: 40.h),
                            child: state.isQuizSubmitLoading
                                ? const CircularProgressIndicator(
                                    color: primaryCyan,
                                  )
                                : SizedBox(
                                    width: double.infinity,
                                    height: 48,
                                    child: ElevatedButton(
                                      onPressed: state.allQuestionsAnswered
                                          ? () {
                                              context
                                                  .read<QuizCubit>()
                                                  .onSubmitQuizPressed();
                                            }
                                          : null,
                                      child: Text(
                                        AppLocalizations.of(context)!
                                            .finish_text,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                                fontSize: 18,
                                                color: Colors.white),
                                      ),
                                      style: ButtonStyle(
                                        padding: MaterialStateProperty.all<
                                                EdgeInsetsGeometry?>(
                                            const EdgeInsets.symmetric(
                                                horizontal: 40)),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color?>(
                                                state.allQuestionsAnswered
                                                    ? primaryCyan
                                                    : Colors.grey[300]),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder?>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        30.r))),
                                      ),
                                    ),
                                  ),
                            /* ButtonWidget(
                                    title: AppLocalizations.of(context)!
                                        .finish_text,
                                    onPressed: state.allQuestionsAnswered
                                        ? () {
                                            context
                                                .read<QuizCubit>()
                                                .onSubmitQuizPressed();
                                          }
                                        : null),*/
                          ),
                        ],
                      ),
                    );
            },
          ),
        ),
      ),
    );
  }
}
