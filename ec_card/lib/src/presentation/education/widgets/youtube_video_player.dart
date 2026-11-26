import 'package:ec_card_app/src/data/education/model/education_item/education_item.dart';
import 'package:ec_card_app/src/data/education/model/education_item/education_video_source.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/presentation/core/widgets/back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

/// Plays an education video that lives on YouTube.
///
/// The app's own player takes a media file, so a YouTube page URL fails in it.
/// These videos are played through YouTube's own embed instead; everything
/// uploaded to us keeps using [VideoPlayerScreen].
class YouTubeVideoPlayerScreen extends StatefulWidget {
  const YouTubeVideoPlayerScreen({
    Key? key,
    required this.video,
    this.calledFrom,
    this.onOpened,
  }) : super(key: key);

  final EducationItem video;

  /// Run once the screen is up. Opening from a notification marks it read,
  /// the way the app's own player does.
  final VoidCallback? onOpened;

  /// "videos" returns to the list rather than the previous screen, matching
  /// the app's own player.
  final String? calledFrom;

  @override
  State<YouTubeVideoPlayerScreen> createState() =>
      _YouTubeVideoPlayerScreenState();
}

class _YouTubeVideoPlayerScreenState extends State<YouTubeVideoPlayerScreen> {
  YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();
    widget.onOpened?.call();

    final videoId = widget.video.youTubeVideoId;
    if (videoId.isEmpty) return;

    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        enableCaption: true,
      ),
    )..addListener(_settleFinishedVideo);
  }

  void _settleFinishedVideo() {
    final controller = _controller;
    if (controller != null) settleFinishedVideo(controller);
  }

  @override
  void dispose() {
    // Leaves the audio playing in the background otherwise.
    _controller?.removeListener(_settleFinishedVideo);
    _controller?.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
  }

  void _close() {
    if (widget.calledFrom == 'videos') {
      Navigator.popUntil(context, (route) => route.isFirst);
      return;
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final controller = _controller;

    if (controller == null) {
      return _Frame(
        title: widget.video.videoTitle,
        onClose: _close,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            l10n.videoUnavailable,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      );
    }

    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller,
        showVideoProgressIndicator: true,
        // Named for a screen reader: the player itself is a platform view
        // whose controls carry no accessible names of their own.
        bottomActions: [
          const SizedBox(width: 8),
          const CurrentPosition(),
          const ProgressBar(isExpanded: true),
          const RemainingDuration(),
          Semantics(
            button: true,
            label: l10n.videoFullScreen,
            child: const FullScreenButton(),
          ),
        ],
      ),
      builder: (context, player) => _Frame(
        title: widget.video.videoTitle,
        onClose: _close,
        child: player,
      ),
    );
  }
}

/// Leaves a finished video sitting on its poster, paused.
///
/// The player draws its buffering spinner for every state that is not
/// playing or paused, and a video that reaches the end is reported as
/// `ended` with `isPlaying` still true — so the spinner turned for ever in
/// the middle of the screen and the video looked stuck. A finished video is
/// really stopped at the end, so it is recorded that way: the spinner goes,
/// the poster comes back over YouTube's suggestions, and the play button
/// starts the video again.
void settleFinishedVideo(YoutubePlayerController controller) {
  if (controller.value.playerState != PlayerState.ended) return;

  controller.updateValue(
    controller.value.copyWith(
      playerState: PlayerState.paused,
      isPlaying: false,
    ),
  );
}

/// The app bar and black backdrop both states share.
class _Frame extends StatelessWidget {
  const _Frame({
    required this.title,
    required this.onClose,
    required this.child,
  });

  final String title;
  final VoidCallback onClose;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return WillPopScope(
      onWillPop: () async {
        onClose();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: onClose,
            icon: BackIcon(
              variant: BackIconVariant.material,
              semanticLabel: l10n.back,
            ),
          ),
          title: Text(title, overflow: TextOverflow.ellipsis),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.black,
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}
