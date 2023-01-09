import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_app/presentation/core/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PageLayout extends HookWidget {
  const PageLayout({
    super.key,
    required this.pageContent,
    this.isLoading = false,
    this.errorMessage,
    this.backgroundImage,
    this.topBar,
  });
  final Widget pageContent;
  final bool isLoading;
  final String? errorMessage;
  final AssetImage? backgroundImage;
  final Widget? topBar;

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      late final Flushbar? flushbar;
      Future.microtask(() {
        flushbar = buildErrorFlushbar(context)(errorMessage)?..show(context);
        FocusScope.of(context).unfocus();
      });
      return () => flushbar?.dismiss();
    }, [errorMessage]);

    return Scaffold(
      body: Stack(
        children: [
          if (backgroundImage != null)
            SizedBox.expand(
              child: Image(
                image: backgroundImage!,
                fit: BoxFit.cover,
              ),
            ),
          pageContent,
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                children: [
                  AutoRouter.of(context).canPop()
                      ? buildBackButton(onBackPressed: () {
                          AutoRouter.of(context).pop();
                        })
                      : const SizedBox(),
                  Expanded(
                      child: topBar != null
                          ? Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: topBar!,
                              ))
                          : const SizedBox()),
                ],
              ),
            ),
          ),
          Visibility(
            visible: isLoading,
            child: SafeArea(
              child: Center(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(color: Colors.black54),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: LinearProgressIndicator(
                      minHeight: 3,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                ),
              ),
            ),
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
