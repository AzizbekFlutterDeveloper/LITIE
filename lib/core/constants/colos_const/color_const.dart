import 'package:flutter/material.dart';

class ColorConst {
  static final ColorConst _instance = ColorConst._init();
  static ColorConst get instance => _instance;

  Color kPrimaryColor = const Color(0xFFF56F15);
  Color white = const Color(0xffFFFFFF);
  Color black = const Color(0xff0D1836);
  Color scaffoldBackgroundColor = const Color(0xffF9F9F9);
  Color grey = Colors.grey;

  ColorConst._init();
}
