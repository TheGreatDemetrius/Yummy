import 'package:flutter/material.dart';

class Dimensions {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static late Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionateScreenHeight(double inputHeight) =>
    (inputHeight / 812) * Dimensions.screenHeight;

double getProportionateScreenWidth(double inputWidth) =>
    (inputWidth / 375) * Dimensions.screenHeight;