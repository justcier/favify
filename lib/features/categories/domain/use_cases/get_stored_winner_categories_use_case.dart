import 'package:favify/core/domain/use_case.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/features/categories/domain/repositories/categories_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetStoredWinnerCategoriesUseCase
    implements UseCase<List<Category>, NoParams?> {
  final CategoriesRepository _categoriesRepository;

  GetStoredWinnerCategoriesUseCase(this._categoriesRepository);

  @override
  List<Category> call([NoParams? params]) =>
      _categoriesRepository.getStoredWinnerCategories();
}
