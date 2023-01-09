import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_app/application/auth_page/auth_page_bloc.dart';
import 'package:flutter_auth_app/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            getIt<AuthPageBloc>()..add(const AuthPageEvent.started()),
        child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: const AutoRouter()));
  }
}
