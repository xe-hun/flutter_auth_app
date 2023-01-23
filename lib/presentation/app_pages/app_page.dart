import 'package:auto_route/auto_route.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  @override
  void initState() {
    // context.router.push(const SendVerificationEmailRoute());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
