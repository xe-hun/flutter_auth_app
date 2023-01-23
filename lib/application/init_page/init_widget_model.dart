import 'dart:convert';

import 'package:flutter_auth_app/application/theme/theme_bloc.dart';
import 'package:flutter_auth_app/domain/core/failures.dart';
import 'package:flutter_auth_app/domain/i_repository/i_app_repository.dart';
import 'package:flutter_auth_app/domain/i_repository/i_auth_repository.dart';
import 'package:flutter_auth_app/injectable.dart';
import 'package:flutter_auth_app/router/app_router.gr.dart';
import 'package:injectable/injectable.dart';

@injectable
class InitWidgetModel {
  InitWidgetModel(this.appRepository, this.authRepository, this.themeBloc);
  final IAppRepository appRepository;
  final IAuthRepository authRepository;
  final ThemeBloc themeBloc;

  Future<void> initialize() async {
    final router = getIt<AppRouter>();
    themeBloc.add(const ThemeEvent.started());
    final dynamicLink = await appRepository.initializeDynamicLink();
    if (dynamicLink != null) {
      _handleDynamicLink(dynamicLink);
    } else if (authRepository.isLoggedIn) {
      router.replace(const AppRoute());
    } else {
      router.replace(const AuthRoute());
    }
    appRepository.onListenToDynamicLink(
        _handleDynamicLink, _onDynamicLinkError);
  }

  void _handleDynamicLink(Uri dynamicLink) {
    final router = getIt<AppRouter>();

    final continueUrl = dynamicLink.queryParameters['continue-url'];
    final uri = Uri.parse(continueUrl ?? '');

    if (jsonDecode(uri.queryParameters['validate-email'].toString()) == true) {
      router.replace(const EmailVerifiedRoute());
    }
  }

  void _onDynamicLinkError(AuthFailure failure) {}
}
