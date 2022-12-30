import 'package:favify/common/widgets/category_list_content.dart';
import 'package:favify/common/widgets/common_scaffold.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:flutter/material.dart';

class AllCategoriesPage extends StatelessWidget {
  final List<Category> categories;

  const AllCategoriesPage({
    required this.categories,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: 'All Categories Page',
      body: Column(
        children: [
          CategoryListContent(
            loadedCategories: categories,
            isViewAllButtonVisible: false,
          ),
        ],
      ),
    );
  }
}
