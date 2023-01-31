import 'package:favify/features/categories/domain/models/category/category.dart';

abstract class CategoriesRepository {
  Future<List<Category>> getAllCategories();
  void storeWinnerCategories(List<Category> winnerCategories);
  List<Category> getStoredWinnerCategories();
}
