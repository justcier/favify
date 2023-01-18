import 'package:favify/features/categories/domain/repositories/categories_repository.dart';
import 'package:favify/features/categories/domain/use_cases/get_stored_winner_categories_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final CategoriesRepository categoriesRepository = MockCategoriesRepository();

  final GetStoredWinnerCategoriesUseCase useCase =
      GetStoredWinnerCategoriesUseCase(categoriesRepository);

  group('GetStoredWinnerCategoriesUseCase', () {
    test(
      'should correctly propagate the call to repository and return stored '
      'winner categories from local storage on a successful call',
      () {
        // Arrange
        when(categoriesRepository.getStoredWinnerCategories)
            .thenReturn(singleWinnerCategoryList);

        // Act
        final result = useCase.call();

        // Assert
        verify(categoriesRepository.getStoredWinnerCategories).called(1);
        expect(result, singleWinnerCategoryList);
      },
    );
  });
}
