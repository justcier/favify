import 'package:favify/common/widgets/category_list_content.dart';
import 'package:favify/common/widgets/common_scaffold.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:flutter/material.dart';

import '../../../../core/strings.dart';

class AllCategoriesPage extends StatelessWidget {
  final List<Category> categories;

  const AllCategoriesPage({
    required this.categories,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: Strings.allCategoryPageTitle,
      body: CategoryListContent(
        loadedCategories: categories,
        isViewAllButtonVisible: false,
      ),
    );
  }
}
