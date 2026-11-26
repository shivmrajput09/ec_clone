import 'package:chewie/chewie.dart';
import 'package:ec_card_app/src/presentation/education/widgets/accessible_video_controls.dart';
import 'package:ec_card_app/src/application/quiz/video/video_cubit.dart';
import 'package:ec_card_app/src/data/quiz/model/video_item.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/back_icon.dart';
import 'package:ec_card_app/src/presentation/core/widgets/button.dart';
import 'package:ec_card_app/src/presentation/videos/video_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:video_player/video_player.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

class VidePlayerScreen extends StatefulWidget {
  const VidePlayerScreen({
    Key? key,
    required this.videoList,
    required this.index,
  }) : super(key: key);

  final List<VideoItem> videoList;
  final int index;

  @override
  State<VidePlayerScreen> createState() => _VidePlayerScreenState();
}

class _VidePlayerScreenState extends State<VidePlayerScreen> {
  late ChewieController chewieController;
  late VideoPlayerController videoController;

  int videoIndex = 0;
  String videoUrl = '';
  String videoName = '';

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    videoIndex = widget.index;
    videoName = widget.videoList[videoIndex].videoTitle;
    _setupPlayer(widget.videoList[videoIndex].videoPath);
  }

  /// Builds [videoController]/[chewieController] for the given video.
  ///
  /// Called once per video from [initState] and again from the "Continue"
  /// button, rather than being reconstructed inline in [build] on every
  /// rebuild — recreating Chewie's controller on each rebuild raced multiple
  /// player instances against the same underlying video and was the cause of
  /// autoplay not reliably starting.
  void _setupPlayer(String url) {
    videoController = VideoPlayerController.networkUrl(Uri.parse(url));
    chewieController = ChewieController(
      deviceOrientationsAfterFullScreen: [DeviceOrientation.portraitUp],
      deviceOrientationsOnEnterFullScreen: [
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
        DeviceOrientation.portraitDown,
        DeviceOrientation.portraitUp,
      ],
      videoPlayerController: videoController,
      // Chewie's own controls expose no accessible names, so a screen
      // reader cannot play, seek or resize the video.
      customControls: const AccessibleVideoControls(),
      autoInitialize: true,
      looping: false,
      autoPlay: true,
      aspectRatio: 16 / 9,
      allowFullScreen: true,
      allowPlaybackSpeedChanging: false,
      showOptions: false,
      errorBuilder: (context, errorMessage) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(
              AppLocalizations.of(context)!.error_in_playing_video,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );

    videoController.addListener(() {
      if (videoController.value.position ==
          const Duration(seconds: 0, minutes: 0, hours: 0)) {
        appLog('------- VIDEO PLAYER SCREEN: Video Started ---------');

        appLog(
            "----- Current Video Id: ${widget.videoList[videoIndex].videoId}");
        BlocProvider.of<VideoCubit>(context).markAsWatched(
          widget.videoList[videoIndex].videoId,
        );
        BlocProvider.of<VideoCubit>(context).getVideosList();
      }

      if (videoController.value.position == videoController.value.duration) {
        appLog('------- VIDEO PLAYER SCREEN: Video Ended ---------');
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    videoController.dispose();
    chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const VideosScreen()),
            (route) => false);
        return true;
      },
      child: BlocProvider(
        create: (context) => getIt<VideoCubit>(),
        child: BlocBuilder<VideoCubit, VideoState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                toolbarHeight: 60,
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                leading: IconButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VideosScreen()),
                        (route) => false);
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
                title: Text(videoName),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 24.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height < 600
                              ? 350
                              : MediaQuery.of(context).size.height - 300,
                          color: Colors.black,
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 8.0),
                            child: AspectRatio(
                              aspectRatio: 4 / 3,
                              child: Chewie(controller: chewieController),
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 30.w, right: 30.w, bottom: 80.h, top: 40.h),
                        child: videoIndex < widget.videoList.length - 1
                            ? ButtonWidget(
                                title: AppLocalizations.of(context)!
                                    .continue_button,
                                onPressed: () {
                                  if (widget.index <
                                      widget.videoList.length - 1) {
                                    videoController.dispose();
                                    chewieController.dispose();

                                    setState(() {
                                      videoIndex++;
                                      videoName = widget
                                          .videoList[videoIndex].videoTitle;
                                      _setupPlayer(widget
                                          .videoList[videoIndex].videoPath);
                                    });
                                  }

                                  Future.delayed(const Duration(seconds: 2),
                                      () {
                                    BlocProvider.of<VideoCubit>(context)
                                        .markAsWatched(widget
                                            .videoList[videoIndex].videoId);
                                  });
                                })
                            : const SizedBox(
                                height: 0,
                              ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
