import 'package:ec_card_app/src/data/core/logging/app_log.dart';
import 'package:ec_card_app/src/data/core/video/youtube_links.dart';
import 'package:ec_card_app/src/data/education/model/weblink_item/weblink_item.dart';
import 'package:ec_card_app/src/data/education/model/weblink_item/weblink_video_source.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/presentation/core/res/readable_colors.dart';
import 'package:ec_card_app/src/presentation/education/widgets/video_player.dart';
import 'package:ec_card_app/src/presentation/education/widgets/youtube_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

/// One shared link on the Weblinks tab.
///
/// A video opens in the player it belongs in; anything else opens in the
/// browser. The background colour is chosen in the admin, so the text colour
/// is worked out from it rather than assumed.
class WeblinkCard extends StatelessWidget {
  const WeblinkCard({Key? key, required this.weblink}) : super(key: key);

  final WeblinkItem weblink;

  bool get _isVideo => weblink.isPlayableVideo;

  Future<void> _openInBrowser() async {
    final url = Uri.tryParse(weblink.weblinkUrl);
    if (url == null || !url.hasScheme) {
      appLog('WeblinkCard: no link to open for ${weblink.educationId}');
      return;
    }

    try {
      final opened = await launchUrl(url, mode: LaunchMode.externalApplication);
      if (!opened) appLog('WeblinkCard: link did not open');
    } catch (e) {
      appLog('WeblinkCard: could not open the link -> $e');
    }
  }

  /// Weblink videos are played by the screens the Videos tab already uses, so
  /// they keep the same controls.
  void _openVideo(BuildContext context) {
    final video = weblink.asVideo();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => weblink.isEmbeddedVideo
            ? YouTubeVideoPlayerScreen(video: video)
            : VideoPlayerScreen(video: video, afterMessageLoading: () {}),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final background = colorFromHex(
      weblink.weblinkBgColor,
      fallback: Theme.of(context).colorScheme.surface,
    );
    final foreground = readableTextColor(background);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
      child: Semantics(
        button: true,
        // The title is the visible text on the card, so the spoken name has
        // to start with it; what the card does follows.
        label: _isVideo
            ? '${weblink.weblinkTitle}, ${l10n.videoPlay}'
            : '${weblink.weblinkTitle}, ${l10n.weblink_opens_in_browser}',
        excludeSemantics: true,
        child: Material(
          color: background,
          borderRadius: BorderRadius.circular(12.r),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () => _isVideo ? _openVideo(context) : _openInBrowser(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (_isVideo) _Preview(weblink: weblink, foreground: foreground),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: _Details(
                    weblink: weblink,
                    background: background,
                    foreground: foreground,
                    showLink: !_isVideo,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// The still frame a video card leads with, and the play button over it.
class _Preview extends StatelessWidget {
  const _Preview({required this.weblink, required this.foreground});

  final WeblinkItem weblink;
  final Color foreground;

  /// YouTube publishes a still for every video, so a link with no thumbnail
  /// of its own still gets one. Most rows carry no videoId either, so the id
  /// is read out of the link.
  String get _thumbnail {
    if (weblink.thumbnailUrl.isNotEmpty) return weblink.thumbnailUrl;

    final id = weblink.videoId.isNotEmpty
        ? weblink.videoId
        : (youTubeIdFrom(weblink.embedUrl).isNotEmpty
            ? youTubeIdFrom(weblink.embedUrl)
            : youTubeIdFrom(weblink.weblinkUrl));

    return youTubeThumbnailFor(id);
  }

  @override
  Widget build(BuildContext context) {
    final thumbnail = _thumbnail;

    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Nothing to show for a video the admin gave no still for, and an
          // upload has none of its own. A black rectangle reads as a broken
          // card, so the card's own colour carries the play button instead.
          if (thumbnail.isEmpty)
            const SizedBox.shrink()
          else ...[
            Container(color: Colors.black),
            Image.network(
              thumbnail,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const SizedBox.shrink(),
            ),
          ],
          Center(child: _PlayButton(onImage: thumbnail.isNotEmpty, foreground: foreground)),
        ],
      ),
    );
  }
}

/// Sits over a still where there is one, and over the card's own colour
/// where there is not, so it stays visible either way.
class _PlayButton extends StatelessWidget {
  const _PlayButton({required this.onImage, required this.foreground});

  final bool onImage;
  final Color foreground;

  @override
  Widget build(BuildContext context) {
    final color = onImage ? Colors.white : foreground;

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: onImage
            ? Colors.black.withOpacity(0.55)
            : foreground.withOpacity(0.15),
        border: Border.all(color: color.withOpacity(0.9), width: 2),
      ),
      child: Icon(Icons.play_arrow, color: color, size: 34),
    );
  }
}

/// Title, and under it the link and the time on one line.
///
/// The link is only shown where the card is not a video: the spec keeps the
/// URL and the external mark off video cards.
class _Details extends StatelessWidget {
  const _Details({
    required this.weblink,
    required this.background,
    required this.foreground,
    required this.showLink,
  });

  final WeblinkItem weblink;
  final Color background;
  final Color foreground;
  final bool showLink;

  @override
  Widget build(BuildContext context) {
    final secondary = secondaryTextColor(background, foreground);
    final subtitle =
        Theme.of(context).textTheme.bodySmall?.copyWith(color: secondary);

    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                weblink.weblinkTitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: foreground, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 4),
              // The link gives way to the time rather than pushing it onto a
              // line of its own.
              Row(
                children: [
                  if (showLink) ...[
                    Flexible(
                      child: Text(
                        weblink.weblinkUrl,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: subtitle,
                      ),
                    ),
                    const SizedBox(width: 12),
                  ],
                  Text(weblink.createdText, style: subtitle),
                ],
              ),
            ],
          ),
        ),
        if (showLink) ...[
          const SizedBox(width: 12),
          _OpenInBrowserBadge(foreground: foreground),
        ],
      ],
    );
  }
}

/// The mark that says this card leaves the app. Not a control of its own: the
/// whole card is the target, and a screen reader is told that once.
class _OpenInBrowserBadge extends StatelessWidget {
  const _OpenInBrowserBadge({required this.foreground});

  final Color foreground;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: foreground.withValues(alpha: 0.12),
      ),
      child: Icon(Icons.open_in_new, size: 18, color: foreground),
    );
  }
}
