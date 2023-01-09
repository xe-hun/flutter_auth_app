import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_app/application/auth_page/auth_page_bloc.dart';
import 'package:flutter_auth_app/presentation/auth_pages/auth_layout.dart';
import 'package:flutter_auth_app/presentation/auth_pages/utils.dart';
import 'package:flutter_auth_app/presentation/core/input_validators.dart';
import 'package:flutter_auth_app/presentation/core/widgets.dart';
import 'package:flutter_auth_app/router/app_router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      displayText: 'HI!',
      pageContent: Form(
        child: Builder(builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildTextField(
                  validator: emailValidator,
                  label: 'Email',
                  textEditingController:
                      BlocProvider.of<AuthPageBloc>(context).emailTEC),
              buildButton(
                  label: 'Continue',
                  onPressed: () {
                    if (Form.of(context)!.validate()) {
                      AutoRouter.of(context).push(const LoginPasswordRoute());
                    }
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
                clearTextControllers(BlocProvider.of<AuthPageBloc>(context));
                AutoRouter.of(context).push(const SignupRoute());
              }),
              buildForgotPasswordPrompt(onPressed: () {}),
            ],
          );
        }),
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
