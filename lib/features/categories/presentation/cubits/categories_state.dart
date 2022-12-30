import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_state.freezed.dart';

enum CategoriesStateStatus {
  idle,
  loading,
  loaded,
  error,
}

@freezed
class CategoriesState with _$CategoriesState {
  const CategoriesState._();

  const factory CategoriesState({
    @Default([]) List<Category> categories,
    @Default([]) List<Category> localWinnerCategories,
    required CategoriesStateStatus status,
  }) = _CategoriesState;

  factory CategoriesState.initial() =>
      const CategoriesState(status: CategoriesStateStatus.idle);

  bool get isLoading => status == CategoriesStateStatus.loading;
  bool get isLoaded => status == CategoriesStateStatus.loaded;
}
