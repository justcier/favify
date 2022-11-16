import 'package:favify/features/home/presentation/pages/home_page.dart';
import 'package:favify/services/injection_service.dart';
import 'package:flutter/material.dart';

void main() {
  configureInjector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favify',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
