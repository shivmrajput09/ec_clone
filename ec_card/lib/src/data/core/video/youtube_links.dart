/// Reading YouTube links, wherever they reach the app.
///
/// The gateway sends a videoId for videos it knows about, but not for every
/// row: links published before that field existed, and links an admin pasted
/// into a weblink, carry the id only inside the URL.

bool isYouTubeLink(String url) {
  final host = Uri.tryParse(url)?.host.toLowerCase() ?? '';
  return host.endsWith('youtube.com') ||
      host.endsWith('youtube-nocookie.com') ||
      host.endsWith('youtu.be');
}

/// The id out of a link, in the three shapes that reach us:
/// `watch?v=<id>`, `youtu.be/<id>` and `embed/<id>`. Empty when the link is
/// not YouTube's or carries no id.
String youTubeIdFrom(String url) {
  final uri = Uri.tryParse(url);
  if (uri == null || !isYouTubeLink(url)) return '';

  final fromQuery = uri.queryParameters['v'] ?? '';
  if (fromQuery.isNotEmpty) return fromQuery;

  final segments = uri.pathSegments.where((s) => s.isNotEmpty).toList();
  if (segments.isEmpty) return '';
  if (segments.length == 1) return segments.first;
  if (segments[segments.length - 2] == 'embed') return segments.last;
  return '';
}

/// The still YouTube publishes for a video, so a card has something to show
/// where no thumbnail was uploaded with the link.
String youTubeThumbnailFor(String videoId) => videoId.isEmpty
    ? ''
    : 'https://img.youtube.com/vi/$videoId/hqdefault.jpg';
