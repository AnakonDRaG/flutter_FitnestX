import 'package:flutter/widgets.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';

class Heading1 extends StatelessWidget {
  final String title;
  final TextStyle? textStyle;

  const Heading1(this.title, {Key? key, this.textStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: FontSize.h1).merge(textStyle),
    );
  }
}
