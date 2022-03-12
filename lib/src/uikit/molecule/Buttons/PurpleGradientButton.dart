import 'package:FitnestX/src/uikit/molecule/Buttons/base.dart';
import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:FitnestX/src/uikit/style/constants.dart';
import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:flutter/widgets.dart';

class PurpleGradientButton extends StatelessWidget {
  final String title;
  final Function() onPressed;

  final bool isSmall;
  final bool isFullWidth;

  final IconData? leftIcon;
  final IconData? rightIcon;

  const PurpleGradientButton(
    this.title, {
    Key? key,
    required this.onPressed,
    this.isSmall = false,
    this.isFullWidth = false,
    this.leftIcon,
    this.rightIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseButton(
      title,
      onPressed: onPressed,
      gradient: ThemeGradients.purple,
      textColor: ThemeColors.whiteColors.normal,
      padding: isSmall ? ThemeConstants.paddingSmall : ThemeConstants.paddingBig,
      isFullWidth: isFullWidth,
      leftIcon: leftIcon,
      rightIcon: rightIcon,
    );
  }
}
