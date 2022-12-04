import 'package:auto_route/auto_route.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/features/home/presentation/pages/home_page.dart';
import 'package:favify/features/play/presentation/pages/play_page.dart';
import 'package:favify/features/play/presentation/pages/winner_page.dart';
import 'package:flutter/material.dart';

part 'navigation_service.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: PlayPage),
    AutoRoute(page: WinnerPage)
  ],
)
class AppRouter extends _$AppRouter {}
