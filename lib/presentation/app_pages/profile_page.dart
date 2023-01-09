import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_app/application/app_page/app_page_bloc.dart';
import 'package:flutter_auth_app/injectable.dart';
import 'package:flutter_auth_app/presentation/core/layout/page_layout.dart';
import 'package:flutter_auth_app/router/app_router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AppPageBloc>()..add(const AppPageEvent.started()),
      child: BlocBuilder<AppPageBloc, AppPageState>(
        builder: (context, state) {
          return state.when(
              initial: () => Container(),
              idle: (errorMessage, isLoading, userDetails) => PageLayout(
                  isLoading: isLoading,
                  errorMessage: errorMessage,
                  pageContent: Scaffold(
                    body: SafeArea(
                      child: Theme(
                        data: ThemeData(
                            textTheme: const TextTheme(
                          titleLarge: TextStyle(fontSize: 54),
                          bodyMedium: TextStyle(fontSize: 20),
                        )),
                        child: Builder(
                          builder: (context) => Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: IconButton(
                                    onPressed: () {
                                      BlocProvider.of<AppPageBloc>(context).add(
                                          AppPageEvent.logout(onLogout: () {
                                        AutoRouter.of(context)
                                            .replace(const AuthRoute());
                                      }));
                                    },
                                    icon: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.logout,
                                      ),
                                    )),
                              ),
                              const Spacer(),
                              Text(
                                'logged In',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              displayUserDetails(
                                  context: context,
                                  label: 'Your email is',
                                  value: userDetails.email),
                              displayUserDetails(
                                  context: context,
                                  label: 'Your display name is',
                                  value: userDetails.displayname),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ))

              // idle:

              );
        },
      ),
    );
  }

  Widget displayUserDetails(
      {required BuildContext context,
      required String label,
      required String value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '$label :',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(width: 10),
          Text(
            value,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w500,
                color: Theme.of(context).primaryColor),
          )
        ],
      ),
    );
  }
}
