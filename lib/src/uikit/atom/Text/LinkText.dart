import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:flutter/material.dart';

import 'GradientText.dart';

class LinkText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

  final void onTap;

  const LinkText(
    this.text, {
    Key? key,
    this.onTap,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        text,
        style: const TextStyle(
          decoration: TextDecoration.underline,
        ).merge(textStyle),
      ),
    );
  }
}
