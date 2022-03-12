import 'dart:math';

import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:flutter/widgets.dart';
import 'package:vector_math/vector_math_64.dart' as math;

class PieDiagram extends StatefulWidget {
  final double value;
  final double radius;

  final Gradient gradient;
  final Color? background;

  const PieDiagram(
    this.value, {
    Key? key,
    required this.gradient,
    this.background,
    this.radius = 150,
  }) : super(key: key);

  @override
  State<PieDiagram> createState() => _PieDiagramState();
}

class _PieDiagramState extends State<PieDiagram> with SingleTickerProviderStateMixin {
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
          progressDegrees = _progressAnimation.value;
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
      ),
      painter: PieDiagramPainter(
        value: progressDegrees,
        gradient: widget.gradient,
        background: widget.background ?? ThemeColors.whiteColors.normal,
      ),
    );
  }
}

class PieDiagramPainter extends CustomPainter {
  final double value;
  final Gradient gradient;
  final Color background;

  PieDiagramPainter({
    required this.value,
    required this.gradient,
    required this.background,
  }) : assert(value <= 100);

  @override
  void paint(Canvas canvas, Size size) {
    Paint circleBackground = Paint()
      ..color = background
      ..style = PaintingStyle.fill;

    Paint circleShadow = Paint()
      ..color = ThemeColors.darkColors.normal.withOpacity(0.07)
      ..style = PaintingStyle.fill
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 40);

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2 - 5, size.height / 2 - 5);

    var starRadian = math.radians(-90);
    var progress = math.radians(value * 360 / 100);
    var shadowOffset = Offset(center.dx, center.dy + 10);

    var _rectFromCircle = Rect.fromCircle(center: center, radius: radius);

    canvas.drawCircle(shadowOffset, radius / 1.1, circleShadow);
    canvas.drawCircle(center, radius / 1.1, circleBackground);

    Paint progressPaint = Paint()
      ..shader = gradient.createShader(_rectFromCircle)
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    Paint progressFillPaint = Paint()
      ..shader = gradient.createShader(_rectFromCircle)
      ..style = PaintingStyle.fill;

    Paint progressShadowPaint = Paint()
      ..color = gradient.colors[0].withOpacity(0.3)
      ..style = PaintingStyle.fill
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 20);

    canvas.drawArc(Rect.fromCircle(center: shadowOffset, radius: radius),
        starRadian, progress, true, progressShadowPaint);

    canvas.drawArc(_rectFromCircle, starRadian, progress, true, progressPaint);

    canvas.drawArc(
        _rectFromCircle, starRadian, progress, true, progressFillPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
