import 'package:flutter/material.dart';
import 'package:paracare/utils/size_config.dart';

import 'colors.dart';

var focusBorder = OutlineInputBorder(
  borderSide: BorderSide(color: primary, width: 0.5 * Media.width!),
);

var enableBorder = OutlineInputBorder(
  borderSide: BorderSide(color: lightGrey, width: 0.3 * Media.width!),
);

var disabledBorder = OutlineInputBorder(
  borderSide: BorderSide(color: lightGrey, width: 0.5 * Media.width!),
);

var errorBorder = OutlineInputBorder(
  borderSide: BorderSide(color: red, width: 0.5 * Media.width!),
);

var labelStyle =
    TextStyle(fontSize: 1.9 * Media.text!, fontWeight: FontWeight.w500);

var fieldStyle =
    TextStyle(fontSize: 2.1 * Media.text!, fontWeight: FontWeight.w500);

var fieldPadding = EdgeInsets.symmetric(
    vertical: 1.5 * Media.height!, horizontal: 3 * Media.width!);

// Dialog title
var dialogTitle =
    TextStyle(fontSize: 2.4 * Media.text!, fontWeight: FontWeight.bold);

var dialogSub = TextStyle(fontSize: 2 * Media.text!);

// Menu Icon Inkwell Border
var menuIconRadius = BorderRadius.all(Radius.circular(2 * Media.width!));

var boxShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.5),
  blurRadius: 30.0,
  spreadRadius: 5.0,
  offset: Offset(
    5.0,
    15.0,
  ),
);

var boxShadow2 = BoxShadow(
  color: Colors.grey.withOpacity(0.3),
  blurRadius: 20.0,
  spreadRadius: 5.0,
  offset: Offset(
    5.0,
    15.0,
  ),
);

var boxShadow3 = BoxShadow(
  color: Colors.grey.withOpacity(0.15),
  blurRadius: 8.0,
  spreadRadius: 4.0,
  offset: Offset(
    5.0,
    10.0,
  ),
);
