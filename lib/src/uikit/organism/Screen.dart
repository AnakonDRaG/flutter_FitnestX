import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final Widget child;
  final Widget? bottomNavigationBar;

  const Screen({Key? key, required this.child, this.bottomNavigationBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
