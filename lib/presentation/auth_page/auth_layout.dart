import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_app/presentation/core/widgets.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({
    super.key,
    required this.displayText,
    required this.pageContent,
  });
  final String displayText;
  final Widget pageContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox.expand(
            child: Image(
              image: noteBackground,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .3,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(displayText,
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(fontWeight: FontWeight.w700))),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: Colors.grey.withOpacity(.5),
                      child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                          child: SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30.0, vertical: 30),
                              child: pageContent,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: AutoRouter.of(context).canPop()
                    ? buildBackButton(onBackPressed: () {
                        AutoRouter.of(context).pop();
                      })
                    : const SizedBox()),
          ),
        ],
      ),
    );
  }

  Widget buildBackButton({required Function() onBackPressed}) {
    return Builder(builder: (context) {
      return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: IconButton(
              color: Theme.of(context).colorScheme.onBackground,
              onPressed: onBackPressed,
              icon: const Icon(Icons.arrow_back_ios_new)));
    });
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

  buildForgotPasswordPrompt({required Function() onPressed}) {
    return Builder(builder: (context) {
      return Align(
        alignment: Alignment.centerLeft,
        child: TextButton(
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            onPressed: onPressed,
            child: Text(
              'Forgot your password?',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Theme.of(context).primaryColor),
            )),
      );
    });
  }
}
