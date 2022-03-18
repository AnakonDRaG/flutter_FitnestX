import 'dart:ffi';

import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:FitnestX/src/uikit/style/constants.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class BaseButton extends StatefulWidget {
  final Object middleWidget;
  final Function()? onPressed;

  final bool isSmall;
  final bool isFullWidth;
  final List<BoxShadow>? shadows;

  final Color? textColor;
  final Gradient? gradient;

  final IconData? leftIcon;
  final IconData? rightIcon;
  final double? iconSize;

  final EdgeInsets? padding;
  final double? width;
  final double? height;

  final ShapeBorder? shapeBorder;

  const BaseButton(
    this.middleWidget, {
    Key? key,
    required this.onPressed,
    this.isSmall = false,
    this.isFullWidth = false,
    this.shadows,
    this.textColor,
    this.gradient,
    this.leftIcon,
    this.rightIcon,
    this.iconSize,
    this.padding,
    this.width,
    this.height,
    this.shapeBorder,
  }) : super(key: key);

  @override
  State<BaseButton> createState() => _BaseButtonState();
}

class _BaseButtonState extends State<BaseButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: ShapeDecoration(
        color: widget.gradient == null ? ThemeColors.grayColors.lightest : null,
        shape: widget.shapeBorder ?? const StadiumBorder(),
        gradient: widget.gradient,
        shadows: widget.shadows,
      ),
      child: MaterialButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: widget.padding,
        minWidth: widget.isFullWidth ? double.maxFinite : null,
        shape: const StadiumBorder(),
        splashColor: const Color.fromARGB(100, 255, 255, 255),
        highlightColor: const Color.fromARGB(0, 255, 255, 255),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.leftIcon != null)
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  widget.leftIcon,
                  size: widget.iconSize,
                  color: widget.textColor ?? ThemeColors.darkColors.normal,
                ),
              ),
            if (widget.middleWidget is String)
              Text(
                widget.middleWidget as String,
                style: TextStyle(
                  color: widget.textColor ?? ThemeColors.darkColors.normal,
                  fontSize: widget.isSmall ? FontSize.small : FontSize.medium,
                  fontWeight:
                      widget.isSmall ? FontWeight.normal : FontWeight.bold,
                ),
              )
            else
              widget.middleWidget as Widget,
            if (widget.rightIcon != null)
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(
                  widget.rightIcon,
                  size: widget.iconSize,
                  color: widget.textColor ?? ThemeColors.darkColors.normal,
                ),
              ),
          ],
        ),
        onPressed: widget.onPressed,
      ),
    );
  }
}
