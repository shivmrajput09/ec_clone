import 'package:animations/animations.dart';
import 'package:ec_card_app/src/application/quiz/video/video_cubit.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/appbar.dart';
import 'package:ec_card_app/src/presentation/core/widgets/button.dart';
import 'package:ec_card_app/src/presentation/loading_status/loading_status_page.dart';
import 'package:ec_card_app/src/presentation/videos/widgets/access_code_dialog.dart';
import 'package:ec_card_app/src/presentation/videos/widgets/video_detail_card.dart';
import 'package:ec_card_app/src/presentation/videos/widgets/video_player_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ec_card_app/src/localization/app_localizations.dart';

class VideosScreen extends StatelessWidget {
  const VideosScreen({Key? key}) : super(key: const Key("videos-screen"));

  static const routeName = '/videos-screen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<VideoCubit>()..getVideosList(),
      child: BlocConsumer<VideoCubit, VideoState>(
        listener: (context, state) {
          state.markAllWatchedFailureOrSuccess?.fold(
              () => null,
              (a) => a.fold((l) => null, (r) async {
                    final res = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoadingStatusPage()));

                    // if (res != null && res && state.showSkipButton) {
                    //   context.read<VideoCubit>().getVideosList();
                    // }
                    context.read<VideoCubit>().getVideosList();
                  }));
        },
        builder: (context, state) {
          return Scaffold(
            appBar: CustomAppBar(
              appBar: AppBar(),
              title: AppLocalizations.of(context)!.videos,
              // Videos is always pushed with pushAndRemoveUntil((route) => false), so
              // it is the only route on the stack. A back button here would pop
              // the last route and leave a blank screen.
              showBackButton: false,
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SizedBox(
                      child: state.isLoading
                          ? const Center(
                              child: CircularProgressIndicator(
                                color: primaryCyan,
                              ),
                            )
                          : ListView.builder(
                              itemCount: state.videoList.length,
                              itemBuilder: (context, index) {
                                return VideoDetailCardWidget(
                                  video: state.videoList[index],
                                  onWatchButtonPress: () {
                                    Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                            builder: (context) =>
                                                VidePlayerScreen(
                                                  videoList: state.videoList,
                                                  index: index,
                                                )));
                                  },
                                );
                              }),
                    ),
                  ),
                  state.showSkipButton
                      ? Padding(
                          padding: EdgeInsets.only(bottom: 20.h),
                          child: TextButton(
                            onPressed: () {
                              context.read<VideoCubit>().onSkipPressed();
                            },
                            child: Text(
                              AppLocalizations.of(context)!.skip,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                      decoration: TextDecoration.underline,
                                      color: Colors.purple[900]),
                            ),
                          ),
                        )
                      : const SizedBox(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.h),
                    child: ButtonWidget(
                      title: AppLocalizations.of(context)!.enter_access_code,
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const AccessCodeDialog();
                            });
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.h),
                    child: SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: state.allVideosWatched
                            ? () {
                                // Route back through LoadingStatusPage so it
                                // re-evaluates status now that videos are
                                // watched: quiz next if pending, then
                                // additional questions, then dashboard -
                                // rather than this screen hardcoding what
                                // comes next.
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    PageRouteBuilder(
                                      transitionDuration:
                                          const Duration(milliseconds: 500),
                                      reverseTransitionDuration:
                                          const Duration(milliseconds: 500),
                                      transitionsBuilder: (context, animation,
                                          secondaryAnimation, child) {
                                        return SharedAxisTransition(
                                          transitionType:
                                              SharedAxisTransitionType
                                                  .horizontal,
                                          secondaryAnimation:
                                              secondaryAnimation,
                                          animation: animation,
                                          child: child,
                                        );
                                      },
                                      pageBuilder: (context, animation,
                                          secondaryAnimation) {
                                        return const LoadingStatusPage();
                                      },
                                    ),
                                    (route) => false);
                              }
                            : null,
                        child: Text(
                          state.skipQuizPage
                              ? AppLocalizations.of(context)!
                                  .continue_to_dashboard
                              : AppLocalizations.of(context)!.continue_to_quiz,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 18, color: Colors.white),
                        ),
                        style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry?>(
                                  const EdgeInsets.symmetric(horizontal: 40)),
                          backgroundColor: state.allVideosWatched
                              ? MaterialStateProperty.all<Color?>(primaryCyan)
                              : MaterialStateProperty.all<Color?>(
                                  Colors.grey[300]),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder?>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.r))),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
