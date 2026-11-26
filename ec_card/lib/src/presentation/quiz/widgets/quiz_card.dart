import 'package:ec_card_app/src/application/quiz/quiz_cubit.dart';
import 'package:ec_card_app/src/data/quiz/model/option_item.dart';
import 'package:ec_card_app/src/data/quiz/model/question_item.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/quiz/widgets/quiz_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuizCardWidget extends StatefulWidget {
  const QuizCardWidget({
    Key? key,
    required this.question,
  }) : super(key: key);

  final QuestionItem question;

  @override
  State<QuizCardWidget> createState() => _QuizCardWidgetState();
}

class _QuizCardWidgetState extends State<QuizCardWidget> {
  OptionItem gv = const OptionItem();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizCubit, QuizState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  constraints: const BoxConstraints(),
                  decoration: BoxDecoration(
                      color: primaryCyan,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        topRight: Radius.circular(10.r),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    // A node of its own, bounded to the bar the question is
                    // written on. Without this the question has no node to
                    // sit in and its text is hoisted onto the whole card, so
                    // the card is announced as the question while the text
                    // inside it is the answers \u2014 a name that does not begin
                    // with what is written there. As a header it also gives a
                    // screen reader something to jump between questions by.
                    child: Semantics(
                      container: true,
                      header: true,
                      child: Text(
                        widget.question.questionTitle,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
                // RadioGroup<OptionItem>.builder(
                //   items: widget.question.questionOptions,
                //   spacebetween: 50,
                //   itemBuilder: (item) => RadioButtonBuilder(
                //     item.optionTitle,
                //   ),
                //   textStyle: const TextStyle(
                //     fontSize: 12,
                //   ),
                //   activeColor: primaryCyan,
                //   onChanged: (val) {
                //     setState(() {
                //       gv = val!;
                //     });

                //     context.read<QuizCubit>().updateAnswersOfQuiz(
                //           selectedOptionId: val?.id,
                //           questionId: widget.question.questionBankId,
                //         );

                //     //state Management
                //     //questionId
                //     //OptionId
                //   },
                //   groupValue: gv,
                // ),

                SizedBox(
                  child: ListView.builder(
                    itemCount: widget.question.questionOptions.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return QuizOptionWidget(
                        groupValue: gv,
                        questionTitle: widget.question.questionTitle,
                        option: widget.question.questionOptions[index],
                        onChanged: (val) {
                          setState(() {
                            gv = val!;
                          });

                          context.read<QuizCubit>().updateAnswersOfQuiz(
                                selectedOptionId: val?.id,
                                questionId: widget.question.questionBankId,
                              );
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
