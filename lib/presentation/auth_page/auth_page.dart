import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: const AutoRouter()
        // const Scaffold(body: Center(child: Text('this is the end'))),
        );
  }
}
