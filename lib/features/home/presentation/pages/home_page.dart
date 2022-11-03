import 'package:favify/common/widgets/category_list_content.dart';
import 'package:favify/core/strings.dart';
import 'package:favify/features/home/domain/models/category.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // dummy data for testing purpose -> to delete when connection to firebase will be made
  final List<Category> loadedCategories = [
    Category(
      id: 'c1',
      title: 'Cats',
      description: 'Cats category description',
    ),
    Category(
      id: 'c2',
      title: 'Dogs',
      description: 'Dogs category description',
    ),
    Category(
      id: 'c3',
      title: 'Songs',
      description: 'Songs category description',
    ),
    Category(
      id: 'c4',
      title: 'Film',
      description: 'Films category description',
    ),
    Category(
      id: 'c4',
      title: 'Ziom',
      description: 'Zioms category description',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Strings.appBarTitle)),
      body: CategoryListContent(loadedCategories: loadedCategories),
    );
  }
}
