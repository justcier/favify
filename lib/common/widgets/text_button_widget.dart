import 'package:favify/style/color_tokens.dart';
import 'package:favify/style/dimensions.dart';
import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final OutlinedBorder? shape;
  final EdgeInsetsGeometry? padding;
  final double? elevation;
  final BorderSide? side;

  const TextButtonWidget._({
    required this.text,
    required this.onPressed,
    this.shape,
    this.padding,
    this.elevation,
    this.side,
    Key? key,
  }) : super(key: key);

  factory TextButtonWidget.main({
    required String text,
    required VoidCallback onPressed,
  }) =>
      TextButtonWidget._(
        elevation: 10,
        side: const BorderSide(color: ColorTokens.darkBackgroundColor),
        onPressed: onPressed,
        text: text,
      );

  factory TextButtonWidget.secondary({
    required String text,
    required VoidCallback onPressed,
  }) =>
      TextButtonWidget._(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.size0),
        ),
        padding: EdgeInsets.zero,
        elevation: Dimensions.sizeS,
        onPressed: onPressed,
        text: text,
      );

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: shape,
        foregroundColor: ColorTokens.mainFontColor,
        shadowColor: ColorTokens.secondaryColor,
        backgroundColor: ColorTokens.secondaryColor,
        padding: padding,
        elevation: elevation,
        side: side,
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
