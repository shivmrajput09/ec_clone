import 'dart:async';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';

class ResendOtpButton extends StatefulWidget {
  const ResendOtpButton({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  final String phoneNumber;

  @override
  _ResendOtpButtonState createState() => _ResendOtpButtonState();
}

class _ResendOtpButtonState extends State<ResendOtpButton> {
  static const timeout = 59;

  late Timer _timer;

  int _start = timeout;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: _start != 0
            ? null
            : () {
                if (_start == 0) {
                  setState(() {
                    _start = timeout;
                  });
                  startTimer();
                }
              },
        child: Text(
          _start == 0
              ? AppLocalizations.of(context)!.resend_otp
              : AppLocalizations.of(context)!.resend_otp_countdown(
                  // Wrap the time in LTR isolate chars (U+2066 … U+2069) so it
                  // renders as a self-contained left-to-right run at its logical
                  // position inside RTL (Urdu/Arabic) text, instead of drifting
                  // to the wrong side.
                  "\u{2066}$convertToMinutes:$convertToSeconds\u{2069}",
                ),
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 16.0,
                color: _start == 0
                    ? primaryBackgroundColor
                    : primaryBackgroundColor.withOpacity(0.8),
              ),
        ));
  }

  String get convertToMinutes => (_start ~/ 60).toString().padLeft(2, '0');

  String get convertToSeconds => (_start % 60).toString().padLeft(2, '0');
}
