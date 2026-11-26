import 'package:ec_card_app/src/application/message/message_cubit.dart';
import 'package:ec_card_app/src/data/education/model/weblink_item/weblink_item.dart';
import 'package:ec_card_app/src/data/education/model/weblink_item/weblink_video_source.dart';
import 'package:flutter_test/flutter_test.dart';

/// A notification about a shared link opened the Weblinks tab even when the
/// link was a video: the gateway has no route for a single weblink, so the
/// app had nothing to open. The link is found among the shared ones instead.
void main() {
  const links = [
    WeblinkItem(
      educationId: 'w-1',
      weblinkTitle: '06',
      weblinkUrl: 'https://youtu.be/rLf3jnHxSmU',
      previewType: 'none',
    ),
    WeblinkItem(
      educationId: 'w-2',
      weblinkTitle: '05',
      weblinkUrl: 'https://www.youtube.com/watch?v=abc12345678',
      embedUrl: 'https://www.youtube.com/embed/abc12345678',
      videoId: 'abc12345678',
      videoProvider: 'youtube',
      thumbnailUrl: 'https://img.youtube.com/vi/abc12345678/hqdefault.jpg',
      previewType: 'iframe',
    ),
    WeblinkItem(
      educationId: 'w-3',
      weblinkTitle: 'Uploaded clip',
      weblinkUrl: 'https://example.org/clip.mp4',
      previewType: 'html5_video',
    ),
  ];

  group('finding the link a notification is about', () {
    test('picks the link out by its education id', () {
      expect(findWeblinkById(links, 'w-2')?.weblinkTitle, '05');
    });

    test('finds nothing for a link that is no longer shared', () {
      expect(findWeblinkById(links, 'w-9'), isNull);
    });

    test('finds nothing when the notification carries no id', () {
      expect(findWeblinkById(links, ''), isNull);
    });
  });

  group('what the link turns out to be', () {
    test('a YouTube link plays in the embed player', () {
      final link = links[1];
      expect(link.isPlayableVideo, isTrue);
      expect(link.isEmbeddedVideo, isTrue);
    });

    test('an uploaded video plays in the app player', () {
      final link = links[2];
      expect(link.isPlayableVideo, isTrue);
      expect(link.isEmbeddedVideo, isFalse);
    });

    test('an ordinary page is not a video', () {
      expect(links[0].isPlayableVideo, isFalse);
    });

    test('a link is described the way the players expect', () {
      final video = links[1].asVideo();

      expect(video.videoTitle, '05');
      expect(video.videoId, 'abc12345678');
      expect(video.embedUrl, 'https://www.youtube.com/embed/abc12345678');
      expect(video.videoThumbnail,
          'https://img.youtube.com/vi/abc12345678/hqdefault.jpg');
    });
  });
}
