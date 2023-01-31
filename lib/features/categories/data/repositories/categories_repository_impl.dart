import 'package:favify/features/categories/data/data_sources/categories_local_data_source.dart';
import 'package:favify/features/categories/data/data_sources/categories_remote_data_source.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/features/categories/domain/repositories/categories_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoriesRepository)
class CategoriesRepositoryImpl implements CategoriesRepository {
  final CategoriesRemoteDataSource categoriesRemoteDataSource;
  final CategoriesLocalDataSource categoriesLocalDataSource;

  const CategoriesRepositoryImpl(
    this.categoriesRemoteDataSource,
    this.categoriesLocalDataSource,
  );

  @override
  Future<List<Category>> getAllCategories() {
    return categoriesRemoteDataSource.getAllCategories();
  }

  @override
  List<Category> getStoredWinnerCategories() {
    return categoriesLocalDataSource.getStoredWinnerCategories();
  }

  @override
  void storeWinnerCategories(List<Category> winnerCategories) {
    categoriesLocalDataSource.storeWinnerCategories(winnerCategories);
  }
}
