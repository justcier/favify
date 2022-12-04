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
          category: args.category,
          key: args.key,
        ),
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
    required Category category,
    Key? key,
  }) : super(
          WinnerRoute.name,
          path: '/winner-page',
          args: WinnerRouteArgs(
            category: category,
            key: key,
          ),
        );

  static const String name = 'WinnerRoute';
}

class WinnerRouteArgs {
  const WinnerRouteArgs({
    required this.category,
    this.key,
  });

  final Category category;

  final Key? key;

  @override
  String toString() {
    return 'WinnerRouteArgs{category: $category, key: $key}';
  }
}
