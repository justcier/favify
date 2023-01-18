import 'package:bloc_test/bloc_test.dart';
import 'package:favify/features/categories/domain/use_cases/get_all_categories_use_case.dart';
import 'package:favify/features/categories/domain/use_cases/get_stored_winner_categories_use_case.dart';
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
  final GetStoredWinnerCategoriesUseCase getStoredWinnerCategoriesUseCase =
      MockGetStoredCategoriesUseCase();

  CategoriesCubit buildCubit() => CategoriesCubit();
  final CategoriesState initialState = CategoriesState.initial();

  setUpAll(() {
    getIt
      ..registerFactoryAsync<GetAllCategoriesUseCase>(
        () async => getAllCategoriesUseCase,
      )
      ..registerFactoryAsync<GetStoredWinnerCategoriesUseCase>(
        () async => getStoredWinnerCategoriesUseCase,
      );
    when(getAllCategoriesUseCase.call).thenReturn(tCategories);
    when(getStoredWinnerCategoriesUseCase.call).thenReturn([tCategories[0]]);
  });

  group('getAllCategories', () {
    blocTest<CategoriesCubit, CategoriesState>(
      'should emit loaded status, categories and stored winner categories'
      'on a successful use case call',
      build: buildCubit,
      act: (cubit) => cubit.getAllCategories(),
      expect: () => [
        initialState.copyWith(status: CategoriesStateStatus.loading),
        initialState.copyWith(
          status: CategoriesStateStatus.loaded,
          categories: tCategories,
          localWinnerCategories: [tCategories[0]],
        ),
      ],
      verify: (_) => [
        verify(getAllCategoriesUseCase.call).called(1),
        verify(getStoredWinnerCategoriesUseCase.call).called(1)
      ],
    );
  });

  group('updateLocalCategories', () {
    blocTest<CategoriesCubit, CategoriesState>(
      'should emit stored winner categories',
      build: buildCubit,
      act: (cubit) => cubit.updateLocalCategories(),
      expect: () => [
        initialState.copyWith(
          localWinnerCategories: [tCategories[0]],
        ),
      ],
      verify: (_) => [verify(getStoredWinnerCategoriesUseCase.call).called(1)],
    );
  });
}
