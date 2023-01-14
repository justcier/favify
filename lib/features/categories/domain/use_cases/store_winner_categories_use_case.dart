import 'package:favify/core/domain/use_case.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/features/categories/domain/repositories/categories_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class StoreWinnerCategoriesUseCase implements UseCase<void, List<Category>> {
  final CategoriesRepository _categoriesRepository;

  StoreWinnerCategoriesUseCase(this._categoriesRepository);
  @override
  void call(List<Category> winnerCategories) =>
      _categoriesRepository.storeWinnerCategories(winnerCategories);
}
