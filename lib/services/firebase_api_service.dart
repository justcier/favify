import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:injectable/injectable.dart';

final _firestore = FirebaseFirestore.instance;

@lazySingleton
class FirebaseApiService {
  final _categoriesRef = _firestore
      .collection('categories')
      .withConverter<Category>(
        fromFirestore: (snapshots, _) => Category.fromJson(snapshots.data()!),
        toFirestore: (category, _) => category.toJson(),
      );

  Future<QuerySnapshot<Category>> getAllCategories() {
    return _categoriesRef.get();
  }
}
