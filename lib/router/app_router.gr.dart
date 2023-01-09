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
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../presentation/app_pages/app_page.dart' as _i2;
import '../presentation/app_pages/profile_page.dart' as _i9;
import '../presentation/auth_pages/auth_page.dart' as _i1;
import '../presentation/auth_pages/login_page.dart' as _i6;
import '../presentation/auth_pages/login_password_page.dart' as _i7;
import '../presentation/auth_pages/signup_page.dart' as _i8;
import '../presentation/email_verification_pages/email_verified_page.dart'
    as _i4;
import '../presentation/email_verification_pages/send_verification_email_page.dart'
    as _i3;
import '../presentation/init_page/init_page.dart' as _i5;
import 'app_guard.dart' as _i12;

class AppRouter extends _i10.RootStackRouter {
  AppRouter({
    _i11.GlobalKey<_i11.NavigatorState>? navigatorKey,
    required this.appGuard,
  }) : super(navigatorKey);

  final _i12.AppGuard appGuard;

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthPage(),
        transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 400,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AppRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.AppPage(),
      );
    },
    SendVerificationEmailRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SendVerificationEmailPage(),
      );
    },
    EmailVerifiedRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmailVerifiedPage(),
      );
    },
    InitRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.InitPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.LoginPage(),
      );
    },
    LoginPasswordRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.LoginPasswordPage(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SignupPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.ProfilePage(),
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          AuthRoute.name,
          path: '/auth-page',
          children: [
            _i10.RouteConfig(
              LoginRoute.name,
              path: '',
              parent: AuthRoute.name,
            ),
            _i10.RouteConfig(
              LoginPasswordRoute.name,
              path: 'login-password-page',
              parent: AuthRoute.name,
            ),
            _i10.RouteConfig(
              SignupRoute.name,
              path: 'signup-page',
              parent: AuthRoute.name,
            ),
          ],
        ),
        _i10.RouteConfig(
          AppRoute.name,
          path: '/app-page',
          guards: [appGuard],
          children: [
            _i10.RouteConfig(
              ProfileRoute.name,
              path: '',
              parent: AppRoute.name,
            )
          ],
        ),
        _i10.RouteConfig(
          SendVerificationEmailRoute.name,
          path: '/send-verification-email-page',
        ),
        _i10.RouteConfig(
          EmailVerifiedRoute.name,
          path: '/email-verified-page',
        ),
        _i10.RouteConfig(
          InitRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i10.PageRouteInfo<void> {
  const AuthRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          path: '/auth-page',
          initialChildren: children,
        );

  static const String name = 'AuthRoute';
}

/// generated route for
/// [_i2.AppPage]
class AppRoute extends _i10.PageRouteInfo<void> {
  const AppRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AppRoute.name,
          path: '/app-page',
          initialChildren: children,
        );

  static const String name = 'AppRoute';
}

/// generated route for
/// [_i3.SendVerificationEmailPage]
class SendVerificationEmailRoute extends _i10.PageRouteInfo<void> {
  const SendVerificationEmailRoute()
      : super(
          SendVerificationEmailRoute.name,
          path: '/send-verification-email-page',
        );

  static const String name = 'SendVerificationEmailRoute';
}

/// generated route for
/// [_i4.EmailVerifiedPage]
class EmailVerifiedRoute extends _i10.PageRouteInfo<void> {
  const EmailVerifiedRoute()
      : super(
          EmailVerifiedRoute.name,
          path: '/email-verified-page',
        );

  static const String name = 'EmailVerifiedRoute';
}

/// generated route for
/// [_i5.InitPage]
class InitRoute extends _i10.PageRouteInfo<void> {
  const InitRoute()
      : super(
          InitRoute.name,
          path: '/',
        );

  static const String name = 'InitRoute';
}

/// generated route for
/// [_i6.LoginPage]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i7.LoginPasswordPage]
class LoginPasswordRoute extends _i10.PageRouteInfo<void> {
  const LoginPasswordRoute()
      : super(
          LoginPasswordRoute.name,
          path: 'login-password-page',
        );

  static const String name = 'LoginPasswordRoute';
}

/// generated route for
/// [_i8.SignupPage]
class SignupRoute extends _i10.PageRouteInfo<void> {
  const SignupRoute()
      : super(
          SignupRoute.name,
          path: 'signup-page',
        );

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i9.ProfilePage]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}
