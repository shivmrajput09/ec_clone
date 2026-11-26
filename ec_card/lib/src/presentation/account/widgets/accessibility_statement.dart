import 'package:ec_card_app/src/data/core/api/api_endpoints.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/appbar.dart';
import 'package:ec_card_app/src/presentation/core/widgets/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:ec_card_app/src/presentation/core/widgets/webview_policy.dart';

/// The accessibility statement is served as a localized web page. The WebView
/// is a separate browser context that does not carry the app's selected locale,
/// so the language must be passed explicitly as a `?lang=` query parameter —
/// same approach as the terms & conditions screen.
///
/// The host comes from [APIEndpoints] so it follows the same environment
/// toggle as the terms and privacy pages instead of being pinned to one
/// environment.
const String kAccessibilityStatementUrl = APIEndpoints.ACCESSIBILITY_URL;

class AccessibilityStatementScreen extends StatefulWidget {
  const AccessibilityStatementScreen({Key? key}) : super(key: key);

  @override
  State<AccessibilityStatementScreen> createState() =>
      _AccessibilityStatementScreenState();
}

class _AccessibilityStatementScreenState
    extends State<AccessibilityStatementScreen> {
  int progress = 0;
  WebViewController? _controller;
  String? _loadedUrl;
  String? _lastLocale;
  String? _tsUrl; // URL (with a cache-busting timestamp) for the current locale

  void _loadUrlIfNeeded(String url) {
    _controller ??= WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: policyNavigationDecision,
          onPageFinished: (_) {
            if (mounted) {
              setState(() => progress = 1);
            }
          },
        ),
      );

    if (_loadedUrl != url) {
      progress = 0;
      _loadedUrl = url;
      // Bypass the WebView cache so a language change loads fresh content
      // rather than a previously-cached copy in the old language.
      _controller!.clearCache();
      _controller!.loadRequest(
        Uri.parse(url),
        headers: const {'Cache-Control': 'no-cache', 'Pragma': 'no-cache'},
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    // Rebuild the URL (with a fresh cache-busting timestamp) only when the
    // locale changes — not on every build — so we don't loop reloading.
    if (_lastLocale != locale) {
      _lastLocale = locale;
      _tsUrl =
          '$kAccessibilityStatementUrl?lang=$locale&ts=${DateTime.now().millisecondsSinceEpoch}';
    }
    _loadUrlIfNeeded(_tsUrl!);
    return Scaffold(
      backgroundColor: white,
      appBar: CustomAppBar(
          appBar: AppBar(),
          title: AppLocalizations.of(context)!.accessibility_statement),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(
              children: <Widget>[
                // Without a name of its own the container announces the bare
                // implementation term "Webview". Name it by its content, but
                // not with the screen title alone: the same name twice on one
                // screen is its own finding. The page's own heading reads
                // "eC-Card Accessibility Statement".
                Semantics(
                  container: true,
                  label:
                      'eC-Card ${AppLocalizations.of(context)!.accessibility_statement}',
                  child: WebViewWidget(controller: _controller!),
                ),
                progress == 0
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 48.w),
              child: SecondaryButtonWidget(
                title: AppLocalizations.of(context)!.close,
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
