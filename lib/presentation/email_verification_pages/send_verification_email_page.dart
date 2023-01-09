import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_app/application/email_verification_page/email_verification_page_bloc.dart';
import 'package:flutter_auth_app/injectable.dart';
import 'package:flutter_auth_app/presentation/auth_pages/auth_layout.dart';
import 'package:flutter_auth_app/router/app_router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SendVerificationEmailPage extends HookWidget {
  const SendVerificationEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          textTheme: const TextTheme(bodyLarge: TextStyle(fontSize: 16))),
      child: BlocProvider(
        create: (context) => getIt<EmailVerificationPageBloc>(),
        child:
            BlocBuilder<EmailVerificationPageBloc, EmailVerificationPageState>(
                builder: (context, state) {
          return AuthLayout(
            topBar: IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                BlocProvider.of<EmailVerificationPageBloc>(context)
                    .add(EmailVerificationPageEvent.logout(onLogout: () {
                  context.router.pushAndPopUntil(const AuthRoute(),
                      predicate: (_) => false);
                }));
              },
            ),
            displayText: 'Verify Email',
            pageContent: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'A verification Email has been sent to your email Address.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(
                  height: 30,
                ),
                RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(0, 30)),
                      child: const Text(
                        'click here ',
                      ),
                      onPressed: () {},
                    ),
                  ),
                  TextSpan(
                    text: 'to go to your email.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ])),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                      text: "Didn't get the email?, "),
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        padding: EdgeInsets.zero,
                        minimumSize: const Size(0, 30),
                      ),
                      child: const Text(
                        'click here ',
                      ),
                      onPressed: () {},
                    ),
                  ),
                  TextSpan(
                    text: 'to resend email. or',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        padding: EdgeInsets.zero,
                        minimumSize: const Size(0, 30),
                      ),
                      child: const Text(
                        'click here ',
                      ),
                      onPressed: () {},
                    ),
                  ),
                  TextSpan(
                    text: 'to refresh if you have already verified your email.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ])),
              ],
            ),
          );
        }),
      ),
    );
  }
}
