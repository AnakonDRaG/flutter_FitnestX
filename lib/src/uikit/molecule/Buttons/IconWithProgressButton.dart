import 'package:FitnestX/src/uikit/atom/Diagrams/RadialStrokeDiagram.dart';
import 'package:FitnestX/src/uikit/molecule/Buttons/IconGradientButton.dart';
import 'package:flutter/widgets.dart';

class IconWithProgressButton extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;
  final double value;

  const IconWithProgressButton(this.icon,
      {Key? key,
      required this.onPressed,
      required this.value,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RadialStrokeDiagram(
      value: value,
      radius: 60,
      strokeWidth: 2,
      child: IconGradientButton(icon, onPressed: onPressed),
    );
  }
}
