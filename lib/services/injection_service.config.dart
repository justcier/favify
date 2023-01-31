// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:favify/features/categories/data/data_sources/categories_local_data_source.dart'
    as _i7;
import 'package:favify/features/categories/data/data_sources/categories_local_data_source_impl.dart'
    as _i8;
import 'package:favify/features/categories/data/data_sources/categories_remote_data_source.dart'
    as _i9;
import 'package:favify/features/categories/data/data_sources/categories_remote_data_source_impl.dart'
    as _i10;
import 'package:favify/features/categories/data/repositories/categories_repository_impl.dart'
    as _i12;
import 'package:favify/features/categories/domain/repositories/categories_repository.dart'
    as _i11;
import 'package:favify/features/categories/domain/use_cases/get_all_categories_use_case.dart'
    as _i13;
import 'package:favify/features/categories/domain/use_cases/get_stored_winner_categories_use_case.dart'
    as _i14;
import 'package:favify/features/categories/domain/use_cases/store_winner_categories_use_case.dart'
    as _i15;
import 'package:favify/features/categories/presentation/cubits/categories_cubit.dart'
    as _i3;
import 'package:favify/features/play/presentation/cubits/play_cubit.dart'
    as _i5;
import 'package:favify/services/firebase_api_service.dart' as _i4;
import 'package:favify/services/registration_service.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i4.FirebaseApiService>(() => _i4.FirebaseApiService());
  gh.factory<_i5.PlayCubit>(() => _i5.PlayCubit());
  gh.factoryAsync<_i6.SharedPreferences>(() => registerService.prefs);
  gh.factoryAsync<_i7.CategoriesLocalDataSource>(() async =>
      _i8.CategoriesLocalDataSourceImpl(
          await get.getAsync<_i6.SharedPreferences>()));
  gh.factory<_i9.CategoriesRemoteDataSource>(
      () => _i10.CategoriesRemoteDataSourceImpl(get<_i4.FirebaseApiService>()));
  gh.factoryAsync<_i11.CategoriesRepository>(
      () async => _i12.CategoriesRepositoryImpl(
            get<_i9.CategoriesRemoteDataSource>(),
            await get.getAsync<_i7.CategoriesLocalDataSource>(),
          ));
  gh.factoryAsync<_i13.GetAllCategoriesUseCase>(() async =>
      _i13.GetAllCategoriesUseCase(
          await get.getAsync<_i11.CategoriesRepository>()));
  gh.factoryAsync<_i14.GetStoredWinnerCategoriesUseCase>(() async =>
      _i14.GetStoredWinnerCategoriesUseCase(
          await get.getAsync<_i11.CategoriesRepository>()));
  gh.factoryAsync<_i15.StoreWinnerCategoriesUseCase>(() async =>
      _i15.StoreWinnerCategoriesUseCase(
          await get.getAsync<_i11.CategoriesRepository>()));
  return get;
}

class _$RegisterService extends _i16.RegisterService {}
