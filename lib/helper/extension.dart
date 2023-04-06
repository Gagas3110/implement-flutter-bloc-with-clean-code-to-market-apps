import 'package:news_app/helper/snackbar.dart';

import 'package:flutter/material.dart';

extension Scaler on BuildContext {
  double scaleFont(double initialFontSize) {
    return (MediaQuery.of(this).size.width * 0.0027) * initialFontSize;
  }

  double scaleHeight(double initialHeight) {
    return (MediaQuery.of(this).size.height * 0.0011) * initialHeight;
  }

  double deviceWidth(double width) {
    return (MediaQuery.of(this).size.width) * width;
  }

  double deviceHeight(double height) {
    return (MediaQuery.of(this).size.height) * height;
  }
}

extension SnackBars on BuildContext {
  failSnackbar(String message) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(failSnackBar(message));
  }

  succesSnackBar(String message) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(successSnackBar(message));
  }
}
