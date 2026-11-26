import 'package:ec_card_app/src/data/core/video/youtube_links.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('reads the id out of each shape of link', () {
    expect(youTubeIdFrom('https://www.youtube.com/watch?v=rLf3jnHxSmU'),
        'rLf3jnHxSmU');
    expect(
      // As pasted from the share sheet, tracking parameters and all.
      youTubeIdFrom('https://youtu.be/rLf3jnHxSmU?si=LX_T1FKglRFPg'),
      'rLf3jnHxSmU',
    );
    expect(youTubeIdFrom('https://www.youtube-nocookie.com/embed/rLf3jnHxSmU'),
        'rLf3jnHxSmU');
  });

  test('yields nothing for a link that is not a video', () {
    expect(youTubeIdFrom('https://example.com/policies'), isEmpty);
    expect(youTubeIdFrom('https://www.youtube.com/'), isEmpty);
    expect(youTubeIdFrom(''), isEmpty);
  });

  test('is not fooled by a host that merely ends in the same letters', () {
    expect(isYouTubeLink('https://notyoutube.com.evil.test/watch?v=x'), isFalse);
    expect(isYouTubeLink('https://youtu.be/x'), isTrue);
  });

  test('builds a still only when there is an id', () {
    expect(youTubeThumbnailFor('rLf3jnHxSmU'),
        'https://img.youtube.com/vi/rLf3jnHxSmU/hqdefault.jpg');
    expect(youTubeThumbnailFor(''), isEmpty);
  });
}
