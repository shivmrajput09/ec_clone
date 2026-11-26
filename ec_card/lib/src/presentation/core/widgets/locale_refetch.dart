import 'package:ec_card_app/src/presentation/core/locale_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Invokes [onLocaleChanged] whenever the app language changes — never on the
/// first build. Place it below a BlocProvider whose cubit serves
/// language-dependent, server-driven content, so that content reloads on a
/// language switch (via the `Accept-Language` header) without an app restart.
///
/// This mirrors the locale-aware refetch that VenueScreen does inline, so the
/// two behave consistently.
class LocaleRefetch extends StatefulWidget {
  const LocaleRefetch({
    Key? key,
    required this.onLocaleChanged,
    required this.child,
  }) : super(key: key);

  final void Function(BuildContext context) onLocaleChanged;
  final Widget child;

  @override
  State<LocaleRefetch> createState() => _LocaleRefetchState();
}

class _LocaleRefetchState extends State<LocaleRefetch> {
  String? _lastLanguageCode;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Watching here registers a dependency on LocaleProvider, so
    // didChangeDependencies fires again whenever the locale changes.
    final languageCode = context.watch<LocaleProvider>().locale.languageCode;
    if (_lastLanguageCode == languageCode) return;
    final isFirstBuild = _lastLanguageCode == null;
    _lastLanguageCode = languageCode;
    if (!isFirstBuild) {
      widget.onLocaleChanged(context);
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
