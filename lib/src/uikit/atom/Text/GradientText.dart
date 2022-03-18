import 'package:flutter/widgets.dart';

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Gradient gradient;

  const GradientText(
    this.text, {
    Key? key,
    required this.gradient,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: textStyle),
    );
  }
}
