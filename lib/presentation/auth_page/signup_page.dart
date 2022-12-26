import 'package:flutter/material.dart';
import 'package:flutter_auth_app/presentation/auth_page/auth_layout.dart';
import 'package:flutter_auth_app/presentation/auth_page/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SignupPage extends HookWidget {
  SignupPage({super.key});
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final obscurePassword = useValueNotifier(false);
    return AuthLayout(
      displayText: 'Sign up',
      pageContent: Column(
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
              textEditingController: textEditingController, label: 'name'),
          buildPasswordField(
              textEditingController: textEditingController,
              label: 'Password',
              textIsObscured: obscurePassword,
              toggleObscured: () =>
                  obscurePassword.value = !obscurePassword.value),
          buildTermsAndPrivacyPolicyPrompt(onPressed: () {}),
          buildButton(label: 'Agree and continue', onPressed: () {})
        ],
      ),
    );
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
                    // style: Theme.of(context)
                    //     .textTheme
                    //     .titleMedium!
                    //     .copyWith(color: Theme.of(context).primaryColor),
                    alignment: PlaceholderAlignment.middle,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          // alignment: Alignment.center,
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
