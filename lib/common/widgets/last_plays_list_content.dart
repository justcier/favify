import 'package:favify/core/strings.dart';
import 'package:favify/features/all_categories/presentation/widgets/last_play_item.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/style/dimensions.dart';
import 'package:favify/style/text_style_tokens.dart';
import 'package:flutter/material.dart';

import 'list_content_common_box.dart';

class LastPlaysListContent extends StatelessWidget {
  final List<Category> localWinnerCategories;
  const LastPlaysListContent({
    required this.localWinnerCategories,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListContentCommonBox(
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
              localWinnerCategory: localWinnerCategories[i],
            ),
          ),
        ),
      ],
    );
  }
}
