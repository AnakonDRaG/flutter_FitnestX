import 'package:FitnestX/src/uikit/molecule/Buttons/base.dart';
import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:FitnestX/src/uikit/style/constants.dart';
import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:FitnestX/src/uikit/style/indents.dart';
import 'package:flutter/widgets.dart';

class BlueGradientButton extends StatelessWidget {
  final String title;
  final Function() onPressed;

  final bool isSmall;
  final bool isFullWidth;

  final IconData? leftIcon;
  final IconData? rightIcon;

  final ShapeBorder? shapeBorder;

  const BlueGradientButton(
    this.title, {
    Key? key,
    required this.onPressed,
    this.isSmall = false,
    this.isFullWidth = false,
    this.leftIcon,
    this.rightIcon,
    this.shapeBorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseButton(
      title,
      onPressed: onPressed,
      gradient: ThemeGradients.blue,
      textColor: ThemeColors.whiteColors.normal,
      isSmall: isSmall,
      padding:
          isSmall ? ThemeConstants.paddingSmall : ThemeConstants.paddingBig,
      isFullWidth: isFullWidth,
      leftIcon: leftIcon,
      rightIcon: rightIcon,
      shapeBorder: shapeBorder,
    );
  }
}
