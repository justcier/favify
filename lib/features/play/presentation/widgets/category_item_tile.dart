import 'package:favify/features/categories/domain/models/item/item.dart';
import 'package:favify/style/color_tokens.dart';
import 'package:favify/style/dimensions.dart';
import 'package:favify/style/text_style_tokens.dart';
import 'package:flutter/material.dart';

class CategoryItemTile extends StatelessWidget {
  final Item item;
  final VoidCallback? onTap;

  const CategoryItemTile({
    required this.item,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: ColorTokens.secondaryColor),
          borderRadius: BorderRadius.circular(Dimensions.sizeXL),
        ),
        width: Dimensions.mainScreenListViewWidth,
        height: Dimensions.mainScreenListViewHeight,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(Dimensions.sizeXL),
              child: Image.network(
                item.url,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: Dimensions.sizeL,
              child: Container(
                width: Dimensions.mainScreenListViewWidth,
                color: ColorTokens.secondaryColor.withOpacity(0.7),
                padding: const EdgeInsets.symmetric(
                  vertical: Dimensions.sizeM,
                  horizontal: Dimensions.sizeXXL,
                ),
                child: Text(
                  item.title,
                  style: TextStyleTokens.mainTitleWhite,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
