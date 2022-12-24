// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../init_page/init_page.dart' as _i2;
import '../landing_page/landing_page.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.LandingPage(),
        transitionsBuilder: _i3.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 400,
        opaque: true,
        barrierDismissible: false,
      );
    },
    InitRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.InitPage(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          LandingRoute.name,
          path: '/landing-page',
        ),
        _i3.RouteConfig(
          InitRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.LandingPage]
class LandingRoute extends _i3.PageRouteInfo<void> {
  const LandingRoute()
      : super(
          LandingRoute.name,
          path: '/landing-page',
        );

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i2.InitPage]
class InitRoute extends _i3.PageRouteInfo<void> {
  const InitRoute()
      : super(
          InitRoute.name,
          path: '/',
        );

  static const String name = 'InitRoute';
}
