// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:favify/features/categories/data/data_sources/categories_remote_data_source.dart'
    as _i4;
import 'package:favify/features/categories/data/data_sources/categories_remote_data_source_impl.dart'
    as _i5;
import 'package:favify/features/categories/data/repositories/categories_repository_impl.dart'
    as _i7;
import 'package:favify/features/categories/domain/repositories/categories_repository.dart'
    as _i6;
import 'package:favify/features/categories/domain/use_cases/get_all_categories_use_case.dart'
    as _i8;
import 'package:favify/features/categories/presentation/cubits/categories_cubit.dart'
    as _i3;
import 'package:favify/features/play/presentation/cubits/play_cubit.dart'
    as _i9;
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
  gh.factory<_i3.CategoriesCubit>(() => _i3.CategoriesCubit());
  gh.factory<_i4.CategoriesRemoteDataSource>(
      () => _i5.CategoriesRemoteDataSourceImpl());
  gh.factory<_i6.CategoriesRepository>(() =>
      _i7.CategoriesRepositoryImpl(get<_i4.CategoriesRemoteDataSource>()));
  gh.factory<_i8.GetAllCategoriesUseCase>(
      () => _i8.GetAllCategoriesUseCase(get<_i6.CategoriesRepository>()));
  gh.factory<_i9.PlayCubit>(() => _i9.PlayCubit());
  return get;
}
