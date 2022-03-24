import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:FitnestX/src/uikit/style/stadows.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardComponent extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;

  final Gradient? gradient;
  final Color color;
  final List<BoxShadow>? shadows;

  const CardComponent(
      {Key? key,
      required this.child,
      this.padding,
      this.gradient,
      this.color = Colors.white,
      this.shadows})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding ?? const EdgeInsets.all(22),
      decoration: BoxDecoration(
        gradient: gradient,
        color: color,
        borderRadius: BorderRadius.circular(22),
        boxShadow: shadows,
      ),
      child: child,
    );
  }
}
