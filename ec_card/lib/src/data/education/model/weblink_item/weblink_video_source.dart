import 'package:ec_card_app/src/data/education/model/education_item/education_item.dart';
import 'package:ec_card_app/src/data/education/model/weblink_item/weblink_item.dart';

/// What a shared link turns out to be, and how to play it.
///
/// The Weblinks tab and a notification about a link both have to answer the
/// same question, so they ask it here rather than each keeping their own copy.
extension WeblinkVideoSource on WeblinkItem {
  /// A link that plays rather than opens in the browser.
  bool get isPlayableVideo =>
      previewType == 'html5_video' || previewType == 'iframe';

  /// Hosted on YouTube or Vimeo, so it needs the embed player.
  bool get isEmbeddedVideo => previewType == 'iframe';

  /// The link described as the players expect it.
  EducationItem asVideo() => EducationItem(
        videoTitle: weblinkTitle,
        videoUrl: weblinkUrl,
        embedUrl: embedUrl,
        videoId: videoId,
        videoProvider: videoProvider,
        previewType: previewType,
        videoThumbnail: thumbnailUrl,
      );
}
