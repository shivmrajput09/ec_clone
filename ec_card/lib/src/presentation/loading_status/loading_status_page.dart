import 'dart:convert';

import 'package:ec_card_app/src/data/core/services/firebase_messaging_service.dart';

import 'package:animations/animations.dart';
import 'package:ec_card_app/src/application/loading_status/loading_status_cubit.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/home/home_page.dart';
import 'package:ec_card_app/src/presentation/products_list/products_list.dart';
import 'package:ec_card_app/src/presentation/quiz/quiz_screen.dart';
import 'package:ec_card_app/src/presentation/quiz_halt/quiz_halt_screen.dart';
import 'package:ec_card_app/src/presentation/videos/video_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';

import '../profile_questions.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

class LoadingStatusPage extends StatefulWidget {
  final bool skipProfileCheck;

  const LoadingStatusPage({super.key, this.skipProfileCheck = false});

  static const routeName = '/loading-status';

  @override
  State<LoadingStatusPage> createState() => _LoadingStatusPageState();
}

class _LoadingStatusPageState extends State<LoadingStatusPage> {
  // This page routes onward exactly once. The listener below runs on every
  // state change, and the route transition keeps this page mounted for its
  // duration - long enough for the destination's own state updates to
  // re-trigger navigation and stack up duplicate screens.
  bool _navigated = false;

  @override
  void initState() {
    appLog("Inside loading status page");
    // Every authenticated entry point routes through here (app start, login,
    // registration), which is where the FCM token can finally be sent - the
    // save endpoint needs a logged-in user, and the token is fetched earlier.
    FirebaseMessagingService.syncTokenToServer();
    BlocProvider.of<LoadingStatusCubit>(context).fetchUserDashboardData();
    Future.delayed(const Duration(seconds: 0), () {
      BlocProvider.of<LoadingStatusCubit>(context)
          .started(skipProfileCheck: widget.skipProfileCheck);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoadingStatusCubit, LoadingStatusState>(
      listener: (context, state) {
        state.quizPassedFailureOrSuccess.map((either) =>
            either.fold((l) {}, (r) {
              if (_navigated) return;
              _navigated = true;
              appLog("LOADING STATUS PAGE: $r");
              if (r == 'showDashboard') {
                Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 500),
                      reverseTransitionDuration:
                          const Duration(milliseconds: 500),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return SharedAxisTransition(
                          transitionType: SharedAxisTransitionType.horizontal,
                          secondaryAnimation: secondaryAnimation,
                          animation: animation,
                          child: child,
                        );
                      },
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return const HomePage();
                        // return ProductsListPage();
                      },
                    ),
                    (route) => false);
              } else if (r == "showVideo") {
                Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 500),
                      reverseTransitionDuration:
                          const Duration(milliseconds: 500),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return SharedAxisTransition(
                          transitionType: SharedAxisTransitionType.horizontal,
                          secondaryAnimation: secondaryAnimation,
                          animation: animation,
                          child: child,
                        );
                      },
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return const VideosScreen();
                      },
                    ),
                    (route) => false);
              } else if (r == "showQuiz") {
                Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 500),
                      reverseTransitionDuration:
                          const Duration(milliseconds: 500),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return SharedAxisTransition(
                          transitionType: SharedAxisTransitionType.horizontal,
                          secondaryAnimation: secondaryAnimation,
                          animation: animation,
                          child: child,
                        );
                      },
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return const QuizScreen(
                          showBackButton: false,
                        );
                      },
                    ),
                    (route) => false);
              } else if (r == "showProfile") {
                Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 500),
                      reverseTransitionDuration:
                      const Duration(milliseconds: 500),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return SharedAxisTransition(
                          transitionType: SharedAxisTransitionType.horizontal,
                          secondaryAnimation: secondaryAnimation,
                          animation: animation,
                          child: child,
                        );
                      },
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return const ProfileQuestionsScreen(
                          showBackButton: false,
                        );
                      },
                    ),
                        (route) => false);
              } else {
                final Map<String, dynamic> haltData = jsonDecode(r);
                Navigator.pushAndRemoveUntil(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 500),
                      reverseTransitionDuration:
                          const Duration(milliseconds: 500),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return SharedAxisTransition(
                          transitionType: SharedAxisTransitionType.horizontal,
                          secondaryAnimation: secondaryAnimation,
                          animation: animation,
                          child: child,
                        );
                      },
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return QuizHaltPage(
                          title: haltData['heading'],
                          message: haltData['message'],
                          askTransactionsAllowed: Map<String, dynamic>.from(
                              haltData['askTxnsAllowed']),
                        );
                      },
                    ),
                    (route) => false);
              }
            }));
      },
      builder: (context, state) {
        return Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: primaryBackgroundColor,
              image: const DecorationImage(
                image: AssetImage('assets/images/backgroundSuccess.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: state.isLoading
                  ? const CircularProgressIndicator(
                      color: primaryCyan,
                    )
                  : state.quizPassedFailureOrSuccess
                          .fold(() => false, (either) => either.isLeft())
                      // The dashboard/quiz-status load failed (e.g. a backend
                      // 5xx). Show a retry instead of hanging on a blank screen.
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                AppLocalizations.of(context)!
                                    .something_went_wrong,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              const SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {
                                  context
                                      .read<LoadingStatusCubit>()
                                      .fetchUserDashboardData();
                                  context
                                      .read<LoadingStatusCubit>()
                                      .started();
                                },
                                child: Text(
                                    AppLocalizations.of(context)!.retry),
                              ),
                            ],
                          ),
                        )
                      : const SizedBox(
                          height: 0,
                        ),
            ),
          ),
        );
      },
    );
  }
}
