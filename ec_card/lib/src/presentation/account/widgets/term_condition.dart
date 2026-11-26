import 'package:ec_card_app/src/data/core/api/api_endpoints.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/appbar.dart';
import 'package:ec_card_app/src/presentation/core/widgets/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:ec_card_app/src/presentation/core/widgets/webview_policy.dart';

class TermsConditionsScreen extends StatefulWidget {
  const TermsConditionsScreen({Key? key}) : super(key: key);

  @override
  State<TermsConditionsScreen> createState() => _TermsConditionsScreenState();
}

class _TermsConditionsScreenState extends State<TermsConditionsScreen> {
  int progress = 0;
  WebViewController? _controller;
  String? _loadedUrl;
  String? _lastLocale;
  String? _tsUrl;

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
    return Scaffold(
      backgroundColor: white,
      appBar: CustomAppBar(appBar: AppBar(), title: AppLocalizations.of(context)!.ecCard),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(
              children: <Widget>[
                Builder(
                  builder: (context) {
                    // The destination page renders in the requested
                    // language when a `lang` query param is present.
                    final lang = Localizations.localeOf(context).languageCode;
                    if (_lastLocale != lang) {
                      _lastLocale = lang;
                      _tsUrl =
                          '${APIEndpoints.TNC_URL}?lang=$lang&ts=${DateTime.now().millisecondsSinceEpoch}';
                    }
                    _loadUrlIfNeeded(_tsUrl!);
                    // Without a name of its own the container announces the
                    // bare implementation term "Webview". Name it by the
                    // content it holds, using the existing localized string.
                    return Semantics(
                      container: true,
                      label: AppLocalizations.of(context)!.terms_condition,
                      child: WebViewWidget(controller: _controller!),
                    );
                  },
                ),
                progress == 0
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Stack(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.h, left: 48.w, right: 48.w),
            child: SecondaryButtonWidget(
              title: AppLocalizations.of(context)!.close,
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }
}
