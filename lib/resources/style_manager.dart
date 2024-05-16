import 'package:flutter/material.dart';
import 'package:hireplusapp/resources/constants.dart';

import 'color_manager.dart';
import 'font_manager.dart';

TextStyle buildTitleStyle = const TextStyle(
  overflow: TextOverflow.ellipsis,
  fontWeight: FontWeightManager.semiBold,
  fontFamily: FontConstants.fontFamily,
  fontSize: FontSize.s20,
  letterSpacing: kLetterSpace30,
  color: ColorManager.black,
);

TextStyle buildTextTileStyle = const TextStyle(
  overflow: TextOverflow.ellipsis,
  fontWeight: FontWeightManager.regular,
  fontFamily: FontConstants.fontFamily,
  fontSize: FontSize.s10,
  letterSpacing: kLetterSpace16,
  color: ColorManager.textColor,
);
TextStyle buildCustomStyle(
  FontWeight fontWeight,
  double fontSize,
  double letterSpacing,
  Color color,
) =>
    TextStyle(
      overflow: TextOverflow.ellipsis,
      fontWeight: fontWeight,
      fontFamily: FontConstants.fontFamily,
      fontSize: fontSize,
      letterSpacing: kLetterSpace16,
      color: color,
    );
InputDecoration buildInputDecoration(
  String hintText,
) =>
    InputDecoration(
      suffixIcon: const Icon(
        Icons.keyboard_arrow_down,
        size: 18,
        color: ColorManager.blackWithOpacity60,
      ),
      hintText: hintText,
      contentPadding: const EdgeInsets.only(
        left: 11,
        right: 3,
        top: 14,
        bottom: 14,
      ),
      errorStyle: const TextStyle(
        fontSize: 9,
        height: 0.3,
      ),
      hintStyle: buildCustomStyle(
        FontWeightManager.regular,
        FontSize.s11,
        0.17,
        ColorManager.blackWithOpacity60,
      ),
      enabledBorder: InputBorder.none,
      border: InputBorder.none,
      filled: true,
      fillColor: Colors.transparent,
    );
