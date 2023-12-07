import 'package:flutter/material.dart';

extension Dimensions on BuildContext {
  double height() {
    return MediaQuery.of(this).size.height;
  }

  double width() {
    return MediaQuery.of(this).size.width;
  }
}

extension Responsive on int {
  double w() {
    double screenWidth = MediaQueryData.fromView(
            WidgetsBinding.instance.platformDispatcher.views.single)
        .size
        .width;
    return this * (screenWidth / 414);
  }

  double h() {
    double screenHeight = MediaQueryData.fromView(
            WidgetsBinding.instance.platformDispatcher.views.single)
        .size
        .height;
    return this * (screenHeight / 896);
  }
}
