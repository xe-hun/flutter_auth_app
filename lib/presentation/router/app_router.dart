import 'package:auto_route/auto_route.dart';
import 'package:flutter_auth_app/presentation/init_page/init_page.dart';
import 'package:flutter_auth_app/presentation/landing_page/landing_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      page: LandingPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 400,
    ),
    AutoRoute(page: InitPage, initial: true),
  ],
)
class $AppRouter {}
