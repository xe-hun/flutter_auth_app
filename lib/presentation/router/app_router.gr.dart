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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../auth_page/auth_page.dart' as _i1;
import '../auth_page/login_page.dart' as _i3;
import '../auth_page/login_password_page.dart' as _i4;
import '../auth_page/signup_page.dart' as _i5;
import '../init_page/init_page.dart' as _i2;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthPage(),
        transitionsBuilder: _i6.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 400,
        opaque: true,
        barrierDismissible: false,
      );
    },
    InitRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.InitPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.LoginPage(key: args.key),
      );
    },
    LoginPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPasswordRouteArgs>(
          orElse: () => const LoginPasswordRouteArgs());
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.LoginPasswordPage(key: args.key),
      );
    },
    SignupRoute.name: (routeData) {
      final args = routeData.argsAs<SignupRouteArgs>(
          orElse: () => const SignupRouteArgs());
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.SignupPage(key: args.key),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          AuthRoute.name,
          path: '/auth-page',
          children: [
            _i6.RouteConfig(
              LoginRoute.name,
              path: '',
              parent: AuthRoute.name,
            ),
            _i6.RouteConfig(
              LoginPasswordRoute.name,
              path: 'login-password-page',
              parent: AuthRoute.name,
            ),
            _i6.RouteConfig(
              SignupRoute.name,
              path: 'signup-page',
              parent: AuthRoute.name,
            ),
          ],
        ),
        _i6.RouteConfig(
          InitRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i6.PageRouteInfo<void> {
  const AuthRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          path: '/auth-page',
          initialChildren: children,
        );

  static const String name = 'AuthRoute';
}

/// generated route for
/// [_i2.InitPage]
class InitRoute extends _i6.PageRouteInfo<void> {
  const InitRoute()
      : super(
          InitRoute.name,
          path: '/',
        );

  static const String name = 'InitRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i7.Key? key})
      : super(
          LoginRoute.name,
          path: '',
          args: LoginRouteArgs(key: key),
        );

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.LoginPasswordPage]
class LoginPasswordRoute extends _i6.PageRouteInfo<LoginPasswordRouteArgs> {
  LoginPasswordRoute({_i7.Key? key})
      : super(
          LoginPasswordRoute.name,
          path: 'login-password-page',
          args: LoginPasswordRouteArgs(key: key),
        );

  static const String name = 'LoginPasswordRoute';
}

class LoginPasswordRouteArgs {
  const LoginPasswordRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'LoginPasswordRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.SignupPage]
class SignupRoute extends _i6.PageRouteInfo<SignupRouteArgs> {
  SignupRoute({_i7.Key? key})
      : super(
          SignupRoute.name,
          path: 'signup-page',
          args: SignupRouteArgs(key: key),
        );

  static const String name = 'SignupRoute';
}

class SignupRouteArgs {
  const SignupRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'SignupRouteArgs{key: $key}';
  }
}
