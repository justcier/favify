import 'package:favify/style/color_tokens.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String description;

  const CategoryItem(
      {required this.id,
      required this.title,
      required this.description,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      color: ColorTokens.primaryColor,
      child: GridTile(
        footer: Text(
          description,
          style:
              const TextStyle(color: ColorTokens.mainFontColor, fontSize: 10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: ColorTokens.mainFontColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  foregroundColor: ColorTokens.mainFontColor,
                  backgroundColor: ColorTokens.secondaryColor,
                  shadowColor: ColorTokens.secondaryColor,
                  elevation: 10,
                  side: BorderSide(color: ColorTokens.darkBackgroundColor)),
              onPressed: () {},
              child: const Text('Play'),
            ),
          ],
        ),
      ),
    );
  }
}
