import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/features/categories/domain/use_cases/get_all_categories_use_case.dart';
import 'package:favify/features/categories/presentation/cubits/categories_state.dart';
import 'package:favify/services/injection_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(CategoriesState.initial());

  Future<void> getAllCategories() async {
    emit(state.copyWith(status: CategoriesStateStatus.loading));
    //TODO: to be removed when usecase will be returning Future
    await Future.delayed(const Duration(seconds: 3));

    final List<Category> result = getIt<GetAllCategoriesUseCase>().call();

    emit(
      state.copyWith(
        status: CategoriesStateStatus.loaded,
        categories: result,
      ),
    );
  }
}
