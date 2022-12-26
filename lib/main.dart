import 'package:flutter/material.dart';
import 'package:flutter_auth_app/injectable.dart';
import 'package:flutter_auth_app/presentation/core/init_widget.dart';
import 'package:flutter_auth_app/presentation/router/app_router.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  runApp(InitWidget());
}

final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

final AppRouter appRouter = AppRouter();
