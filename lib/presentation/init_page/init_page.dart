import 'package:flutter/material.dart';
import 'package:flutter_auth_app/application/init_page/init_widget_model.dart';
import 'package:flutter_auth_app/injectable.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class InitPage extends HookWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future.microtask(() async {
        await precacheImage(
            const AssetImage("assets/images/note_background.jpg"), context);
        getIt<InitWidgetModel>().initialize();
      });

      return null;
    });

    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: const Padding(
        padding: EdgeInsets.all(30.0),
        child: Center(
          child: LinearProgressIndicator(),
        ),
      ),
      // backgroundColor: Colors.white,
    );
  }
}
