import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/features/categories/domain/models/item/item.dart';
import 'package:favify/style/color_tokens.dart';
import 'package:favify/style/dimensions.dart';
import 'package:flutter/material.dart';

class PlayPage extends StatelessWidget {
  final Category category;

  const PlayPage({required this.category, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _CategoryItemTile(
              item: category.items.first,
            ), //TODO Create logic to pass only one random item
            const SizedBox(height: Dimensions.sizeM),
            const Text(
              'VS',
              style: TextStyle(
                color: ColorTokens.secondaryColor,
                fontSize: Dimensions.sizeXXL,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: Dimensions.sizeM),
            _CategoryItemTile(item: category.items.last),
          ],
        ),
      ),
    );
  }
}

class _CategoryItemTile extends StatelessWidget {
  final Item item;
  const _CategoryItemTile({
    required this.item,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: ColorTokens.secondaryColor),
          borderRadius: BorderRadius.circular(15),
        ),
        width: 300,
        height: 250,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                item.url,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: Dimensions.sizeL,
              child: Container(
                width: 300,
                color: ColorTokens.secondaryColor.withOpacity(0.7),
                padding: const EdgeInsets.symmetric(
                  vertical: Dimensions.sizeM,
                  horizontal: Dimensions.sizeXXL,
                ),
                child: Text(
                  item.title,
                  style: const TextStyle(
                    fontSize: Dimensions.sizeXXL,
                    color: ColorTokens.mainFontColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
