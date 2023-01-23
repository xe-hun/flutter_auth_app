import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_app/application/app_page/app_page_bloc.dart';
import 'package:flutter_auth_app/injectable.dart';
import 'package:flutter_auth_app/presentation/core/layout/page_layout.dart';
import 'package:flutter_auth_app/presentation/widget/sizes.dart';
import 'package:flutter_auth_app/presentation/widget/spaces.dart';
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
                      child: Builder(
                        builder: (context) => Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {
                                    BlocProvider.of<AppPageBloc>(context)
                                        .add(AppPageEvent.logout(onLogout: () {
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
                            Expanded(
                              child: Center(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Profile',
                                        style: TextStyle(
                                            fontSize: displaySize5,
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onBackground),
                                      ),
                                      verticalSpace5,
                                      SizedBox(
                                          height: 150,
                                          child: AspectRatio(
                                            aspectRatio: 1,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 6,
                                                      color: Theme.of(context)
                                                          .primaryColor),
                                                  shape: BoxShape.circle),
                                              child: _buildProfileImg(
                                                  userDetails.imageUrl),
                                            ),
                                          )),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          verticalSpace3,
                                          displayUserDetails(
                                              context: context,
                                              label: 'Email',
                                              value: userDetails.email),
                                          verticalSpace2,
                                          displayUserDetails(
                                              context: context,
                                              label: 'Name',
                                              value: userDetails.displayname),
                                        ],
                                      ),
                                    ]),
                              ),
                            ),
                          ],
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
          Text('$label :', style: TextStyle(fontSize: displaySize1)),
          const SizedBox(width: 10),
          Text(
            value,
            style: TextStyle(
                fontSize: displaySize0, color: Theme.of(context).primaryColor),
          )
        ],
      ),
    );
  }

  Widget _buildProfileImg(String? imageUrl) {
    if (imageUrl != null) {
      return CircleAvatar(backgroundImage: NetworkImage(imageUrl));
    } else {
      return const CircleAvatar(
          backgroundImage: AssetImage('assets/images/profile_img.jpg'));
    }
  }
}
