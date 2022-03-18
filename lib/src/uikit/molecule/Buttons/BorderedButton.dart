import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:flutter/widgets.dart';

import 'base.dart';

class BorderedButton extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;

  final double width;
  final double height;

  const BorderedButton(
      this.icon, {
        Key? key,
        required this.onPressed,
        this.width = 50,
        this.height = 50,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseButton(
      Icon(
        icon,
        color: ThemeColors.whiteColors.normal,
        size: 20,
      ),
      width: width,
      height: height,
      onPressed: onPressed,
      gradient: ThemeGradients.blue,
    );
  }
}
