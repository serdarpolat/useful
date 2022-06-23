import 'dart:math';

import 'package:flutter/material.dart' show Colors, Color;

/// Text color from background color
/// Black or White

extension ColorExtensions on Color {
  Color textColorFromBG({double? bias}) {
    int v = sqrt(pow(red, 2) * 0.299 + pow(green, 2) * 0.587 + pow(blue, 2) * 0.114).round();
    return v < (130 + (bias ?? 0)) ? Colors.white : Colors.black;
  }

  Color colorFromHex(String colorString) {
    if (colorString.contains('#')) {
      colorString = colorString.replaceAll('#', '');
    }

    colorString = 'FF' + colorString;
    int val = 0;

    int len = colorString.length;

    for (int i = 0; i < len; i++) {
      int hexDigit = colorString.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw const FormatException('An error occurred when converting a color');
      }
    }
    return Color(val);
  }
}
