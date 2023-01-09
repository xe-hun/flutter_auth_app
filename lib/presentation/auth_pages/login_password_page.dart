import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_app/application/auth_page/auth_page_bloc.dart';
import 'package:flutter_auth_app/presentation/auth_pages/auth_layout.dart';
import 'package:flutter_auth_app/presentation/core/input_validators.dart';
import 'package:flutter_auth_app/presentation/core/widgets.dart';
import 'package:flutter_auth_app/router/app_router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginPasswordPage extends HookWidget {
  const LoginPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final obscurePassword = useValueNotifier(true);

    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        return state.when(
          initial: () => Container(),
          display: (isLoading, errorMessage) {
            // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            //   errorMessageFlushbar.value?.dismiss();
            //   errorMessageFlushbar.value =
            //       buildErrorFlushbar(context)(errorMessage);
            //   errorMessageFlushbar.value?.show(context);
            // });

            return AuthLayout(
              errorMessage: errorMessage,
              isLoading: isLoading,
              displayText: 'Log in',
              pageContent: Form(
                child: Builder(builder: (context) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      buildPasswordField(
                          validator: passwordValidator,
                          textIsObscured: obscurePassword,
                          toggleObscured: () =>
                              obscurePassword.value = !obscurePassword.value,
                          label: 'Password',
                          textEditingController:
                              BlocProvider.of<AuthPageBloc>(context)
                                  .passwordTEC),
                      buildButton(
                          label: 'Continue',
                          onPressed: () {
                            FocusScope.of(context).unfocus();

                            if (Form.of(context)!.validate()) {
                              BlocProvider.of<AuthPageBloc>(context).add(
                                  AuthPageEvent.login(
                                      onLogin: () => onLogin(context)));
                            }
                          }),
                      buildForgotPasswordPrompt(onPressed: () {}),
                    ],
                  );
                }),
              ),
            );
          },
        );
      },
    );
  }

  void onLogin(BuildContext context) {
    AutoRouter.of(context).root.replace(const AppRoute());
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
