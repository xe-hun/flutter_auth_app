import 'package:flutter/material.dart';
import 'package:flutter_auth_app/presentation/auth_page/auth_layout.dart';
import 'package:flutter_auth_app/presentation/auth_page/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginPasswordPage extends HookWidget {
  LoginPasswordPage({super.key});
  final TextEditingController temperaryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final obscurePassword = useValueNotifier(true);
    return AuthLayout(
      displayText: 'Log in',
      pageContent: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildPasswordField(
              textIsObscured: obscurePassword,
              toggleObscured: () =>
                  obscurePassword.value = !obscurePassword.value,
              label: 'Password',
              textEditingController: temperaryController),
          buildButton(label: 'Continue', onPressed: () {}),
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
              style: Theme.of(context).textTheme.bodySmall!.copyWith(),
              children: [
            WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: TextButton(
                  onPressed: onPressed,
                  child: Text('Sign up',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          )),
                ))
          ]));
    });
  }
}
