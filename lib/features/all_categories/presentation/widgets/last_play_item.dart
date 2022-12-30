import 'package:favify/features/categories/domain/models/item/item.dart';
import 'package:favify/style/color_tokens.dart';
import 'package:favify/style/dimensions.dart';
import 'package:favify/style/text_style_tokens.dart';
import 'package:flutter/material.dart';

class LastPlayItem extends StatelessWidget {
  final Item item;

  const LastPlayItem({
    required this.item,
    Key? key,
  }) : super(key: key);

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                item.id,
                style: TextStyleTokens.description,
              ),
              Text(
                item.title,
                style: TextStyleTokens.mainTitleWhite,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
