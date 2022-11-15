import 'package:favify/features/categories/data/data_sources/categories_remote_data_source_impl.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:flutter_test/flutter_test.dart';

final List<Category> tCategories = [
  const Category(
    id: 'c1',
    title: 'Cats',
    description: 'Cats category description',
  ),
  const Category(
    id: 'c2',
    title: 'Dogs',
    description: 'Dogs category description',
  ),
  const Category(
    id: 'c3',
    title: 'Songs',
    description: 'Songs category description',
  ),
  const Category(
    id: 'c4',
    title: 'Film',
    description: 'Films category description',
  ),
  const Category(
    id: 'c4',
    title: 'Ziom',
    description: 'Zioms category description',
  ),
];
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
