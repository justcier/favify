// import 'package:favify/features/categories/data/data_sources/categories_remote_data_source_impl.dart';
// import 'package:favify/services/firebase_api_service.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
//
// import '../../../../mocks.dart';
// import '../../../../test_data.dart';
//
// void main() {
//   final FirebaseApiService firebaseApiService = MockFirebaseApiService();
//
//   final CategoriesRemoteDataSourceImpl categoriesRemoteDataSourceImpl =
//       CategoriesRemoteDataSourceImpl(firebaseApiService);
//
//   group('CategoriesRemoteDataSourceImpl', () {
//     group('getAllCategories', () {
//       test('should return all categories', () async {
//         // Arrange
//         when(firebaseApiService.getAllCategories)
//             .thenAnswer((_) async => tCategories);
//
//         // Act
//         final result = await categoriesRemoteDataSourceImpl.getAllCategories();
//
//         // Assert
//         expect(result, tCategories);
//       });
//     });
//   });
// }
// TODO Problem with mocking data from firebase
