import 'package:favify/common/widgets/category_list_content.dart';
import 'package:favify/common/widgets/common_scaffold.dart';
import 'package:favify/common/widgets/last_plays_list_content.dart';
import 'package:favify/core/strings.dart';
import 'package:favify/features/categories/presentation/cubits/categories_cubit.dart';
import 'package:favify/features/categories/presentation/cubits/categories_state.dart';
import 'package:favify/services/injection_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  final bool updated;

  const HomePage({this.updated = false, Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CategoriesCubit categoriesCubit = getIt.get<CategoriesCubit>();

  // different solution:
  //final CategoriesCubit categoriesCubit = getIt.get<CategoriesCubit>()..getAllCategories();

  @override
  void initState() {
    super.initState();
    _loadCategories();
  }

  @override
  void didUpdateWidget(covariant HomePage oldWidget) {
    if (widget.updated) {
      _loadCategories();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    categoriesCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: Strings.appBarTitle,
      body: BlocBuilder<CategoriesCubit, CategoriesState>(
        bloc: categoriesCubit,
        builder: (_, CategoriesState state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.isLoaded) {
            return Column(
              children: [
                CategoryListContent(
                  loadedCategories: state.categories,
                ),
                LastPlaysListContent(
                  localWinnerCategories: state.localWinnerCategories,
                ),
              ],
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  void _loadCategories() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (widget.updated) {
        await categoriesCubit.updateLocalCategories();
      } else {
        await categoriesCubit.getAllCategories();
      }
    });
  }
}
