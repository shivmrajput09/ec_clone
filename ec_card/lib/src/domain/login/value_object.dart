import 'dart:async';

class PhoneNumber {
  final String value;

  const PhoneNumber._(this.value);

  factory PhoneNumber(String input) {
    return PhoneNumber._(input);
  }

  FutureOr<bool> isValid() async {
    final regex = RegExp(r'(^[0-9]+$)');
    final isValid = regex.hasMatch(value);

    return isValid == true;
  }
}
