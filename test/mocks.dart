import 'package:favify/features/categories/data/data_sources/categories_remote_data_source.dart';
import 'package:favify/features/categories/domain/repositories/categories_repository.dart';
import 'package:mocktail/mocktail.dart';

// DataSources
class MockCategoriesRemoteDataSource extends Mock
    implements CategoriesRemoteDataSource {}

// Repositories
class MockCategoriesRepository extends Mock implements CategoriesRepository {}
