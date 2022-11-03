import 'package:favify/style/color_tokens.dart';
import 'package:favify/style/dimensions.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String description;

  const CategoryItem({
    required this.id,
    required this.title,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: Dimensions.sizeS,
        horizontal: Dimensions.sizeXL,
      ),
      margin: const EdgeInsets.all(5.0),
      color: ColorTokens.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: ColorTokens.mainFontColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                description,
                style: const TextStyle(
                  color: ColorTokens.mainFontColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: ColorTokens.mainFontColor,
              backgroundColor: ColorTokens.secondaryColor,
              shadowColor: ColorTokens.secondaryColor,
              elevation: 10,
              side: const BorderSide(color: ColorTokens.darkBackgroundColor),
            ),
            onPressed: () {},
            child: const Text('Play'),
          ),
        ],
      ),
    );
  }
}
