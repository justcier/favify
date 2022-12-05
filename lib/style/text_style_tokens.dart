import 'package:favify/style/color_tokens.dart';
import 'package:favify/style/dimensions.dart';
import 'package:flutter/material.dart';

class TextStyleTokens {
  static const TextStyle mainTitle = TextStyle(
    color: ColorTokens.secondaryColor,
    fontSize: Dimensions.sizeXXL,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle mainTitleWhite = TextStyle(
    color: ColorTokens.mainFontColor,
    fontSize: Dimensions.sizeXXL,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle description = TextStyle(
    color: ColorTokens.mainFontColor,
    fontSize: Dimensions.sizeL,
    fontWeight: FontWeight.w300,
  );
}
