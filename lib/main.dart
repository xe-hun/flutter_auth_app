import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_app/firebase_options.dart';
import 'package:flutter_auth_app/injectable.dart';
import 'package:flutter_auth_app/presentation/core/init_widget.dart';
import 'package:flutter_auth_app/router/app_router.gr.dart';
import 'package:flutter_auth_app/router/app_guard.dart';

bool shouldUseFirebaseEmulator = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  if (shouldUseFirebaseEmulator) {
    await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  }
  await configureDependencies();
  getIt.registerSingleton<AppRouter>(AppRouter(appGuard: getIt<AppGuard>()));

  runApp(const InitWidget());
}

final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();
