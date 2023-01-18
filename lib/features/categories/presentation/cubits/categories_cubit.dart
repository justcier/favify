import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/features/categories/domain/use_cases/get_all_categories_use_case.dart';
import 'package:favify/features/categories/domain/use_cases/get_stored_winner_categories_use_case.dart';
import 'package:favify/features/categories/presentation/cubits/categories_state.dart';
import 'package:favify/services/injection_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(CategoriesState.initial());

  Future<void> getAllCategories() async {
    emit(state.copyWith(status: CategoriesStateStatus.loading));
    final List<Category> remoteCategories =
        (await getIt.getAsync<GetAllCategoriesUseCase>()).call();
    final List<Category> storedWinnerCategories =
        (await getIt.getAsync<GetStoredWinnerCategoriesUseCase>()).call();

    emit(
      state.copyWith(
        status: CategoriesStateStatus.loaded,
        categories: remoteCategories,
        localWinnerCategories: storedWinnerCategories,
      ),
    );
  }

  Future<void> updateLocalCategories() async {
    final List<Category> storedWinnerCategories =
        (await getIt.getAsync<GetStoredWinnerCategoriesUseCase>()).call();
    emit(state.copyWith(localWinnerCategories: storedWinnerCategories));
  }
}
