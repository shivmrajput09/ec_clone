import 'package:ec_card_app/src/data/core/api/api_endpoints.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// The only host these views are allowed to open.
///
/// Taken from the Terms URL so it follows the environment toggle rather than
/// being written out again here, where it could drift.
final String _allowedHost = Uri.parse(APIEndpoints.TNC_URL).host;

/// Whether [url] may be opened inside one of the policy views.
///
/// These views exist to show the service's own Terms, Privacy and
/// Accessibility pages. Left unrestricted, a link on one of those pages —
/// or an injected one — could navigate the view anywhere and still look to
/// the user like part of the app, which is the shape a credential-harvesting
/// page would want. Restricting navigation to the service's own host over
/// HTTPS keeps what is shown inside the app to what the app is meant to show.
///
/// This governs navigation only. Stylesheets and fonts the pages pull from
/// elsewhere are unaffected, so the pages still render as intended.
///
/// JavaScript is deliberately left enabled, against the hardening review's
/// recommendation, for two reasons.
///
/// These pages are delivered as a single-page app whose content is rendered on
/// the client, so disabling it would leave Terms, Privacy and the
/// Accessibility Statement blank.
///
/// And they are translated on the client too. The app appends `?lang=` to the
/// URL, but the server ignores it — every language returns a byte-identical
/// response — so the page reads the parameter and renders the right
/// translation itself. Without JavaScript there would be no translation
/// mechanism at all.
///
/// Serving these as static HTML instead would therefore mean server-rendering
/// three pages in fifteen languages, switching on that parameter. That is a
/// backend change, not a hosting one, and it should be weighed against what
/// the restriction here already prevents.
NavigationDecision policyNavigationDecision(NavigationRequest request) {
  final target = Uri.tryParse(request.url);

  if (target != null &&
      target.scheme == 'https' &&
      target.host == _allowedHost) {
    return NavigationDecision.navigate;
  }

  appLog('WebView navigation blocked: ${target?.host ?? 'unparseable'}');
  return NavigationDecision.prevent;
}
