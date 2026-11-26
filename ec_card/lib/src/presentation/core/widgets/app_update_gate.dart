import 'package:ec_card_app/src/data/core/app_update/app_update_controller.dart';
import 'package:ec_card_app/src/data/core/app_update/app_update_service.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/semantics.dart';
import 'package:url_launcher/url_launcher.dart';

/// Covers the splash screen with an upgrade prompt when the store has a newer
/// release. Start-up waits behind it (see [AppUpdateController]).
///
/// Placed above the navigator rather than pushed onto it with `showDialog`:
/// start-up replaces and clears routes as it moves from the splash screen to
/// login or the dashboard, and that would take a dialog route with it.
class AppUpdateGate extends StatefulWidget {
  const AppUpdateGate({Key? key, required this.child, this.controller})
      : super(key: key);

  final Widget child;

  /// Replaced in tests.
  final AppUpdateController? controller;

  @override
  State<AppUpdateGate> createState() => _AppUpdateGateState();
}

class _AppUpdateGateState extends State<AppUpdateGate> {
  late final AppUpdateController _controller =
      widget.controller ?? AppUpdateController.instance;

  bool _wasShown = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onChanged);
    // Start-up normally begins the check first; this covers the gate being
    // built before it does.
    _controller.waitForStartUp();
  }

  @override
  void dispose() {
    _controller.removeListener(_onChanged);
    super.dispose();
  }

  void _onChanged() {
    if (!mounted) return;
    setState(() {});

    final isShown = _controller.pending != null;
    if (isShown && !_wasShown) {
      // A field focused underneath would keep the keyboard over the prompt.
      FocusManager.instance.primaryFocus?.unfocus();
      _announce();
    }
    _wasShown = isShown;
  }

  /// Tells a screen reader the prompt has appeared. It isn't a route, so
  /// nothing else would move their attention to it.
  void _announce() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final update = _controller.pending;
      if (!mounted || update == null) return;

      final l10n = AppLocalizations.of(context)!;
      SemanticsService.sendAnnouncement(
        View.of(context),
        update.isRequired
            ? l10n.update_required_title
            : l10n.update_available_title,
        Directionality.of(context),
      );
    });
  }

  Future<void> _openStore(AppUpdate update) async {
    // An optional update lets start-up carry on behind the store, so someone
    // who comes back without updating is already in the app.
    _controller.postpone();

    try {
      final opened = await launchUrl(
        update.storeUrl,
        mode: LaunchMode.externalApplication,
      );
      if (!opened) appLog('AppUpdateGate: store link did not open');
    } catch (e) {
      appLog('AppUpdateGate: could not open the store -> $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final update = _controller.pending;

    return Stack(
      fit: StackFit.expand,
      children: [
        ExcludeSemantics(excluding: update != null, child: widget.child),
        if (update != null) ...[
          ModalBarrier(
            dismissible: false,
            color: CupertinoDynamicColor.resolve(
                kCupertinoModalBarrierColor, context),
          ),
          _AppUpdateDialog(
            update: update,
            onUpdate: () => _openStore(update),
            onLater: update.isRequired ? null : _controller.postpone,
          ),
        ],
      ],
    );
  }
}

class _AppUpdateDialog extends StatelessWidget {
  const _AppUpdateDialog({
    required this.update,
    required this.onUpdate,
    required this.onLater,
  });

  final AppUpdate update;
  final VoidCallback onUpdate;

  /// Null when the update is required.
  final VoidCallback? onLater;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    // Styled like the registration notice on the login screen, which is where
    // this prompt usually appears.
    return CupertinoAlertDialog(
      title: Text(
        update.isRequired
            ? l10n.update_required_title
            : l10n.update_available_title,
      ),
      content: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Text(
          update.isRequired
              ? l10n.update_required_message
              : l10n.update_available_message,
        ),
      ),
      actions: [
        if (onLater != null)
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: onLater,
            child: Text(l10n.update_later),
          ),
        CupertinoDialogAction(
          onPressed: onUpdate,
          child: Text(l10n.update_now),
        ),
      ],
    );
  }
}
