import 'dart:math';

import 'package:flutter/material.dart' show Colors, Color;

/// Text color from background color
/// Black or White

extension GetTextColor on Color {
  Color colorFromBackground({double? bias}) {
    int v = sqrt(pow(red, 2) * 0.299 + pow(green, 2) * 0.587 + pow(blue, 2) * 0.114).round();
    return v < (130 + (bias ?? 0)) ? Colors.white : Colors.black;
  }
}
