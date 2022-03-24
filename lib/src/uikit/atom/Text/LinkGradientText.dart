import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:flutter/material.dart';

import 'GradientText.dart';

class LinkGradientText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

  final Function()? onTap;

  const LinkGradientText(
    this.text, {
    Key? key,
    this.onTap,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: GradientText(
        text,
        gradient: ThemeGradients.purple,
        style: textStyle,
      ),
      onTap: onTap,
    );
  }
}
