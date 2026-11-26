import 'package:ec_card_app/src/data/quiz/model/option_item.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:flutter/material.dart';

class QuizOptionWidget extends StatelessWidget {
  const QuizOptionWidget({
    Key? key,
    required this.option,
    required this.groupValue,
    required this.questionTitle,
    this.onChanged,
  }) : super(key: key);

  // final bool selected;
  final void Function(OptionItem?)? onChanged;
  final OptionItem option;
  final OptionItem groupValue;

  /// The question this option belongs to, used to keep the accessible name
  /// unique. Several questions render on one screen and short answers repeat
  /// across them — two "Yes" options on a page cannot be told apart by ear,
  /// or referred to by an assistive technology.
  final String questionTitle;

  @override
  Widget build(BuildContext context) {
    // RadioListTile rather than a ListTile with a leading Radio: the latter
    // exposes the control and the answer text as two separate accessibility
    // nodes, so a screen reader announces a bare "not checked" for the radio
    // and reads the answer as unrelated static text. RadioListTile emits one
    // node carrying the answer, the radio role and the checked state, and
    // makes the whole row tappable rather than just the radio glyph.
    return RadioListTile<OptionItem>(
      minVerticalPadding: 0,
      contentPadding: EdgeInsets.zero,
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: primaryCyan,
      toggleable: true,
      groupValue: groupValue,
      onChanged: onChanged,
      value: option,
      // The answer leads, so the name still starts with the text on screen,
      // then the question disambiguates it from an identically worded answer
      // under a different question on the same page.
      title: Semantics(
        label: '${option.optionTitle}, $questionTitle',
        excludeSemantics: true,
        child: Text(
          option.optionTitle,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w400,
              ),
        ),
      ),
    );
  }
}
