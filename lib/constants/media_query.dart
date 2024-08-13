import 'package:flutter/material.dart';

extension MediaQueryUtil on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}

void navigateTo(
    {required BuildContext context,
    required Widget screen,
    bool replace = false}) {
  if (replace == false) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  } else {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => screen));
  }
}
