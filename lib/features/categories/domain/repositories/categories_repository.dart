import 'package:favify/features/categories/domain/models/category/category.dart';

abstract class CategoriesRepository {
  List<Category> getAllCategories();
  void storeWinnerCategories(List<Category> winnerCategories);
  List<Category> getStoredWinnerCategories();
}
