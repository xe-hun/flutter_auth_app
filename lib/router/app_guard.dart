import 'package:auto_route/auto_route.dart';
import 'package:flutter_auth_app/domain/i_repository/i_auth_repository.dart';
import 'package:flutter_auth_app/router/app_router.gr.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppGuard extends AutoRouteGuard {
  AppGuard(this.authRepository);
  final IAuthRepository authRepository;
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation

    if (authRepository.emailIsVerified == true) {
      // if user is authenticated we continue
      resolver.next(true);
    } else if (authRepository.isLoggedIn == true) {
      // router.replace(const SendVerificationEmailRoute());
      resolver.next(false);
    } else {
      router.replace(const AuthRoute());
      resolver.next(false);
    }
  }
}
