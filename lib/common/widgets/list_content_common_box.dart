import 'package:favify/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

import '../../style/color_tokens.dart';
import '../../style/dimensions.dart';

class ListContentCommonBox extends StatelessWidget {
  final List<Widget> children;
  final Widget? bottomButton;

  const ListContentCommonBox({
    required this.children,
    this.bottomButton,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomButton = this.bottomButton;

    return SizedBox(
      height: context.screenHeight * 2 / 5,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: context.screenWidth * 4 / 5,
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorTokens.secondaryColor,
                  width: Dimensions.sizeS,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: children,
              ),
            ),
            if (bottomButton != null) bottomButton,
          ],
        ),
      ),
    );
  }
}
