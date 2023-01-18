import 'dart:convert';

import 'package:favify/core/data/shared_prefs_keys.dart';
import 'package:favify/features/categories/data/data_sources/categories_local_data_source_impl.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final SharedPreferences sharedPreferences = MockSharedPreferences();

  final CategoriesLocalDataSourceImpl categoriesLocalDataSourceImpl =
      CategoriesLocalDataSourceImpl(sharedPreferences);

  group('CategoriesLocalDataSourceImpl', () {
    group('storeWinnerCategories', () {
      test(
        'should store winner categories',
        () async {
          // Arrange
          final List<Category> winnerCategoriesToStore = [tCategories[0]];
          when(
            () => sharedPreferences.setString(captureAny(), captureAny()),
          ).thenAnswer((_) async => true);

          // Act
          await categoriesLocalDataSourceImpl
              .storeWinnerCategories(winnerCategoriesToStore);

          // Assert
          verify(
            () => sharedPreferences.setString(
              SharedPrefsKeys.winnerCategoriesList,
              jsonEncode(winnerCategoriesToStore),
            ),
          ).called(1);
        },
      );
    });
    group('getStoredWinnerCategories', () {
      test(
        'should return all winner categories stored locally',
        () {
          // Arrange
          when(() => sharedPreferences.getString(captureAny()))
              .thenAnswer((_) => jsonEncode([tCategories[0].toJson()]));
          final List<Category> storedWinnerCategories = [tCategories[0]];

          // Act
          final result =
              categoriesLocalDataSourceImpl.getStoredWinnerCategories();

          // Assert
          verify(
            () => sharedPreferences
                .getString(SharedPrefsKeys.winnerCategoriesList),
          ).called(1);
          expect(result, storedWinnerCategories);
        },
      );
      test(
        'should return empty list when shared preferences returns null',
        () {
          // Arrange
          when(() => sharedPreferences.getString(captureAny()))
              .thenAnswer((_) => null);

          // Act
          final result =
              categoriesLocalDataSourceImpl.getStoredWinnerCategories();

          // Assert
          verify(
            () => sharedPreferences
                .getString(SharedPrefsKeys.winnerCategoriesList),
          ).called(1);
          expect(result, []);
        },
      );
    });
  });
}
