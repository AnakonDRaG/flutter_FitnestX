import 'dart:math';

import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as math;

class RadialStrokeDiagram extends StatefulWidget {
  final double value;
  final double radius;
  final double fillDurationMilliseconds;
  final double strokeWidth;
  final double borderWidth;
  final Widget? child;

  const RadialStrokeDiagram({
    Key? key,
    required this.value,
    this.radius = 50,
    this.strokeWidth = 4,
    this.borderWidth = 0.2,
    this.child,
    this.fillDurationMilliseconds = 500,
  }) : super(key: key);

  @override
  _RadialProgressState createState() => _RadialProgressState();
}

class _RadialProgressState extends State<RadialStrokeDiagram>
    with SingleTickerProviderStateMixin {
  late ValueNotifier<double> progress;
  late double oldValue = 0;

  late AnimationController _animationController;
  late Animation<double> _progressAnimation;
  final Duration fillDuration = const Duration(milliseconds: 500);

  late final Tween<double> _tween = Tween(begin: 0.0, end: widget.value);

  double progressDegrees = 0;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: fillDuration);

    _progressAnimation = _tween.animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn))
      ..addListener(() {
        setState(() {
          progressDegrees = _progressAnimation.value * 360;
        });
      });
    //_radialProgressAnimationController.repeat();
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (oldValue != widget.value) {
      if (_animationController.isAnimating) {
        _tween.begin = _progressAnimation.value;
      } else {
        _tween.begin = oldValue;
      }

      _tween.end = widget.value;
      _animationController.forward(from: 0);

      oldValue = widget.value;
    }

    return CustomPaint(
      child: SizedBox(
        height: widget.radius,
        width: widget.radius,
        child: Center(child: widget.child),
      ),
      painter: RadialPainter(
        value: progressDegrees,
        borderWidth: widget.borderWidth,
        strokeWidth: widget.strokeWidth,
      ),
    );
  }
}

class RadialPainter extends CustomPainter {
  final double value;
  final double strokeWidth;
  final double borderWidth;

  RadialPainter({
    required this.value,
    required this.borderWidth,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = ThemeColors.border
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2 - strokeWidth, size.height / 2 - strokeWidth);

    canvas.drawCircle(center, radius , paint);

    Paint progressPaint = Paint()
      ..shader = ThemeGradients.blue
          .createShader(Rect.fromCircle(center: center, radius: size.width / 2))
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        math.radians(-90),
        math.radians(value),
        false,
        progressPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
