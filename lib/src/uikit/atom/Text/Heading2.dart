import 'package:flutter/widgets.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';

class Heading2 extends StatelessWidget {
  final String title;
  final TextStyle? style;

  const Heading2(this.title, {Key? key, this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: CustomTextTheme.headline2.merge(style),
    );
  }
}
