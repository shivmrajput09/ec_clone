import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

/// Which wrapper actually puts a name on the node a screen reader lands on.
///
/// PinCodeTextField paints six boxes over a hidden TextFormField, and that
/// hidden field is what reaches the platform as an editable node. Labelling
/// it from an ancestor failed on device more than once, so this test prints
/// the resulting semantics for each candidate — seconds per iteration
/// instead of a full rebuild, reinstall and re-registration.
///
/// The field is built with the same arguments the app passes, because the
/// first version of this test used a bare PinCodeTextField and reported a
/// wrapper working that then did nothing on device.
void main() {
  Widget host(Widget child) => MaterialApp(
        home: Scaffold(body: Builder(builder: (context) => child)),
      );

  /// Exactly what OtpFieldWidget builds.
  Widget pinField(BuildContext context) => SizedBox(
        width: double.infinity,
        height: 50,
        child: PinCodeTextField(
          keyboardType: TextInputType.number,
          appContext: context,
          animationDuration: const Duration(milliseconds: 0),
          animationType: AnimationType.none,
          enableActiveFill: true,
          length: 6,
          cursorHeight: 25,
          autoFocus: true,
          obscureText: true,
          obscuringCharacter: "*",
          pinTheme: PinTheme(
            errorBorderColor: Colors.red,
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(6),
            borderWidth: 2,
            fieldHeight: 45,
            fieldWidth: 40,
            inactiveColor: Colors.grey,
            selectedFillColor: Colors.white,
            activeFillColor: Colors.white,
            inactiveFillColor: Colors.white,
          ),
          onChanged: (_) {},
        ),
      );

  void dump(WidgetTester tester, String label) {
    final SemanticsNode root =
        tester.binding.pipelineOwner.semanticsOwner!.rootSemanticsNode!;
    final lines = <String>[];
    void walk(SemanticsNode node) {
      final data = node.getSemanticsData();
      final isField = data.hasFlag(SemanticsFlag.isTextField);
      final focused = data.hasFlag(SemanticsFlag.isFocused);
      if (isField || data.label.isNotEmpty) {
        lines.add('    textField=$isField focused=$focused '
            'label="${data.label}"');
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

  testWidgets('which wrapper labels the editable node', (tester) async {
    final handle = tester.ensureSemantics();

    Future<void> check(String label, Widget Function(BuildContext) build) async {
      await tester.pumpWidget(host(Builder(builder: build)));
      await tester.pump(const Duration(milliseconds: 50));
      dump(tester, label);
    }

    await check('1. no wrapper', pinField);

    await check(
        '2. Semantics(label, textField: true)',
        (context) => Semantics(
              label: 'OTP',
              textField: true,
              child: pinField(context),
            ));

    await check(
        '3. MergeSemantics(Semantics(label, textField: true))',
        (context) => MergeSemantics(
              child: Semantics(
                label: 'OTP',
                textField: true,
                child: pinField(context),
              ),
            ));

    await check(
        '4. Semantics(container, explicitChildNodes: false)',
        (context) => Semantics(
              label: 'OTP',
              container: true,
              explicitChildNodes: false,
              child: pinField(context),
            ));

    await check(
        '5. Semantics(label only)',
        (context) => Semantics(
              label: 'OTP',
              child: pinField(context),
            ));

    await check(
        '6. MergeSemantics(Semantics(label only))',
        (context) => MergeSemantics(
              child: Semantics(
                label: 'OTP',
                child: pinField(context),
              ),
            ));

    handle.dispose();
  });
}
