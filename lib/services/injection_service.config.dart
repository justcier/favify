// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:favify/features/categories/data/data_sources/categories_local_data_source.dart'
    as _i8;
import 'package:favify/features/categories/data/data_sources/categories_local_data_source_impl.dart'
    as _i9;
import 'package:favify/features/categories/data/data_sources/categories_remote_data_source.dart'
    as _i4;
import 'package:favify/features/categories/data/data_sources/categories_remote_data_source_impl.dart'
    as _i5;
import 'package:favify/features/categories/data/repositories/categories_repository_impl.dart'
    as _i11;
import 'package:favify/features/categories/domain/repositories/categories_repository.dart'
    as _i10;
import 'package:favify/features/categories/domain/use_cases/get_all_categories_use_case.dart'
    as _i12;
import 'package:favify/features/categories/domain/use_cases/get_stored_winner_categories_use_case.dart'
    as _i13;
import 'package:favify/features/categories/domain/use_cases/store_winner_categories_use_case.dart'
    as _i14;
import 'package:favify/features/categories/presentation/cubits/categories_cubit.dart'
    as _i3;
import 'package:favify/features/play/presentation/cubits/play_cubit.dart'
    as _i6;
import 'package:favify/services/registration_service.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

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
  final registerService = _$RegisterService();
  gh.factory<_i3.CategoriesCubit>(() => _i3.CategoriesCubit());
  gh.factory<_i4.CategoriesRemoteDataSource>(
      () => _i5.CategoriesRemoteDataSourceImpl());
  gh.factory<_i6.PlayCubit>(() => _i6.PlayCubit());
  gh.factoryAsync<_i7.SharedPreferences>(() => registerService.prefs);
  gh.factoryAsync<_i8.CategoriesLocalDataSource>(() async =>
      _i9.CategoriesLocalDataSourceImpl(
          await get.getAsync<_i7.SharedPreferences>()));
  gh.factoryAsync<_i10.CategoriesRepository>(
      () async => _i11.CategoriesRepositoryImpl(
            get<_i4.CategoriesRemoteDataSource>(),
            await get.getAsync<_i8.CategoriesLocalDataSource>(),
          ));
  gh.factoryAsync<_i12.GetAllCategoriesUseCase>(() async =>
      _i12.GetAllCategoriesUseCase(
          await get.getAsync<_i10.CategoriesRepository>()));
  gh.factoryAsync<_i13.GetStoredWinnerCategoriesUseCase>(() async =>
      _i13.GetStoredWinnerCategoriesUseCase(
          await get.getAsync<_i10.CategoriesRepository>()));
  gh.factoryAsync<_i14.StoreWinnerCategoriesUseCase>(() async =>
      _i14.StoreWinnerCategoriesUseCase(
          await get.getAsync<_i10.CategoriesRepository>()));
  return get;
}

class _$RegisterService extends _i15.RegisterService {}
