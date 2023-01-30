import 'package:favify/features/categories/domain/models/category/category.dart';

abstract class CategoriesRemoteDataSource {
  Future<List<Category>> getAllCategories();
}
