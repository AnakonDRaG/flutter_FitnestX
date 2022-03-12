import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final Widget child;

  const Screen({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: child,
      ),
    );
  }
}
