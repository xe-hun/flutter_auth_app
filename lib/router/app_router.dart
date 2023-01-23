import 'package:auto_route/auto_route.dart';
import 'package:flutter_auth_app/presentation/app_pages/app_page.dart';
import 'package:flutter_auth_app/presentation/app_pages/profile_page.dart';
import 'package:flutter_auth_app/presentation/auth_pages/login_password_page.dart';
import 'package:flutter_auth_app/presentation/email_verification_pages/email_verified_page.dart';
import 'package:flutter_auth_app/presentation/init_page/init_page.dart';
import 'package:flutter_auth_app/presentation/auth_pages/auth_page.dart';
import 'package:flutter_auth_app/presentation/auth_pages/login_page.dart';
import 'package:flutter_auth_app/presentation/auth_pages/signup_page.dart';

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
          AutoRoute(page: SignupPage),
        ]),
    AutoRoute(
      page: AppPage,
      children: [
        AutoRoute(
          initial: true,
          page: ProfilePage,
        )
      ],
    ),
    // AutoRoute(
    //   page: SendVerificationEmailPage,
    // ),
    AutoRoute(
      page: EmailVerifiedPage,
    ),
    AutoRoute(page: InitPage, initial: true),
  ],
)
class $AppRouter {}
