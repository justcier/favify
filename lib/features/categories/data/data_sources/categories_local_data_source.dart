import 'package:favify/features/categories/domain/models/category/category.dart';

abstract class CategoriesLocalDataSource {
  void storeWinnerCategories(List<Category> winnerCategories);
  List<Category> getStoredWinnerCategories();
}
