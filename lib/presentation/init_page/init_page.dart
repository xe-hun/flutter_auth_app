import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_app/application/theme/theme_bloc.dart';
import 'package:flutter_auth_app/presentation/router/app_router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class InitPage extends HookWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
        final themeBloc = BlocProvider.of<ThemeBloc>(context);
        await precacheImage(
            const AssetImage("assets/images/note_background.jpg"), context);

        themeBloc.add(const ThemeEvent.started());
      });
      return null;
    }, [0]);

    return BlocListener<ThemeBloc, ThemeState>(
      listener: (context, state) {
        state.maybeWhen(
          initial: () {
            //do nothing
          },
          orElse: () {
            Future.delayed(const Duration(milliseconds: 800),
                () => context.router.replace(const AuthRoute()));
          },
        );
      },
      child: Scaffold(
        backgroundColor: Colors.grey.shade800,
        body: const Padding(
          padding: EdgeInsets.all(30.0),
          child: Center(
            child: LinearProgressIndicator(),
          ),
        ),
        // backgroundColor: Colors.white,
      ),
    );
  }
}
