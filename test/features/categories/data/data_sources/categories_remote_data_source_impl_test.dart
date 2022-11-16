import 'package:favify/features/categories/data/data_sources/categories_remote_data_source_impl.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../test_data.dart';

void main() {
  final CategoriesRemoteDataSourceImpl categoriesRemoteDataSourceImpl =
      CategoriesRemoteDataSourceImpl();

  group('CategoriesRemoteDataSourceImpl', () {
    group('getAllCategories', () {
      test('should return all categories', () async {
        // Arrange
        final List<Category> allCategories = tCategories;

        // Act
        final result = categoriesRemoteDataSourceImpl.getAllCategories();

        // Assert
        expect(result, allCategories);
      });
    });
  });
}
