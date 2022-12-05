import 'package:auto_route/auto_route.dart';
import 'package:favify/common/widgets/text_button_widget.dart';
import 'package:favify/core/strings.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/services/navigation_service.dart';
import 'package:favify/style/color_tokens.dart';
import 'package:favify/style/dimensions.dart';
import 'package:favify/style/text_style_tokens.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({
    required this.category,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category.title,
                style: TextStyleTokens.mainTitleWhite,
              ),
              Text(
                category.description,
                style: TextStyleTokens.description,
              ),
            ],
          ),
          TextButtonWidget.main(
            text: Strings.listCategoryButtonText,
            onPressed: () => context.router.push(
              PlayRoute(category: category),
            ),
          ),
        ],
      ),
    );
  }
}
