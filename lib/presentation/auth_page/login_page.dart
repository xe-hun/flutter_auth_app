import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_app/presentation/auth_page/auth_layout.dart';
import 'package:flutter_auth_app/presentation/auth_page/widgets.dart';
import 'package:flutter_auth_app/presentation/router/app_router.gr.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController temperaryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      displayText: 'HI!',
      pageContent: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildTextField(
              label: 'Email', textEditingController: temperaryController),
          buildButton(
              label: 'Continue',
              onPressed: () {
                AutoRouter.of(context).push(LoginPasswordRoute());
              }),
          Center(
            child: Text(
              'or',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          buildIconButton(
              icon: const Icon(Icons.facebook),
              label: 'Continue with Facebook',
              onPressed: () {}),
          buildIconButton(
              icon: const Icon(Icons.apple),
              label: 'Continue with Apple',
              onPressed: () {}),
          buildIconButton(
              icon: const Icon(Icons.g_mobiledata),
              label: 'Continue with Google',
              onPressed: () {}),
          buildSignupPrompt(onPressed: () {
            AutoRouter.of(context).push(SignupRoute());
          }),
          buildForgotPasswordPrompt(onPressed: () {}),
        ],
      ),
    );
  }

  Widget buildSignupPrompt({required Function() onPressed}) {
    return Builder(builder: (context) {
      return RichText(
          text: TextSpan(
              text: "Don't have an account?",
              style: Theme.of(context).textTheme.titleMedium,
              children: [
            WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: TextButton(
                  onPressed: onPressed,
                  child: Text('Sign up',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          )),
                ))
          ]));
    });
  }
}
