import 'package:favify/core/strings.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/style/color_tokens.dart';
import 'package:favify/style/dimensions.dart';
import 'package:flutter/material.dart';

import '../../../../style/text_style_tokens.dart';

class LastPlayItem extends StatelessWidget {
  final Category localWinnerCategory;

  const LastPlayItem({
    required this.localWinnerCategory,
    Key? key,
  }) : super(key: key);

  static const double _imageHeight = 150;
  static const double _imageWidth = 100;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: Dimensions.sizeS,
        horizontal: Dimensions.sizeXL,
      ),
      margin: const EdgeInsets.all(Dimensions.sizeM),
      color: ColorTokens.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                localWinnerCategory.title,
                style: TextStyleTokens.description,
              ),
              Text(
                localWinnerCategory.items.first.title,
                style: TextStyleTokens.mainTitleWhite,
              ),
              Text(
                Strings.playedOnDate(
                  // Needed for formatting, only YYYY-MM-DD is required
                  localWinnerCategory.playedDate.toString().substring(0, 10),
                ),
                style: TextStyleTokens.description,
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: _imageHeight,
                width: _imageWidth,
                child: Image.network(
                  localWinnerCategory.items.first.url,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
