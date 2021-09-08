import 'package:flutter/material.dart';

class Media {
  static double? _screenWidth;
  static double? _screenHeight;
  static double _blockWidth = 0;
  static double _blockHeight = 0;
  static double? screenWidth;
  static double? screenHeight;
  static double? text;
  static double? image;
  static double? height;
  static double? width;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
      isPortrait = true;
      if (_screenWidth! < 450) {
        isMobilePortrait = true;
      }
    } else {
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }
    screenWidth = _screenWidth;
    screenHeight = _screenHeight;
    _blockWidth = _screenWidth! / 100;
    _blockHeight = _screenHeight! / 100;

    text = _blockHeight;
    image = _blockWidth;
    height = _blockHeight;
    width = _blockWidth;
  }
}
