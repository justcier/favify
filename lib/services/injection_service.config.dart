// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:favify/features/categories/data/data_sources/categories_remote_data_source.dart'
    as _i3;
import 'package:favify/features/categories/data/data_sources/categories_remote_data_source_impl.dart'
    as _i4;
import 'package:favify/features/categories/data/repositories/categories_repository_impl.dart'
    as _i6;
import 'package:favify/features/categories/domain/repositories/categories_repository.dart'
    as _i5;
import 'package:favify/features/categories/domain/use_cases/get_all_categories_use_case.dart'
    as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.CategoriesRemoteDataSource>(
      () => _i4.CategoriesRemoteDataSourceImpl());
  gh.factory<_i5.CategoriesRepository>(() =>
      _i6.CategoriesRepositoryImpl(get<_i3.CategoriesRemoteDataSource>()));
  gh.factory<_i7.GetAllCategoriesUseCase>(
      () => _i7.GetAllCategoriesUseCase(get<_i5.CategoriesRepository>()));
  return get;
}
