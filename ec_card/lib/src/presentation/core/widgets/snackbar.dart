import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

/// The bar currently on screen, if any.
///
/// `show()` pushes a route each time it is called and never looks at what is
/// already up, so two messages arriving close together stack. Visually that is
/// untidy; for a screen reader it puts two elements with the same name on one
/// screen, which fails an accessibility scan. Holding a reference lets a new
/// message replace the old one instead of piling on top of it.
Flushbar<dynamic>? _current;
String? _currentMessage;

extension SnackbarX on String {
  void getSnackbar(BuildContext context) {
    final previous = _current;

    // The same message arriving again while it is still up is a repeat of one
    // event, not a second event — several parts of the app report the same
    // failure independently. Leave the bar that is already saying it.
    if (previous != null && _currentMessage == this && previous.isShowing()) {
      return;
    }

    if (previous != null && previous.isShowing()) {
      previous.dismiss();
    }

    // Supplying `messageText` rather than `message` so the announcement can be
    // controlled directly. Passing a plain string leaves the message on both
    // the bar's own node and the text node inside it, so a screen reader reads
    // it twice; a single node marked as a live region announces it once, and
    // announces it at all — a bar that appears without one can be missed
    // entirely by someone not looking at the screen.
    final flushbar = Flushbar(
      messageText: Semantics(
        container: true,
        liveRegion: true,
        label: this,
        excludeSemantics: true,
        child: Text(
          this,
          style: TextStyle(
            color: Theme.of(context).colorScheme.surface,
            fontSize: 16.0,
          ),
        ),
      ),
      margin: const EdgeInsets.all(8.0),
      borderRadius: BorderRadius.circular(4.0),
      flushbarStyle: FlushbarStyle.FLOATING,
      duration: const Duration(seconds: 3),
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      onStatusChanged: (status) {
        // Release the reference once the bar has gone, so a later message is
        // never compared against one that is no longer on screen.
        if (status == FlushbarStatus.DISMISSED) {
          _current = null;
          _currentMessage = null;
        }
      },
    );

    _current = flushbar;
    _currentMessage = this;
    flushbar.show(context);
  }
}
