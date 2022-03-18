import 'package:FitnestX/src/screens/example/index.dart';
import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:flutter/material.dart';

import 'common/router.dart';
import 'uikit/style/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  static final AppRouter _router = AppRouter();

  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.getRouter.routeInformationParser,
      routerDelegate: _router.getRouter.routerDelegate,
      title: 'FitnestX',
      theme: CustomTheme(context),
    );
  }
}
