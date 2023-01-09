import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_auth_app/presentation/core/layout/page_layout.dart';
import 'package:flutter_auth_app/presentation/core/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AuthLayout extends HookWidget {
  const AuthLayout({
    super.key,
    required this.displayText,
    required this.pageContent,
    this.isLoading = false,
    this.errorMessage,
    this.topBar,
  });
  final String displayText;
  final Widget pageContent;
  final bool isLoading;
  final String? errorMessage;
  final Widget? topBar;

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      topBar: topBar,
      backgroundImage: noteBackground,
      errorMessage: errorMessage,
      isLoading: isLoading,
      pageContent: _buildAuthLayout(
        context: context,
        pageContent: pageContent,
        displayText: displayText,
      ),
    );
  }

  Widget _buildAuthLayout(
      {required BuildContext context,
      required String displayText,
      required Widget pageContent}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 1,
                              color: Theme.of(context).colorScheme.onTertiary)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 30),
                        child: pageContent,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
