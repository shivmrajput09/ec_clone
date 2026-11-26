import 'package:ec_card_app/src/data/core/video/youtube_links.dart';
import 'package:ec_card_app/src/data/education/model/education_item/education_item.dart';

/// Where an education video has to be played.
///
/// The gateway sends `videoProvider` ("direct" or "youtube") for new rows,
/// but older ones carry a YouTube link with no provider at all, so the URL is
/// read as well. A YouTube page is not a media file and cannot be handed to
/// the app's own player.
extension EducationVideoSource on EducationItem {
  bool get isYouTubeVideo {
    if (videoProvider.toLowerCase() == 'youtube') return true;
    return isYouTubeLink(videoUrl) || isYouTubeLink(embedUrl);
  }

  /// The id YouTube needs, taken from the field the gateway sends or, failing
  /// that, out of the link itself. Empty when neither yields one, which the
  /// player treats as a video it cannot play.
  String get youTubeVideoId {
    if (videoId.isNotEmpty) return videoId;
    final fromEmbed = youTubeIdFrom(embedUrl);
    return fromEmbed.isNotEmpty ? fromEmbed : youTubeIdFrom(videoUrl);
  }
}
