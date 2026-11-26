import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';

class ButtonsRowWidget extends StatelessWidget {
  const ButtonsRowWidget({
    Key? key,
    required this.secondButtonTitle,
    required this.onCancelPressed,
    required this.onSubmitPressed,
  }) : super(key: key);

  final Function onCancelPressed;
  final Function onSubmitPressed;
  final String secondButtonTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SecondaryButtonWidget(
          width: MediaQuery.of(context).size.width / 2 - 30,
          title: AppLocalizations.of(context)!.cancel,
          onPressed: onCancelPressed,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2 - 30,
          height: 48,
          child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder?>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: const BorderSide(width: 1, color: primaryCyan),
                )),
                backgroundColor:
                    MaterialStateProperty.all<Color?>(primaryCyan)),
            onPressed: () => onSubmitPressed(),
            child: Text(
              secondButtonTitle,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
