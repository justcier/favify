import 'package:bloc_test/bloc_test.dart';
import 'package:favify/features/categories/domain/use_cases/get_all_categories_use_case.dart';
import 'package:favify/features/categories/presentation/cubits/categories_cubit.dart';
import 'package:favify/features/categories/presentation/cubits/categories_state.dart';
import 'package:favify/services/injection_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final GetAllCategoriesUseCase getAllCategoriesUseCase =
      MockGetAllCategoriesUseCase();

  CategoriesCubit buildCubit() => CategoriesCubit();
  CategoriesState initialState = CategoriesState.initial();

  setUpAll(() {
    getIt.registerFactory<GetAllCategoriesUseCase>(
      () => getAllCategoriesUseCase,
    );
  });
  group('getAllCategories', () {
    blocTest<CategoriesCubit, CategoriesState>(
      'should emit loaded status and categories on successful use case call',
      setUp: () {
        when(() => getAllCategoriesUseCase.call()).thenReturn(tCategories);
      },
      build: buildCubit,
      act: (cubit) => cubit.getAllCategories(),
      expect: () => [
        initialState.copyWith(status: CategoriesStateStatus.loading),
        initialState.copyWith(
          status: CategoriesStateStatus.loaded,
          categories: tCategories,
        ),
      ],
      verify: (_) => [verify(getAllCategoriesUseCase.call).called(1)],
    );
  });
}
