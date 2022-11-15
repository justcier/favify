import 'package:favify/common/widgets/text_button_widget.dart';
import 'package:favify/core/extensions/build_context_extensions.dart';
import 'package:favify/core/strings.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/features/home/presentation/widgets/category_item.dart';
import 'package:favify/style/color_tokens.dart';
import 'package:favify/style/dimensions.dart';
import 'package:flutter/material.dart';

class CategoryListContent extends StatelessWidget {
  const CategoryListContent({
    required this.loadedCategories,
    Key? key,
  }) : super(key: key);

  final List<Category> loadedCategories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 2.2 / 5,
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
                  const Text(
                    Strings.categoryListTitle,
                    style: TextStyle(
                      color: ColorTokens.secondaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.mainScreenListViewHeight,
                    child: ListView.builder(
                      itemCount: loadedCategories.length,
                      itemBuilder: (_, i) => CategoryItem(
                        id: loadedCategories[i].id,
                        title: loadedCategories[i].title,
                        description: loadedCategories[i].description,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.sizeXL,
              child: TextButtonWidget.secondary(
                text: Strings.secondaryButtonText,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
