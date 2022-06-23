import 'dart:ui';

import 'package:flutter/material.dart';

extension PaddingExtensions on Widget {
  Padding paddingLeft(double padding) => Padding(
        padding: EdgeInsets.only(left: padding),
        child: this,
      );
  Padding paddingRight(double padding) => Padding(
        padding: EdgeInsets.only(right: padding),
        child: this,
      );
  Padding paddingTop(double padding) => Padding(
        padding: EdgeInsets.only(top: padding),
        child: this,
      );
  Padding paddingBottom(double padding) => Padding(
        padding: EdgeInsets.only(bottom: padding),
        child: this,
      );
  Padding paddingVertical(double padding) => Padding(
        padding: EdgeInsets.symmetric(vertical: padding),
        child: this,
      );
  Padding paddingHorizontal(double padding) => Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: this,
      );
  Padding paddingFromLTRB(double left, double top, double right, double bottom) => Padding(
        padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        child: this,
      );
}

extension Scrollnotify on Widget {
  Widget scrollListener() => NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          if (scrollNotification is ScrollStartNotification) {
            print(scrollNotification.metrics);
          } else if (scrollNotification is ScrollUpdateNotification) {
            print(scrollNotification.metrics);
          } else {
            print(scrollNotification.metrics);
          }

          return true;
        },
        child: this,
      );
}

extension Backdrop on Widget {
  Widget backdropFilter({double? borderRadius, double? sigmaX, double? sigmaY}) => ClipRRect(
        borderRadius: borderRadius != null ? BorderRadius.circular(borderRadius) : BorderRadius.zero,
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: sigmaX ?? 10,
            sigmaY: sigmaY ?? 10,
          ),
          child: this,
        ),
      );
}
