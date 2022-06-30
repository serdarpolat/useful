import 'package:flutter/material.dart';
import 'dart:math' as Math;

class Func {
  Func._();

  static double normalize({
    required double min,
    required double max,
    required double data,
  }) {
    return (data - min) / (max - min) > 1
        ? 1
        : (data - min) / (max - min) < 0
            ? 0
            : (data - min) / (max - min);
  }

  static List<List<dynamic>> listToSublists(
    List<dynamic> list,
    int sublistCount,
  ) {
    if (list.length <= sublistCount) {
      return [list];
    }

    int pages = (list.length / sublistCount).ceil();

    List<List<dynamic>> newList = [];

    for (var i = 0; i < pages; i++) {
      if ((i * sublistCount) + sublistCount > list.length) {
        newList.add(list.sublist(i * sublistCount));
      } else {
        newList.add(
            list.sublist(i * sublistCount, (i * sublistCount) + sublistCount));
      }
    }

    return newList;
  }

  Offset quadraticCurve(
    Offset start,
    Offset end,
    Offset control,
    double t,
  ) {
    return Offset(
        Math.pow((1 - t), 2) * start.dx +
            2 * (1 - t) * t * control.dx +
            Math.pow(t, 2) * end.dx,
        Math.pow((1 - t), 2) * start.dy +
            2 * (1 - t) * t * control.dy +
            Math.pow(t, 2) * end.dy);
  }

  Offset cubicCurve(
    Offset start,
    Offset end,
    Offset control1,
    Offset control2,
    double t,
  ) {
    return Offset(
        Math.pow((1 - t), 3) * start.dx +
            3 * Math.pow((1 - t), 2) * t * control1.dx +
            3 * (1 - t) * Math.pow(t, 2) * control2.dx +
            Math.pow(t, 3) * end.dx,
        Math.pow((1 - t), 3) * start.dy +
            3 * Math.pow((1 - t), 2) * t * control1.dy +
            3 * (1 - t) * Math.pow(t, 2) * control2.dy +
            Math.pow(t, 3) * end.dy);
  }
}
