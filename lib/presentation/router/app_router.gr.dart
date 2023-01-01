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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../app/app_page.dart' as _i2;
import '../auth_page/auth_page.dart' as _i1;
import '../auth_page/login_page.dart' as _i4;
import '../auth_page/login_password_page.dart' as _i5;
import '../auth_page/signup_page.dart' as _i6;
import '../init_page/init_page.dart' as _i3;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthPage(),
        transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 400,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AppRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.AppPage(),
      );
    },
    InitRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.InitPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.LoginPage(key: args.key),
      );
    },
    LoginPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPasswordRouteArgs>(
          orElse: () => const LoginPasswordRouteArgs());
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.LoginPasswordPage(key: args.key),
      );
    },
    SignupRoute.name: (routeData) {
      final args = routeData.argsAs<SignupRouteArgs>(
          orElse: () => const SignupRouteArgs());
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.SignupPage(key: args.key),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          AuthRoute.name,
          path: '/auth-page',
          children: [
            _i7.RouteConfig(
              LoginRoute.name,
              path: '',
              parent: AuthRoute.name,
            ),
            _i7.RouteConfig(
              LoginPasswordRoute.name,
              path: 'login-password-page',
              parent: AuthRoute.name,
            ),
            _i7.RouteConfig(
              SignupRoute.name,
              path: 'signup-page',
              parent: AuthRoute.name,
            ),
          ],
        ),
        _i7.RouteConfig(
          AppRoute.name,
          path: '/app-page',
        ),
        _i7.RouteConfig(
          InitRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i7.PageRouteInfo<void> {
  const AuthRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          path: '/auth-page',
          initialChildren: children,
        );

  static const String name = 'AuthRoute';
}

/// generated route for
/// [_i2.AppPage]
class AppRoute extends _i7.PageRouteInfo<void> {
  const AppRoute()
      : super(
          AppRoute.name,
          path: '/app-page',
        );

  static const String name = 'AppRoute';
}

/// generated route for
/// [_i3.InitPage]
class InitRoute extends _i7.PageRouteInfo<void> {
  const InitRoute()
      : super(
          InitRoute.name,
          path: '/',
        );

  static const String name = 'InitRoute';
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i8.Key? key})
      : super(
          LoginRoute.name,
          path: '',
          args: LoginRouteArgs(key: key),
        );

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.LoginPasswordPage]
class LoginPasswordRoute extends _i7.PageRouteInfo<LoginPasswordRouteArgs> {
  LoginPasswordRoute({_i8.Key? key})
      : super(
          LoginPasswordRoute.name,
          path: 'login-password-page',
          args: LoginPasswordRouteArgs(key: key),
        );

  static const String name = 'LoginPasswordRoute';
}

class LoginPasswordRouteArgs {
  const LoginPasswordRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'LoginPasswordRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.SignupPage]
class SignupRoute extends _i7.PageRouteInfo<SignupRouteArgs> {
  SignupRoute({_i8.Key? key})
      : super(
          SignupRoute.name,
          path: 'signup-page',
          args: SignupRouteArgs(key: key),
        );

  static const String name = 'SignupRoute';
}

class SignupRouteArgs {
  const SignupRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'SignupRouteArgs{key: $key}';
  }
}
