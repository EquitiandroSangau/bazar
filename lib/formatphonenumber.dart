

import 'package:flutter/services.dart';

class AngolaPhoneFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue) {

    String digits = newValue.text.replaceAll(RegExp(r'\D'), '');

    if (digits.length > 9) {
      digits = digits.substring(0, 9);
    }

    String formatted = '';

    if (digits.length > 6) {
      formatted =
          '${digits.substring(0, 3)} ${digits.substring(3, 6)} ${digits.substring(6)}';
    } else if (digits.length > 3) {
      formatted =
          '${digits.substring(0, 3)} ${digits.substring(3)}';
    } else {
      formatted = digits;
    }

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
