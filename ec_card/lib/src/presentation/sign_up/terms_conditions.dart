import 'package:ec_card_app/src/application/loading_status/loading_status_cubit.dart';
import 'package:ec_card_app/src/data/core/api/api_endpoints.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/back_icon.dart';
import 'package:ec_card_app/src/presentation/sign_up/sign_up.dart';
import 'package:ec_card_app/src/presentation/sign_up/widgets/button_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:ec_card_app/src/presentation/core/widgets/webview_policy.dart';

class TermsConditionsPage extends StatefulWidget {
  const TermsConditionsPage({Key? key}) : super(key: key);

  @override
  State<TermsConditionsPage> createState() => _TermsConditionsPageState();
}

class _TermsConditionsPageState extends State<TermsConditionsPage> {
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
    final locale = Localizations.localeOf(context).languageCode;
    if (_lastLocale != locale) {
      _lastLocale = locale;
      _tsUrl =
          '${APIEndpoints.TNC_URL}?lang=$locale&ts=${DateTime.now().millisecondsSinceEpoch}';
    }
    _loadUrlIfNeeded(_tsUrl!);
    return BlocBuilder<LoadingStatusCubit, LoadingStatusState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 60,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: BackIcon(
                semanticLabel: AppLocalizations.of(context)!.backButtonLabel,
              ),
              color: primaryBackgroundColor,
            ),
            elevation: 0.5,
            shadowColor: primaryCyan,
            centerTitle: true,
            title: Text(AppLocalizations.of(context)!.terms_condition),
          ),
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      // Without a name of its own the container announces the
                      // bare implementation term "Webview". Name it by the
                      // content it holds, but not with the app bar title: the
                      // same name twice on one screen is its own finding. The
                      // page's own heading reads "App Terms and Conditions".
                      Semantics(
                        container: true,
                        label:
                            AppLocalizations.of(context)!.app_terms_conditions,
                        child: WebViewWidget(controller: _controller!),
                      ),
                      progress == 0
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : Stack(),
                    ],
                  ),
                ),
                /*
                const Expanded(
                  child: WebView(
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl:
                        "https://ec-cardapp.com/user/terms-and-conditions",
                  ),
                ),
                */
                ButtonsRowWidget(
                  secondButtonTitle: AppLocalizations.of(context)!.accept_close,
                  onCancelPressed: () {
                    Navigator.pop(context);
                  },
                  onSubmitPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
