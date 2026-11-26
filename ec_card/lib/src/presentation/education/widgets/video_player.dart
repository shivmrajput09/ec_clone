import 'package:chewie/chewie.dart';
import 'package:ec_card_app/src/presentation/education/widgets/accessible_video_controls.dart';
import 'package:ec_card_app/src/data/education/model/education_item/education_item.dart';
import 'package:ec_card_app/src/presentation/core/widgets/back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({
    Key? key,
    required this.video,
    required this.afterMessageLoading,
    this.calledFrom,
  }) : super(key: key);

  final EducationItem video;
  final String? calledFrom;
  final Function afterMessageLoading;

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late ChewieController chewieController;
  late VideoPlayerController videoController;

  @override
  void initState() {
    appLog("----- Video URl: ${widget.video} ");
    widget.afterMessageLoading();
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    setState(() {
      videoController = VideoPlayerController.network(
        widget.video.videoUrl,
      );
    });

    chewieController = ChewieController(
      videoPlayerController: videoController,
    );

    // videoController.addListener(() {
    //   if (videoController.value.position ==
    //       const Duration(seconds: 0, minutes: 0, hours: 0)) {
    //     appLog('------- VIDEO PLAYER SCREEN: Video Started ---------');
    //     // context.read<VideoCubit>();
    //   }

    //   if (videoController.value.position == videoController.value.duration) {
    //     appLog('------- VIDEO PLAYER SCREEN: Video Ended ---------');
    //   }
    // });
  }

  @override
  void dispose() {
    super.dispose();
    // IMPORTANT to dispose of all the used resources
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
        videoController.dispose();
        chewieController.dispose();

        return true;
      },
      child: WillPopScope(
        onWillPop: () async {
          if (widget.calledFrom != null && widget.calledFrom == "videos") {
            Navigator.popUntil(context, (route) => route.isFirst);
          } else {
            Navigator.pop(context);
          }

          return true;
        },
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  if (widget.calledFrom != null &&
                      widget.calledFrom == "videos") {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  } else {
                    Navigator.pop(context);
                  }
                },
                icon: const BackIcon(variant: BackIconVariant.material)),
            title: Text(
              widget.video.videoTitle,
              overflow: TextOverflow.ellipsis,
            ),
            centerTitle: true,
          ),
          body: Container(
            height: double.infinity,
            color: Colors.black,
            alignment: Alignment.center,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: Chewie(
                    controller: chewieController = ChewieController(
                  deviceOrientationsAfterFullScreen: [
                    DeviceOrientation.portraitUp
                  ],
                  deviceOrientationsOnEnterFullScreen: [
                    DeviceOrientation.landscapeLeft
                  ],
                  videoPlayerController: videoController,
                  // Chewie's own controls expose no accessible names, so a
                  // screen reader cannot play, seek or resize the video.
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
                )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
