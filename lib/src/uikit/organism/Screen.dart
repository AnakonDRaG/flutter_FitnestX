import 'package:FitnestX/src/uikit/style/indents.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';
import 'package:flutter/material.dart';

import '../uikit.dart';

class Screen extends StatelessWidget {
  final Widget child;
  final Widget? bottomNavigationBar;
  final Widget? topBar;

  final EdgeInsetsGeometry? bodyPadding;

  const Screen({
    Key? key,
    required this.child,
    this.bottomNavigationBar,
    this.topBar, this.bodyPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //extendBodyBehindAppBar: true,
      appBar: topBar != null
          ? PreferredSize(
              preferredSize: const Size(double.infinity, 240),
              child: topBar!
            )
          : null,
      body: Container(
        padding: bodyPadding,
        child: child,
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
