// import 'package:favify/features/categories/data/data_sources/categories_remote_data_source.dart';
// import 'package:favify/features/categories/data/repositories/categories_repository_impl.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
//
// import '../../../../mocks.dart';
// import '../../../../test_data.dart';
//
// void main() {
//   final CategoriesRemoteDataSource categoriesRemoteDataSource =
//       MockCategoriesRemoteDataSource();
//
//   final CategoriesRepositoryImpl categoriesRepositoryImpl =
//       CategoriesRepositoryImpl(categoriesRemoteDataSource);
//
//   group('CategoriesRepositoryImpl', () {
//     group('getAllCategories', () {
//       test(
//           'should correctly propagate the call to remote data source and return all categories on a successful call',
//           () async {
//         // Arrange
//         when(categoriesRemoteDataSource.getAllCategories)
//             .thenReturn(tCategories);
//
//         // Act
//         final result = categoriesRepositoryImpl.getAllCategories();
//
//         // Assert
//         verify(categoriesRemoteDataSource.getAllCategories).called(1);
//         expect(result, tCategories);
//       });
//     });
//   });
// }
// TODO Repair
