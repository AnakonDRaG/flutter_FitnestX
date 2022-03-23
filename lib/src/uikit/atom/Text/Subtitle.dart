import 'package:flutter/material.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';

class Subtitle extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  const Subtitle(this.text, {Key? key, this.style, this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomTextTheme.subtitle1.merge(style),
      textAlign: textAlign,
    );
  }
}
