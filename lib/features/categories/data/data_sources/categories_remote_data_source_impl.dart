import 'package:favify/features/categories/data/data_sources/categories_remote_data_source.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:injectable/injectable.dart';

// dummy data for testing purpose -> to delete when connection to firebase will be made
final List<Category> loadedCategories = [
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

@Injectable(as: CategoriesRemoteDataSource)
class CategoriesRemoteDataSourceImpl implements CategoriesRemoteDataSource {
  @override
  List<Category> getAllCategories() {
    return loadedCategories;
  }
}
