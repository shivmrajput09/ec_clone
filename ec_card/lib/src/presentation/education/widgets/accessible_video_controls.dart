import 'dart:async';

import 'package:chewie/chewie.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../core/res/app_colors.dart';

/// Video controls that a screen reader can operate.
///
/// Chewie's own controls carry no semantics — its play, mute, seek and
/// full-screen widgets are bare gesture detectors, so a screen reader lands
/// on them and announces nothing. No Flutter video player package on pub.dev
/// ships accessibility labels, so replacing the control layer is the only
/// route; the player itself is still Chewie.
///
/// Two behaviours here differ from Chewie deliberately:
///
///  * Seeking uses a [Slider], so the platform supplies value announcements
///    and increase/decrease actions for free. Chewie paints its own bar,
///    which cannot be operated without sight.
///  * The controls do not hide themselves while a screen reader is running.
///    A control that disappears after three seconds cannot be reached by
///    someone swiping through the screen to find it.
class AccessibleVideoControls extends StatefulWidget {
  const AccessibleVideoControls({Key? key}) : super(key: key);

  @override
  State<AccessibleVideoControls> createState() =>
      _AccessibleVideoControlsState();
}

class _AccessibleVideoControlsState extends State<AccessibleVideoControls> {
  static const Duration _hideAfter = Duration(seconds: 3);

  ChewieController? _chewie;
  VideoPlayerController? _video;
  Timer? _hideTimer;
  bool _visible = true;
  bool _dragging = false;
  Duration _dragPosition = Duration.zero;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final chewie = ChewieController.of(context);
    if (identical(chewie, _chewie)) return;

    _video?.removeListener(_onVideoChanged);
    _chewie = chewie;
    _video = chewie.videoPlayerController..addListener(_onVideoChanged);
    _restartHideTimer();
  }

  @override
  void dispose() {
    _hideTimer?.cancel();
    _video?.removeListener(_onVideoChanged);
    super.dispose();
  }

  void _onVideoChanged() {
    if (mounted) setState(() {});
  }

  /// True when a screen reader (or similar) is driving the device.
  bool get _assistiveNavigation =>
      MediaQuery.maybeOf(context)?.accessibleNavigation ?? false;

  void _restartHideTimer() {
    _hideTimer?.cancel();
    if (_assistiveNavigation) {
      // Leave the controls up: they must stay reachable by swiping.
      if (!_visible) setState(() => _visible = true);
      return;
    }
    _hideTimer = Timer(_hideAfter, () {
      if (mounted) setState(() => _visible = false);
    });
  }

  void _showControls() {
    setState(() => _visible = true);
    _restartHideTimer();
  }

  void _togglePlay() {
    final video = _video;
    if (video == null) return;
    video.value.isPlaying ? video.pause() : video.play();
    _showControls();
  }

  void _toggleMute() {
    final video = _video;
    if (video == null) return;
    video.setVolume(video.value.volume == 0 ? 1 : 0);
    _showControls();
  }

  void _toggleFullScreen() {
    _chewie?.toggleFullScreen();
    _showControls();
  }

  String _spoken(Duration d) {
    final l10n = AppLocalizations.of(context)!;
    final minutes = d.inMinutes;
    final seconds = d.inSeconds % 60;
    return l10n.videoTimeSpoken(minutes, seconds);
  }

  String _digits(Duration d) {
    final minutes = d.inMinutes.toString().padLeft(2, '0');
    final seconds = (d.inSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final video = _video;
    if (video == null) return const SizedBox.shrink();

    final value = video.value;

    // Chewie renders the failure and loading states from inside its controls
    // widget, not from the player, so replacing the controls means taking
    // both on. Without these a video that cannot load shows nothing at all —
    // no message, no spinner — and the screen looks simply broken.
    if (value.hasError) {
      return _chewie?.errorBuilder
              ?.call(context, value.errorDescription ?? '') ??
          const Center(
            child: Icon(Icons.error, color: Colors.white, size: 42),
          );
    }
    if (!value.isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }

    final duration = value.duration;
    final position = _dragging ? _dragPosition : value.position;
    final playing = value.isPlaying;
    final muted = value.volume == 0;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      // Tapping the picture only shows or hides the controls, which is a
      // convenience for someone who can see them fade. For a screen reader
      // user the controls never hide, so this gesture has nothing to offer —
      // and as a semantics node it is a large unnamed target sitting over the
      // whole player. Keep the gesture, drop the node.
      excludeFromSemantics: true,
      onTap: _visible ? () => setState(() => _visible = false) : _showControls,
      child: AnimatedOpacity(
        opacity: _visible ? 1 : 0,
        duration: const Duration(milliseconds: 200),
        child: IgnorePointer(
          ignoring: !_visible,
          child: Stack(
            children: [
              Center(
                // `tooltip` names the button on its own node. Wrapping in
                // Semantics instead produces two nodes — a named one that is
                // not clickable, and the clickable one with no name, which is
                // the node a screen reader lands on.
                child: Semantics(
                  container: true,
                  child: IconButton(
                    iconSize: 56,
                    color: Colors.white,
                    tooltip: playing ? l10n.videoPause : l10n.videoPlay,
                    icon: Icon(playing ? Icons.pause : Icons.play_arrow),
                    onPressed: _togglePlay,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  color: Colors.black45,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      // Read as one string rather than as digits and a slash.
                      // `container` keeps it a node of its own: without it
                      // the label merges into the enclosing player node and
                      // takes the neighbouring button's name with it, leaving
                      // that button unnamed.
                      Semantics(
                        container: true,
                        label: l10n.videoProgressSpoken(
                          _spoken(position),
                          _spoken(duration),
                        ),
                        excludeSemantics: true,
                        child: Text(
                          '${_digits(position)} / ${_digits(duration)}',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: MergeSemantics(
                          child: Semantics(
                            label: l10n.videoSeek,
                            // A Slider brings its own value announcement and
                            // increase/decrease actions, so seeking works
                            // without sight.
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: primaryCyan,
                                thumbColor: primaryCyan,
                                inactiveTrackColor: Colors.white38,
                              ),
                              child: Slider(
                                min: 0,
                                max: duration.inMilliseconds.toDouble().clamp(
                                      1,
                                      double.maxFinite,
                                    ),
                                value: position.inMilliseconds.toDouble().clamp(
                                    0, duration.inMilliseconds.toDouble()),
                                onChangeStart: (_) {
                                  setState(() => _dragging = true);
                                  _hideTimer?.cancel();
                                },
                                onChanged: (ms) => setState(
                                  () => _dragPosition =
                                      Duration(milliseconds: ms.round()),
                                ),
                                onChangeEnd: (ms) {
                                  video.seekTo(
                                      Duration(milliseconds: ms.round()));
                                  setState(() => _dragging = false);
                                  _restartHideTimer();
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Semantics(
                        container: true,
                        child: IconButton(
                          color: Colors.white,
                          tooltip: muted ? l10n.videoUnmute : l10n.videoMute,
                          icon:
                              Icon(muted ? Icons.volume_off : Icons.volume_up),
                          onPressed: _toggleMute,
                        ),
                      ),
                      Semantics(
                        container: true,
                        child: IconButton(
                          color: Colors.white,
                          tooltip: _chewie?.isFullScreen ?? false
                              ? l10n.videoExitFullScreen
                              : l10n.videoFullScreen,
                          icon: Icon(_chewie?.isFullScreen ?? false
                              ? Icons.fullscreen_exit
                              : Icons.fullscreen),
                          onPressed: _toggleFullScreen,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
