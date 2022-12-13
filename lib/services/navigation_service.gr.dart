// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'navigation_service.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    PlayRoute.name: (routeData) {
      final args = routeData.argsAs<PlayRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: PlayPage(
          category: args.category,
          key: args.key,
        ),
      );
    },
    WinnerRoute.name: (routeData) {
      final args = routeData.argsAs<WinnerRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: WinnerPage(
          winnerItem: args.winnerItem,
          unmodifiedCategory: args.unmodifiedCategory,
          key: args.key,
        ),
      );
    },
    AllCategoriesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const AllCategoriesPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        RouteConfig(
          PlayRoute.name,
          path: '/play-page',
        ),
        RouteConfig(
          WinnerRoute.name,
          path: '/winner-page',
        ),
        RouteConfig(
          AllCategoriesRoute.name,
          path: '/all-categories-page',
        ),
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [PlayPage]
class PlayRoute extends PageRouteInfo<PlayRouteArgs> {
  PlayRoute({
    required Category category,
    Key? key,
  }) : super(
          PlayRoute.name,
          path: '/play-page',
          args: PlayRouteArgs(
            category: category,
            key: key,
          ),
        );

  static const String name = 'PlayRoute';
}

class PlayRouteArgs {
  const PlayRouteArgs({
    required this.category,
    this.key,
  });

  final Category category;

  final Key? key;

  @override
  String toString() {
    return 'PlayRouteArgs{category: $category, key: $key}';
  }
}

/// generated route for
/// [WinnerPage]
class WinnerRoute extends PageRouteInfo<WinnerRouteArgs> {
  WinnerRoute({
    required Item winnerItem,
    required Category unmodifiedCategory,
    Key? key,
  }) : super(
          WinnerRoute.name,
          path: '/winner-page',
          args: WinnerRouteArgs(
            winnerItem: winnerItem,
            unmodifiedCategory: unmodifiedCategory,
            key: key,
          ),
        );

  static const String name = 'WinnerRoute';
}

class WinnerRouteArgs {
  const WinnerRouteArgs({
    required this.winnerItem,
    required this.unmodifiedCategory,
    this.key,
  });

  final Item winnerItem;

  final Category unmodifiedCategory;

  final Key? key;

  @override
  String toString() {
    return 'WinnerRouteArgs{winnerItem: $winnerItem, unmodifiedCategory: $unmodifiedCategory, key: $key}';
  }
}

/// generated route for
/// [AllCategoriesPage]
class AllCategoriesRoute extends PageRouteInfo<void> {
  const AllCategoriesRoute()
      : super(
          AllCategoriesRoute.name,
          path: '/all-categories-page',
        );

  static const String name = 'AllCategoriesRoute';
}
