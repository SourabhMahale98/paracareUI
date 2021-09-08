import 'package:flutter/material.dart';
import 'package:paracare/utils/colors.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: darkGrey,
      scaffoldBackgroundColor: white,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: darkGrey,
      scaffoldBackgroundColor: black,
      textTheme: ThemeData.dark().textTheme,
    );
  }
}
