import 'package:flutter/widgets.dart';
import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';

class Subtitle extends StatelessWidget {
  final String text;

  const Subtitle(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: FontSize.subtitle,
          color: ThemeColors.grayColors.normal),
    );
  }
}
