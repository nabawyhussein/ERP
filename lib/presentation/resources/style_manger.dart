import 'package:flutter/cupertino.dart';

import 'constant_manger.dart';
import 'font_manger.dart';

TextStyle _getTextStyleArabic(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: FontsManger.fontFamilyArabic);
}

TextStyle _getTextStyleRoboto(
    double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: FontsManger.fontFamilyRoboto);
}

TextStyle _getTextStylePoppins(
    double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: FontsManger.fontFamilyPoppins);
}

///regular Style
TextStyle getRegularStyle({double fontSize = 12, Color? color}) {
  return AppConstant.locale == Locale('en')
      ? _getTextStylePoppins(fontSize, FontWeightManger.regular, color!)
      : _getTextStyleArabic(fontSize, FontWeightManger.regular, color!);
}

///medium Style
TextStyle getMediumStyle({double fontSize = 12, Color? color}) {
  return AppConstant.locale == Locale('en')
      ? _getTextStylePoppins(fontSize, FontWeightManger.medium, color!)
      : _getTextStyleArabic(fontSize, FontWeightManger.medium, color!);
}

///light Style
TextStyle getLightStyle({double fontSize = 12, Color? color}) {
  return AppConstant.locale == Locale('en')
      ? _getTextStylePoppins(fontSize, FontWeightManger.light, color!)
      : _getTextStyleArabic(fontSize, FontWeightManger.light, color!);
}

///bold Style
TextStyle getArabicCairoBoldStyle({
  double fontSize = 12,
  Color? color,
}) {
  print("AppConstant.locale");
  print(AppConstant.locale);
  return AppConstant.locale == Locale('en')
      ? _getTextStylePoppins(fontSize, FontWeightManger.bold, color!)
      : _getTextStyleArabic(fontSize, FontWeightManger.bold, color!);
}

///semibold Style
TextStyle getSemiBoldStyle({double fontSize = 12, Color? color}) {
  return AppConstant.locale == Locale('en')
      ? _getTextStylePoppins(fontSize, FontWeightManger.semiBold, color!)
      : _getTextStyleArabic(fontSize, FontWeightManger.semiBold, color!);
}

///RobotoRegular Style
TextStyle getRegularRobotoStyle({double fontSize = 12, Color? color}) {
  return AppConstant.locale == Locale('en')
      ? _getTextStylePoppins(fontSize, FontWeightManger.regular, color!)
      : _getTextStyleArabic(fontSize, FontWeightManger.regular, color!);
}

///RobotoBold Style
TextStyle getBoldRobotoStyle({double fontSize = 12, Color? color}) {
  return AppConstant.locale == Locale('en')
      ? _getTextStylePoppins(fontSize, FontWeightManger.bold, color!)
      : _getTextStyleArabic(fontSize, FontWeightManger.bold, color!);
}

///Robotosemibold Style
TextStyle getRobotoSemiBoldStyle({double fontSize = 12, Color? color}) {
  return AppConstant.locale == Locale('en')
      ? _getTextStylePoppins(fontSize, FontWeightManger.semiBold, color!)
      : _getTextStyleArabic(fontSize, FontWeightManger.semiBold, color!);
}
