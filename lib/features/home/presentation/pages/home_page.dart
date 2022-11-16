import 'package:favify/common/widgets/category_list_content.dart';
import 'package:favify/core/strings.dart';
import 'package:favify/features/categories/data/data_sources/categories_remote_data_source.dart';
import 'package:favify/services/injection_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Strings.appBarTitle)),
      body: CategoryListContent(
        loadedCategories:
            getIt.get<CategoriesRemoteDataSource>().getAllCategories(),
      ),
    );
  }
}
