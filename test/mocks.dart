import 'package:favify/features/categories/data/data_sources/categories_remote_data_source.dart';
import 'package:favify/features/categories/domain/repositories/categories_repository.dart';
import 'package:favify/features/categories/domain/use_cases/get_all_categories_use_case.dart';
import 'package:favify/features/categories/domain/use_cases/get_stored_winner_categories_use_case.dart';
import 'package:favify/features/categories/domain/use_cases/store_winner_categories_use_case.dart';
import 'package:mocktail/mocktail.dart';

// DataSources
class MockCategoriesRemoteDataSource extends Mock
    implements CategoriesRemoteDataSource {}

// Repositories
class MockCategoriesRepository extends Mock implements CategoriesRepository {}

// UseCases
class MockGetAllCategoriesUseCase extends Mock
    implements GetAllCategoriesUseCase {}

class MockGetStoredCategoriesUseCase extends Mock
    implements GetStoredWinnerCategoriesUseCase {}

class MockStoreWinnerCategoriesUseCase extends Mock
    implements StoreWinnerCategoriesUseCase {}
