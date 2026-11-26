import 'package:ec_card_app/src/presentation/education/widgets/youtube_video_player.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

/// A YouTube education video that played to the end left a circle spinning
/// for ever in the middle of the screen: the player shows its buffering
/// spinner for every state that is not playing or paused, and a finished
/// video is reported as `ended`.
void main() {
  late YoutubePlayerController controller;

  setUp(() {
    controller = YoutubePlayerController(initialVideoId: 'dQw4w9WgXcQ');
  });

  tearDown(() => controller.dispose());

  test('a finished video is left paused, not spinning', () {
    controller.updateValue(
      controller.value.copyWith(
        playerState: PlayerState.ended,
        isPlaying: true,
      ),
    );

    settleFinishedVideo(controller);

    expect(controller.value.playerState, PlayerState.paused);
    expect(controller.value.isPlaying, isFalse);
  });

  test('a video that is still playing is left alone', () {
    controller.updateValue(
      controller.value.copyWith(
        playerState: PlayerState.playing,
        isPlaying: true,
      ),
    );

    settleFinishedVideo(controller);

    expect(controller.value.playerState, PlayerState.playing);
    expect(controller.value.isPlaying, isTrue);
  });

  test('a buffering video still shows the spinner', () {
    controller.updateValue(
      controller.value.copyWith(playerState: PlayerState.buffering),
    );

    settleFinishedVideo(controller);

    expect(controller.value.playerState, PlayerState.buffering);
  });
}
