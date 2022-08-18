import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:litie/core/constants/colos_const/color_const.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
  brightness: Brightness.light,
  primaryColor: ColorConst.instance.kPrimaryColor,
  primaryColorLight: ColorConst.instance.kPrimaryColor,
  primaryColorDark: ColorConst.instance.kPrimaryColor,
  canvasColor: const Color(0xfffafafa),
  scaffoldBackgroundColor: ColorConst.instance.scaffoldBackgroundColor,
  bottomAppBarColor: ColorConst.instance.white,
  unselectedWidgetColor: const Color(0x8a000000),
  toggleableActiveColor: ColorConst.instance.kPrimaryColor,
  secondaryHeaderColor: const Color(0xffe0f2f1),
  backgroundColor: ColorConst.instance.white,
  dialogBackgroundColor: ColorConst.instance.white,
  indicatorColor: ColorConst.instance.kPrimaryColor,
  hintColor: const Color(0x8a000000),
  errorColor: const Color(0xffd32f2f),
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    minWidth: 88,
    height: 36,
    padding: EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 0),
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    alignedDropdown: false,
    buttonColor: Color(0xffe0e0e0),
   
  ),
  textTheme: TextTheme(
    headline1: TextStyle(
      color: ColorConst.instance.black,
      fontSize: 22,
      fontWeight: FontWeight.w600,
    ),
    headline2: TextStyle(
      color: ColorConst.instance.black,
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
    headline3: TextStyle(
      color: ColorConst.instance.black,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    headline4: TextStyle(
      color: ColorConst.instance.black,
      fontSize: 15,
      fontWeight: FontWeight.w500,
    ),
  ),
  primaryTextTheme: TextTheme(
    headline1: TextStyle(
      color: ColorConst.instance.black,
      fontSize: 22,
      fontWeight: FontWeight.w600,
    ),
    headline2: TextStyle(
      color: ColorConst.instance.black,
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
    headline3: TextStyle(
      color: ColorConst.instance.black,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    headline4: TextStyle(
      color: ColorConst.instance.black,
      fontSize: 15,
      fontWeight: FontWeight.w500,
    ),
  ),
  inputDecorationTheme:  InputDecorationTheme(
    labelStyle: TextStyle(
      color: ColorConst.instance.black,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    helperStyle: TextStyle(
      color: ColorConst.instance.black,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    hintStyle: TextStyle(
      color: ColorConst.instance.black,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    errorStyle: const TextStyle(
      color: Colors.red,
      fontSize: 15,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
  ),
  sliderTheme:  SliderThemeData(
    activeTrackColor: ColorConst.instance.kPrimaryColor,
    inactiveTrackColor: null,
    disabledActiveTrackColor: null,
    disabledInactiveTrackColor: null,
    activeTickMarkColor: null,
    inactiveTickMarkColor: null,
    disabledActiveTickMarkColor: null,
    disabledInactiveTickMarkColor: null,
    thumbColor: null,
    disabledThumbColor: null,
    thumbShape: null,
    overlayColor: null,
    valueIndicatorColor: null,
    valueIndicatorShape: null,
    showValueIndicator: null,
    valueIndicatorTextStyle: const TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  tabBarTheme:  TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: ColorConst.instance.white,
    unselectedLabelColor: ColorConst.instance.scaffoldBackgroundColor,
  ),
  dialogTheme:  const DialogTheme(
      shape: RoundedRectangleBorder(
    side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    ),
    borderRadius: BorderRadius.all(Radius.circular(8)),
  )),
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange).copyWith(
    secondary: ColorConst.instance.white,
  ),
);
}


