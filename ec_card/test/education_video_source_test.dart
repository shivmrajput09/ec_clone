import 'package:ec_card_app/src/data/education/model/education_item/education_item.dart';
import 'package:ec_card_app/src/data/education/model/education_item/education_video_source.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('isYouTubeVideo', () {
    test('trusts the provider the gateway sends', () {
      expect(
        const EducationItem(videoProvider: 'youtube').isYouTubeVideo,
        isTrue,
      );
      expect(
        const EducationItem(
          videoProvider: 'direct',
          videoUrl: 'https://s3.eu-west-2.amazonaws.com/x/cpr.mp4',
        ).isYouTubeVideo,
        isFalse,
      );
    });

    test('recognises a YouTube link on a row with no provider', () {
      for (final url in [
        'https://www.youtube.com/watch?v=BQNNOh8c8ks',
        'https://youtu.be/BQNNOh8c8ks',
        'https://www.youtube-nocookie.com/embed/BQNNOh8c8ks',
      ]) {
        expect(EducationItem(videoUrl: url).isYouTubeVideo, isTrue, reason: url);
      }
    });

    test('is not fooled by a host that only ends in the same letters', () {
      expect(
        const EducationItem(videoUrl: 'https://notyoutube.com.evil.test/x')
            .isYouTubeVideo,
        isFalse,
      );
    });
  });

  group('youTubeVideoId', () {
    test('prefers the field the gateway sends', () {
      expect(
        const EducationItem(
          videoId: 'BQNNOh8c8ks',
          videoUrl: 'https://www.youtube.com/watch?v=somethingelse',
        ).youTubeVideoId,
        'BQNNOh8c8ks',
      );
    });

    test('reads it out of each shape of link', () {
      expect(
        const EducationItem(videoUrl: 'https://www.youtube.com/watch?v=abc123')
            .youTubeVideoId,
        'abc123',
      );
      expect(
        const EducationItem(videoUrl: 'https://youtu.be/abc123').youTubeVideoId,
        'abc123',
      );
      expect(
        const EducationItem(
          embedUrl: 'https://www.youtube-nocookie.com/embed/abc123',
        ).youTubeVideoId,
        'abc123',
      );
    });

    test('is empty when the link yields nothing to play', () {
      expect(const EducationItem().youTubeVideoId, isEmpty);
      expect(
        const EducationItem(videoUrl: 'https://www.youtube.com/')
            .youTubeVideoId,
        isEmpty,
      );
    });
  });
}
