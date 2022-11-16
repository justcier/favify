import 'package:favify/features/categories/data/data_sources/categories_remote_data_source.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/features/categories/domain/repositories/categories_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoriesRepository)
class CategoriesRepositoryImpl implements CategoriesRepository {
  final CategoriesRemoteDataSource categoriesRemoteDataSource;

  const CategoriesRepositoryImpl(this.categoriesRemoteDataSource);

  @override
  List<Category> getAllCategories() {
    return categoriesRemoteDataSource.getAllCategories();
  }
}
