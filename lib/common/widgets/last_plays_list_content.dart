import 'package:favify/core/extensions/build_context_extensions.dart';
import 'package:favify/core/strings.dart';
import 'package:favify/features/all_categories/presentation/widgets/last_play_item.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/style/color_tokens.dart';
import 'package:favify/style/dimensions.dart';
import 'package:favify/style/text_style_tokens.dart';
import 'package:flutter/material.dart';

class LastPlaysListContent extends StatelessWidget {
  final List<Category> localWinnerCategories;
  const LastPlaysListContent({required this.localWinnerCategories, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                children: [
                  Text(
                    Strings.lastPlaysListTitle,
                    style: TextStyleTokens.mainTitle,
                  ),
                  SizedBox(
                    height: Dimensions.mainScreenListViewHeight,
                    child: ListView.builder(
                      itemCount: localWinnerCategories.length,
                      itemBuilder: (_, i) => LastPlayItem(
                        item: localWinnerCategories[i].items[0],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
