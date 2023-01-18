import 'package:auto_route/auto_route.dart';
import 'package:favify/common/widgets/text_button_widget.dart';
import 'package:favify/core/strings.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/features/home/presentation/widgets/category_item.dart';
import 'package:favify/services/navigation_service.dart';
import 'package:favify/style/dimensions.dart';
import 'package:favify/style/text_style_tokens.dart';
import 'package:flutter/material.dart';

import 'list_content_common_box.dart';

class CategoryListContent extends StatelessWidget {
  final List<Category> loadedCategories;
  final bool isViewAllButtonVisible;

  const CategoryListContent({
    required this.loadedCategories,
    this.isViewAllButtonVisible = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListContentCommonBox(
      bottomButton: SizedBox(
        height: Dimensions.sizeXL,
        child: TextButtonWidget.secondary(
          text: Strings.viewAllButton,
          onPressed: () => context.router.push(
            AllCategoriesRoute(categories: loadedCategories),
          ),
        ),
      ),
      children: [
        Text(
          Strings.categoryListTitle,
          style: TextStyleTokens.mainTitle,
        ),
        SizedBox(
          height: Dimensions.mainScreenListViewHeight,
          child: ListView.builder(
            itemCount: loadedCategories.length,
            itemBuilder: (_, i) => CategoryItem(
              category: loadedCategories[i],
            ),
          ),
        ),
      ],
    );
  }
}
