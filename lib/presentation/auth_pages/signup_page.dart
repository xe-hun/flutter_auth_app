import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_app/application/auth_page/auth_page_bloc.dart';
import 'package:flutter_auth_app/presentation/auth_pages/auth_layout.dart';
import 'package:flutter_auth_app/presentation/auth_pages/utils.dart';
import 'package:flutter_auth_app/presentation/core/input_validators.dart';
import 'package:flutter_auth_app/presentation/core/widgets.dart';
import 'package:flutter_auth_app/router/app_router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SignupPage extends HookWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final obscurePassword = useValueNotifier(false);

    return WillPopScope(
      onWillPop: () async {
        clearTextControllers(BlocProvider.of<AuthPageBloc>(context));
        return true;
      },
      child: BlocBuilder<AuthPageBloc, AuthPageState>(
        builder: (context, state) {
          return state.when(
            initial: () => Container(),
            display: ((loading, errorMessage) => AuthLayout(
                  isLoading: loading,
                  errorMessage: errorMessage,
                  displayText: 'Sign up',
                  pageContent: Form(
                    child: Builder(builder: (context) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              "looks like you don't have an account. \n"
                              "Let's create a new account for jon.doe@mail.com",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(height: 1.5),
                            ),
                          ),
                          buildTextField(
                            validator: displayNameValidator,
                            textEditingController:
                                BlocProvider.of<AuthPageBloc>(context)
                                    .displayNameTEC,
                            label: 'display name',
                          ),
                          buildTextField(
                            validator: emailValidator,
                            textEditingController:
                                BlocProvider.of<AuthPageBloc>(context).emailTEC,
                            label: 'email',
                          ),
                          buildPasswordField(
                              validator: passwordValidator,
                              textEditingController:
                                  BlocProvider.of<AuthPageBloc>(context)
                                      .passwordTEC,
                              label: 'Password',
                              textIsObscured: obscurePassword,
                              toggleObscured: () => obscurePassword.value =
                                  !obscurePassword.value),
                          buildTermsAndPrivacyPolicyPrompt(onPressed: () {}),
                          buildButton(
                              label: 'Agree and continue',
                              onPressed: () {
                                // AutoRouter.of(context).root.replace(
                                //     const SendVerifi());

                                if (Form.of(context)!.validate()) {
                                  BlocProvider.of<AuthPageBloc>(context).add(
                                      AuthPageEvent.register(
                                          onRegister: () =>
                                              onRegister(context)));
                                }
                              })
                        ],
                      );
                    }),
                  ),
                )),
          );
        },
      ),
    );
  }

  void onRegister(BuildContext context) {
    AutoRouter.of(context).root.replace(const AppRoute());
    clearTextControllers(BlocProvider.of<AuthPageBloc>(context));
  }

  Widget buildTermsAndPrivacyPolicyPrompt({required Function() onPressed}) {
    return Builder(builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: RichText(
          text: TextSpan(
              text: "By selecting Agree and continue below,\n"
                  "I agree to ",
              style: Theme.of(context).textTheme.titleMedium,
              children: [
                WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          minimumSize: Size.zero,
                          padding: EdgeInsets.zero),
                      child: Text(
                        'Terms of Service and Privacy Policy',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: Theme.of(context).primaryColor,
                                height: 2),
                      ),
                    ))
              ]),
        ),
      );
    });
  }
}
