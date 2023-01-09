import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_app/presentation/auth_pages/auth_layout.dart';
import 'package:flutter_auth_app/presentation/core/widgets.dart';
import 'package:flutter_auth_app/router/app_router.gr.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EmailVerifiedPage extends HookWidget {
  const EmailVerifiedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          textTheme: const TextTheme(bodyLarge: TextStyle(fontSize: 16))),
      child: Builder(builder: (context) {
        return AuthLayout(
          displayText: 'Email Verification Successful',
          pageContent: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Your Email has been verified successfully',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(
                height: 30,
              ),
              buildButton(
                  label: 'Go To App',
                  onPressed: (() {
                    context.router.replace(const AppRoute());
                  }))
            ],
          ),
        );
      }),
    );
  }
}
