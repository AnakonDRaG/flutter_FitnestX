import 'package:FitnestX/src/uikit/molecule/Buttons/base.dart';
import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:FitnestX/src/uikit/style/constants.dart';
import 'package:FitnestX/src/uikit/style/stadows.dart';
import 'package:flutter/widgets.dart';

class GradientButton extends StatelessWidget {
  final String title;
  final Function() onPressed;

  final bool isSmall;
  final bool isFullWidth;

  final IconData? leftIcon;
  final IconData? rightIcon;

  final ShapeBorder? shapeBorder;
  final Gradient gradient;
  final List<BoxShadow>? shadows;

  const GradientButton(
    this.title, {
    Key? key,
    required this.onPressed,
    required this.gradient,
    this.isSmall = false,
    this.isFullWidth = false,
    this.leftIcon,
    this.rightIcon,
    this.shapeBorder,
    this.shadows,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseButton(
      title,
      onPressed: onPressed,
      gradient: gradient,
      textColor: ThemeColors.whiteColors.normal,
      isSmall: isSmall,
      padding:
          isSmall ? ThemeConstants.paddingSmall : ThemeConstants.paddingBig,
      shadows: shadows,
      isFullWidth: isFullWidth,
      leftIcon: leftIcon,
      rightIcon: rightIcon,
      shapeBorder: shapeBorder,
    );
  }
}
