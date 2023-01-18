import 'package:favify/features/categories/domain/repositories/categories_repository.dart';
import 'package:favify/features/categories/domain/use_cases/store_winner_categories_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final CategoriesRepository categoriesRepository = MockCategoriesRepository();

  final StoreWinnerCategoriesUseCase useCase =
      StoreWinnerCategoriesUseCase(categoriesRepository);

  group('StoreWinnerCategoriesUseCase', () {
    test(
      'should correctly propagate winner categories to '
      'repository on a successful call',
      () {
        // Arrange
        when(
          () => categoriesRepository
              .storeWinnerCategories(singleWinnerCategoryList),
        );

        // Act
        useCase.call(singleWinnerCategoryList);

        // Assert
        verify(
          () => categoriesRepository
              .storeWinnerCategories(singleWinnerCategoryList),
        ).called(1);
      },
    );
  });
}
