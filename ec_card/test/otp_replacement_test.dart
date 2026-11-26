import 'package:ec_card_app/src/presentation/core/widgets/otp_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('the replacement field is a single named text field',
      (tester) async {
    final handle = tester.ensureSemantics();

    await tester.pumpWidget(ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, _) => MaterialApp(
        home: Scaffold(
          body: SizedBox(
            height: 50,
            child: OtpInputField(
              semanticLabel: 'OTP',
              onChanged: (_) {},
            ),
          ),
        ),
      ),
    ));
    await tester.pump(const Duration(milliseconds: 50));

    final SemanticsNode root =
        tester.binding.pipelineOwner.semanticsOwner!.rootSemanticsNode!;
    final found = <String>[];
    void walk(SemanticsNode node) {
      final data = node.getSemanticsData();
      if (data.hasFlag(SemanticsFlag.isTextField) || data.label.isNotEmpty) {
        found.add('textField=${data.hasFlag(SemanticsFlag.isTextField)} '
            'label="${data.label}"');
      }
      node.visitChildren((child) {
        walk(child);
        return true;
      });
    }

    walk(root);
    for (final line in found) {
      debugPrint('  $line');
    }

    expect(found.length, 1, reason: 'expected exactly one labelled/field node');
    expect(found.single, contains('textField=true'));
    expect(found.single, contains('label="OTP"'));

    handle.dispose();
  });
}
