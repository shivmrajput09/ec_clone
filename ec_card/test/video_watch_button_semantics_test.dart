import 'package:ec_card_app/src/application/quiz/video/video_cubit.dart';
import 'package:ec_card_app/src/data/quiz/model/video_item.dart';
import 'package:ec_card_app/src/domain/quiz/quiz_repo.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/presentation/videos/widgets/video_detail_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

class _UnusedQuizRepository implements QuizRepository {
  @override
  dynamic noSuchMethod(Invocation invocation) =>
      throw UnimplementedError('not called while building the card');
}

/// An accessibility scan of the Videos screen reported "Watch, Button" three
/// times on one screen (duplicate accessibility label, WCAG 2.2-4.1.2): every
/// card's button carried only the word "Watch".
void main() {
  testWidgets('each Watch button names its own video', (tester) async {
    final handle = tester.ensureSemantics();
    const titles = ['Test Quiz Video 1', 'Test Quiz Video 2', 'Test Quiz Video 3'];

    await tester.pumpWidget(ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, _) => MaterialApp(
        locale: const Locale('en'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: BlocProvider(
          create: (_) => VideoCubit(quizRepo: _UnusedQuizRepository()),
          child: Scaffold(
            body: Column(children: [
              for (final title in titles)
                VideoDetailCardWidget(
                  video: VideoItem(videoTitle: title),
                  onWatchButtonPress: () {},
                ),
            ]),
          ),
        ),
      ),
    ));
    await tester.pumpAndSettle();

    for (final title in titles) {
      final button = find.bySemanticsLabel('Watch, $title');
      expect(button, findsOneWidget);
      expect(
        tester.getSemantics(button).flagsCollection.isButton,
        isTrue,
      );
    }
    expect(find.bySemanticsLabel('Watch'), findsNothing);

    handle.dispose();
  });
}
