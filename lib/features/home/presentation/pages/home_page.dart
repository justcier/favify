import 'package:favify/features/home/presentation/widgets/category_item.dart';
import 'package:flutter/material.dart';

import '../../domain/models/category.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // dummy data for testing purpose -> to delete when connection to firebase will be made
  final List<Category> loadedCategories = [
    Category(id: 'c1', title: 'Cats', description: 'Cats category'),
    Category(id: 'c2', title: 'Dogs', description: 'Dogs category'),
    Category(id: 'c3', title: 'Songs', description: 'Songs category'),
    Category(id: 'c4', title: 'Film', description: 'Films category'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favify')),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedCategories.length,
        itemBuilder: (ctx, i) => CategoryItem(
          id: loadedCategories[i].id,
          title: loadedCategories[i].title,
          description: loadedCategories[i].description,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 15 / 2,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
