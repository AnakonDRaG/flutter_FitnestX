import 'package:FitnestX/src/uikit/style/indents.dart';
import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final Widget child;
  final Widget? bottomNavigationBar;

  //TODO: need to fix this
  final bool withSaveArea;

  const Screen(
      {Key? key,
      required this.child,
      this.bottomNavigationBar,
      this.withSaveArea = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.only(top: ThemeIndents.larger),
        child: child,
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
