import 'package:FitnestX/src/uikit/style/indents.dart';
import 'package:flutter/widgets.dart';

class ScreenContent extends StatelessWidget {
  final Widget child;

  const ScreenContent({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: ThemeIndents.content,
      child: child,
    );
  }
}
