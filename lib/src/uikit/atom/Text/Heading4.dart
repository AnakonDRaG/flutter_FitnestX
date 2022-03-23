import 'package:flutter/widgets.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';

class Heading4 extends StatelessWidget {
  final String title;
  final TextStyle? style;

  const Heading4(this.title, {Key? key, this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: CustomTextTheme.headline4.merge(style),
    );
  }
}
