import 'package:favify/features/categories/domain/repositories/categories_repository.dart';
import 'package:favify/features/categories/domain/use_cases/get_all_categories_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final CategoriesRepository categoriesRepository = MockCategoriesRepository();

  final GetAllCategoriesUseCase useCase =
      GetAllCategoriesUseCase(categoriesRepository);

  group('GetAllCategoriesUseCase', () {
    test(
        'should correctly propagate the call to remote data source and return all categories on a successful call',
        () async {
      // Arrange
      when(categoriesRepository.getAllCategories).thenReturn(tCategories);

      // Act
      final result = useCase.call();

      // Assert
      verify(categoriesRepository.getAllCategories).called(1);
      expect(result, tCategories);
    });
  });
}
