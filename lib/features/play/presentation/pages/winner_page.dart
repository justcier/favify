import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:flutter/material.dart';

class WinnerPage extends StatelessWidget {
  final Category category;
  const WinnerPage({required this.category, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Winner Page'),
      ),
    );
  }
}
