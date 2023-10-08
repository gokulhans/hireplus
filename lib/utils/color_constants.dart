import 'package:flutter/material.dart';

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

class ColorConstants {
  static Color lightScaffoldBackgroundColor = hexToColor('#F9F9F9');
  static Color darkScaffoldBackgroundColor = hexToColor('#2F2E2E');
  static Color secondaryAppColor = hexToColor('#5E92F3');
  static Color secondaryDarkAppColor = Colors.white;
  static Color blue = Colors.blue;
  static Color bluegradient1 = const Color.fromARGB(255, 83, 164, 231);
  static Color bluegradient2 = const Color.fromARGB(255, 20, 128, 190);
  static Color greengradient1 = const Color(0xFF53E78B);
  static Color greengradient2 = const Color(0xFF14BE77);
  static Color appbgclr = Colors.white;
  static Color appbgclr2 = const Color.fromARGB(255, 255, 255, 255);
  static Color textclr = Colors.black87;
  static Color textclrw = Colors.black;
  static Color iconclr = Colors.black87;
  static Color green = Colors.green;

  static const Color primary = Color(0XFFEC2129);
  static const Color tabColor = Color(0XFFF4F4F4);
  static const Color blueWithOpacity = Color(0X1D02396F);

  static const Color kprimary = Color(0XFFE31A23);
  static const Color white = Colors.white;
  static const Color blackWithOpacity60 = Color(0X991C1C1C);
  static const Color grey = Colors.grey;

  static const Color black = Color(0XFF000000);

  static const Color scaffoldBGColor = Color(0XFFFBFAFF);
  static const Color blackWithOpacity50 = Color(0X80000000);
  static const Color textColor = Color(0XCC000000);
  static const Color blackWithOpacity55 = Color(0X8C000000);
  static const Color dividerColor = Color(0X26707070);

  static const Color boxShadowColor = Color.fromRGBO(0, 0, 0, 0.16);
}
