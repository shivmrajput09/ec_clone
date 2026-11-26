import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/app_colors.dart';

/// A code-entry field that is announced by name.
///
/// Replaces `pin_code_fields`, which ships no semantics of its own: it paints
/// its boxes over a hidden `TextFormField`, and that hidden field is what
/// reaches the platform as an editable node. Wrapping the package widget in
/// `Semantics` does not name that node — the label lands on a container the
/// Android accessibility tree discards, leaving the focusable field unnamed.
/// Three wrapper variations were tried on device and none took effect.
///
/// Here the name is set through the field's own `InputDecoration`, so it
/// belongs to the same node that carries the editing role and actions. The
/// label is styled to take no visible space: the screen already shows its own
/// instruction text, and the boxes are the visual affordance.
///
/// The boxes are decoration only — they are excluded from the semantics tree
/// so the field is announced once rather than seven times.
class OtpInputField extends StatefulWidget {
  const OtpInputField({
    Key? key,
    required this.semanticLabel,
    required this.onChanged,
    this.length = 6,
    this.autoFocus = false,
  }) : super(key: key);

  /// Accessible name for the field, e.g. "OTP". Required — an unnamed code
  /// field is the defect this widget exists to fix.
  final String semanticLabel;

  final ValueChanged<String> onChanged;
  final int length;
  final bool autoFocus;

  @override
  State<OtpInputField> createState() => _OtpInputFieldState();
}

class _OtpInputFieldState extends State<OtpInputField> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => setState(() {}));
    _focusNode.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  /// Index of the box the next character will go into.
  int get _activeIndex => _controller.text.length.clamp(0, widget.length - 1);

  Widget _box(int index) {
    final filled = index < _controller.text.length;
    final isActive = _focusNode.hasFocus && index == _activeIndex;

    return Container(
      width: 40.h,
      height: 45.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: isActive || filled ? primaryCyan : Colors.grey,
          width: 2,
        ),
      ),
      child: Text(
        filled ? '*' : '',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Visual only. Taps fall through to the field underneath, and the
        // boxes never reach a screen reader.
        Positioned.fill(
          child: ExcludeSemantics(
            child: IgnorePointer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(widget.length, (index) => _box(index)),
              ),
            ),
          ),
        ),
        TextField(
          controller: _controller,
          focusNode: _focusNode,
          autofocus: widget.autoFocus,
          autocorrect: false,
          enableSuggestions: false,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
          autofillHints: const [AutofillHints.oneTimeCode],
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(widget.length),
          ],
          onChanged: widget.onChanged,
          showCursor: false,
          // The entry itself is invisible: the boxes above render the value.
          style: const TextStyle(color: Colors.transparent, height: 0.01),
          decoration: InputDecoration(
            // Names the field. InputDecorator marks its children as merge-up
            // (see _RenderDecoration.childSemanticsConfigurationDelegate), so
            // the label folds into the same node that carries the editing
            // role — but only while the label widget actually exists.
            //
            // `always` is load-bearing: with `never`, Material stops building
            // the label once the field has focus or content, and an unbuilt
            // label merges nothing. The field is focused for most of its life
            // here, so the name would vanish exactly when it is needed.
            //
            // Transparent and effectively zero-sized: the screen already
            // carries its own instruction text, and the boxes are the visual
            // affordance.
            labelText: widget.semanticLabel,
            labelStyle: const TextStyle(
              color: Colors.transparent,
              fontSize: 0.01,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            counterText: '',
            contentPadding: EdgeInsets.zero,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
          ),
        ),
      ],
    );
  }
}
