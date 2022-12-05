import 'package:auto_route/auto_route.dart';
import 'package:favify/common/widgets/text_button_widget.dart';
import 'package:favify/core/strings.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/features/categories/domain/models/item/item.dart';
import 'package:favify/features/play/presentation/widgets/category_item_tile.dart';
import 'package:favify/services/navigation_service.dart';
import 'package:favify/style/dimensions.dart';
import 'package:favify/style/text_style_tokens.dart';
import 'package:flutter/material.dart';

class WinnerPage extends StatelessWidget {
  final Item winnerItem;
  final Category unmodifiedCategory;

  const WinnerPage({
    required this.winnerItem,
    required this.unmodifiedCategory,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(unmodifiedCategory.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'The winner of category "${unmodifiedCategory.title}" is:',
              style: TextStyleTokens.mainTitle,
            ),
            const SizedBox(height: Dimensions.sizeM),
            CategoryItemTile(item: winnerItem),
            const SizedBox(height: Dimensions.sizeM),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButtonWidget.main(
                  text: Strings.buttonViewAllCategories,
                  onPressed: () {},
                ),
                TextButtonWidget.main(
                  text: Strings.winnerCategoryButtonPlayAgain,
                  onPressed: () => context.router.replace(
                    PlayRoute(category: unmodifiedCategory),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
