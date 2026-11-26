import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Which decoration actually puts a name on the mobile number field.
///
/// An accessibility scan of the login screen reported the field's spoken
/// output as ", Double-tap to edit text" — an empty name — against
/// WCAG 2.2-4.1.2. The visible "Mobile Number" label is painted by
/// InputDecorator as its own node, so it is not necessarily the name the
/// platform reads for the editable node.
///
/// Same approach as otp_semantics_test.dart: build each candidate and print
/// the resulting semantics, rather than guessing and waiting on a device
/// scan to disagree.
///
/// What this tree can't show: candidates 3-5 all put a real Flutter
/// semantics label on the node, and on paper that should reach Android as
/// `content-desc`. On a real device (uiautomator dump of the installed
/// release build) candidate 4's label still landed in the node's `hint`,
/// not `content-desc` — Flutter's accessibility bridge routes a text
/// field's label into `hint` regardless of how many Semantics nodes
/// contribute it — and BrowserStack's NAF-based "Missing View Type" check
/// only reads `content-desc`. The wrapper was reverted from
/// login_field.dart: it doubles what TalkBack actually says without
/// changing the scan result. Left here as the record of what was tried.
void main() {
  Widget host(Widget child) => ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, _) => MaterialApp(
          home: Scaffold(body: Builder(builder: (context) => child)),
        ),
      );

  /// The decoration LoginFieldWidget builds today, minus the label, so each
  /// candidate below can supply its own.
  InputDecoration decoration({Widget? label, String? labelText}) =>
      InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        label: label,
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white),
        hintText: 'Enter mobile number',
        hintStyle: TextStyle(color: Colors.grey[400]),
        counterText: '',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      );

  Widget field({Widget? label, String? labelText}) => TextField(
        autocorrect: false,
        enableSuggestions: false,
        textInputAction: TextInputAction.done,
        maxLength: 10,
        keyboardType: TextInputType.phone,
        decoration: decoration(label: label, labelText: labelText),
      );

  void dump(WidgetTester tester, String label) {
    final SemanticsNode root =
        tester.binding.pipelineOwner.semanticsOwner!.rootSemanticsNode!;
    final lines = <String>[];
    void walk(SemanticsNode node) {
      final data = node.getSemanticsData();
      final isField = data.hasFlag(SemanticsFlag.isTextField);
      if (isField || data.label.isNotEmpty) {
        lines.add('    textField=$isField label="${data.label}" '
            'hint="${data.hint}"');
      }
      node.visitChildren((child) {
        walk(child);
        return true;
      });
    }

    walk(root);
    debugPrint('  $label');
    for (final line in lines) {
      debugPrint(line);
    }
    if (lines.isEmpty) debugPrint('    (no labelled or field nodes)');
  }

  testWidgets('which decoration names the mobile number field',
      (tester) async {
    final handle = tester.ensureSemantics();

    Future<void> check(String label, Widget child) async {
      await tester.pumpWidget(host(child));
      await tester.pump(const Duration(milliseconds: 50));
      dump(tester, label);
    }

    await check('1. label: Text(...)  [what ships today]',
        field(label: const Text('Mobile Number')));

    await check('2. labelText: ...', field(labelText: 'Mobile Number'));

    await check(
        '3. Semantics(label, textField: true) around label: Text',
        Semantics(
          label: 'Mobile Number',
          textField: true,
          child: field(label: const Text('Mobile Number')),
        ));

    await check(
        '4. MergeSemantics(Semantics(label))',
        MergeSemantics(
          child: Semantics(
            label: 'Mobile Number',
            child: field(label: const Text('Mobile Number')),
          ),
        ));

    await check(
        '5. Semantics(container: true, label)',
        Semantics(
          label: 'Mobile Number',
          container: true,
          explicitChildNodes: false,
          child: field(label: const Text('Mobile Number')),
        ));

    handle.dispose();
  });
}
