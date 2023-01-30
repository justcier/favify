import 'package:favify/core/domain/use_case.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/features/categories/domain/repositories/categories_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllCategoriesUseCase
    implements UseCase<Future<List<Category>>, NoParams?> {
  final CategoriesRepository _categoriesRepository;

  GetAllCategoriesUseCase(this._categoriesRepository);

  @override
  Future<List<Category>> call([NoParams? params]) =>
      _categoriesRepository.getAllCategories();
}
