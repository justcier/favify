import 'dart:convert';

import 'package:favify/core/data/shared_prefs_keys.dart';
import 'package:favify/features/categories/data/data_sources/categories_local_data_source.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: CategoriesLocalDataSource)
class CategoriesLocalDataSourceImpl implements CategoriesLocalDataSource {
  final SharedPreferences _sharedPreferences;

  CategoriesLocalDataSourceImpl(this._sharedPreferences);

  @override
  Future<void> storeWinnerCategories(List<Category> winnerCategories) async {
    await _sharedPreferences.setString(
      SharedPrefsKeys.winnerCategoriesList,
      jsonEncode(winnerCategories),
    );
  }

  @override
  List<Category> getStoredWinnerCategories() {
    final String? winnerCategoriesString =
        _sharedPreferences.getString(SharedPrefsKeys.winnerCategoriesList);

    if (winnerCategoriesString != null) {
      final List<Category> winnerCategories =
          (jsonDecode(winnerCategoriesString) as List)
              .map((e) => Category.fromJson(e as Map<String, dynamic>))
              .toList();
      return winnerCategories;
    } else {
      return [];
    }
  }
}
