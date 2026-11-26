import 'package:ec_card_app/src/application/quiz/quiz_cubit.dart';
import 'package:ec_card_app/src/data/quiz/model/option_item.dart';
import 'package:ec_card_app/src/data/quiz/model/question_item.dart';
import 'package:ec_card_app/src/domain/quiz/quiz_repo.dart';
import 'package:ec_card_app/src/presentation/quiz/widgets/quiz_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

class _UnusedQuizRepository implements QuizRepository {
  @override
  dynamic noSuchMethod(Invocation invocation) =>
      throw UnimplementedError('not called while building the card');
}

const _question = 'What does RAM stand for in computer hardware?';
const _firstAnswer = 'Read-Access Memory';
const _secondAnswer = 'Yes';
const _answers = [_firstAnswer, _secondAnswer];

/// An accessibility scan reported the quiz card as an element whose
/// accessible name does not begin with the text written on it: the question
/// had no node of its own, so its words were hoisted onto the whole card and
/// the card was announced as the question while the text inside it was the
/// answers.
void main() {
  Future<void> pumpCard(WidgetTester tester) => tester.pumpWidget(
        ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (context, _) => MaterialApp(
            home: BlocProvider(
              create: (_) => QuizCubit(_UnusedQuizRepository()),
              child: const Scaffold(
                body: QuizCardWidget(
                  question: QuestionItem(
                    questionTitle: _question,
                    questionOptions: [
                      OptionItem(id: '1', optionTitle: _firstAnswer),
                      OptionItem(id: '2', optionTitle: _secondAnswer),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  testWidgets('the question is a node of its own, not the whole card',
      (tester) async {
    final handle = tester.ensureSemantics();
    await pumpCard(tester);
    await tester.pumpAndSettle();

    final question = tester.getSemantics(find.bySemanticsLabel(_question));
    expect(question.isMergedIntoParent, isFalse);

    // Bounded to the bar the question is written on, not to a card that also
    // holds the answers: every answer row is taller than this on its own.
    expect(question.rect.height, lessThan(56));

    handle.dispose();
  });

  testWidgets('the question is announced as a header', (tester) async {
    final handle = tester.ensureSemantics();
    await pumpCard(tester);
    await tester.pumpAndSettle();

    expect(
      tester
          .getSemantics(find.bySemanticsLabel(_question))
          .flagsCollection
          .isHeader,
      isTrue,
    );

    handle.dispose();
  });

  testWidgets('no node is named after text it does not contain',
      (tester) async {
    final handle = tester.ensureSemantics();
    await pumpCard(tester);
    await tester.pumpAndSettle();

    // ignore: deprecated_member_use
    final owner = tester.binding.pipelineOwner.semanticsOwner!;
    final labelled = <SemanticsNode>[];

    void collect(SemanticsNode node) {
      if (node.getSemanticsData().label.isNotEmpty) labelled.add(node);
      node.visitChildren((child) {
        collect(child);
        return true;
      });
    }

    collect(owner.rootSemanticsNode!);

    expect(labelled.map((n) => n.getSemanticsData().label), [
      _question,
      for (final answer in _answers) '$answer, $_question',
    ]);

    handle.dispose();
  });
}
