import 'package:auto_route/auto_route.dart';
import 'package:flutter_auth_app/presentation/auth_page/login_password_page.dart';
import 'package:flutter_auth_app/presentation/init_page/init_page.dart';
import 'package:flutter_auth_app/presentation/auth_page/auth_page.dart';
import 'package:flutter_auth_app/presentation/auth_page/login_page.dart';
import 'package:flutter_auth_app/presentation/auth_page/signup_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
        page: AuthPage,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 400,
        children: [
          AutoRoute(
            page: LoginPage,
            initial: true,
          ),
          AutoRoute(page: LoginPasswordPage),
          AutoRoute(page: SignupPage)
        ]),
    AutoRoute(page: InitPage, initial: true),
  ],
)
class $AppRouter {}
