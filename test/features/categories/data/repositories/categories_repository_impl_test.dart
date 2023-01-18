import 'package:favify/features/categories/data/data_sources/categories_local_data_source.dart';
import 'package:favify/features/categories/data/data_sources/categories_remote_data_source.dart';
import 'package:favify/features/categories/data/repositories/categories_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final CategoriesRemoteDataSource categoriesRemoteDataSource =
      MockCategoriesRemoteDataSource();
  final CategoriesLocalDataSource categoriesLocalDataSource =
      MockCategoriesLocalDataSource();

  final CategoriesRepositoryImpl categoriesRepositoryImpl =
      CategoriesRepositoryImpl(
    categoriesRemoteDataSource,
    categoriesLocalDataSource,
  );

  group('CategoriesRepositoryImpl', () {
    group('getAllCategories', () {
      test(
          'should correctly propagate the call to remote data source and '
          'return all categories on a successful call', () {
        // Arrange
        when(categoriesRemoteDataSource.getAllCategories)
            .thenReturn(tCategories);

        // Act
        final result = categoriesRepositoryImpl.getAllCategories();

        // Assert
        verify(categoriesRemoteDataSource.getAllCategories).called(1);
        expect(result, tCategories);
      });
    });

    group('getStoredWinnerCategories', () {
      test(
        'should correctly propagate the call to local data source and return'
        'stored winner categories from local storage on a successful call',
        () {
          // Arrange
          when(categoriesLocalDataSource.getStoredWinnerCategories)
              .thenReturn(singleWinnerCategoryList);

          // Act
          final result = categoriesRepositoryImpl.getStoredWinnerCategories();

          // Assert
          verify(categoriesLocalDataSource.getStoredWinnerCategories).called(1);
          expect(result, singleWinnerCategoryList);
        },
      );
    });

    group('storeWinnerCategories', () {
      test(
        'should correctly propagate winner categories to local '
        'data source on a successful call',
        () {
          // Arrange
          when(
            () => categoriesLocalDataSource
                .storeWinnerCategories(singleWinnerCategoryList),
          );

          // Act
          categoriesRepositoryImpl
              .storeWinnerCategories(singleWinnerCategoryList);

          // Assert
          verify(
            () => categoriesLocalDataSource
                .storeWinnerCategories(singleWinnerCategoryList),
          ).called(1);
        },
      );
    });
  });
}
