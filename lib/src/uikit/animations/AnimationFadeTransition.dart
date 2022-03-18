import 'package:flutter/widgets.dart';

import 'BaseAnimator.dart';

class AnimationFadeTransition extends BaseAnimator {
  final List<Widget> children;

  final Tween<double>? inAnimation;
  final Tween<double>? outAnimation;
  final double slideOffset;

  final int durationMilliseconds;

  AnimationFadeTransition({
    required this.children,
    this.inAnimation,
    this.outAnimation,
    this.durationMilliseconds = 1000,
    this.slideOffset = -0.05,
  });

  @override
  render() {
    return AnimatedSwitcher(
      transitionBuilder: (Widget child, Animation<double> animation) {
        Future.delayed(const Duration(milliseconds: 1000), () {});

        final Animation<double> _inAnimation = (inAnimation ??
                Tween<double>(
                  begin: 0,
                  end: 1,
                ))
            .animate(CurvedAnimation(
          parent: animation,
          curve: const Interval(0, 1),
        ));

        final Animation<Offset> _inSlideAnimation = Tween<Offset>(
          begin: Offset(slideOffset, 0),
          end: const Offset(0, 0),
        ).animate(CurvedAnimation(
          parent: animation,
          curve: const Interval(0, 0.5),
        ));

        final Animation<double> _outAnimation = (outAnimation ??
                Tween<double>(
                  begin: 0,
                  end: 0,
                ))
            .animate(CurvedAnimation(
          parent: animation,
          curve: const Interval(0, 1),
        ));

        if (child.key == children[super.getStep].key) {
          return FadeTransition(
              child: SlideTransition(
                position: _inSlideAnimation,
                child: child,
              ),
              opacity: _inAnimation);
        } else {
          return FadeTransition(child: child, opacity: _outAnimation);
        }
      },
      layoutBuilder: (Widget? currentChild, List<Widget> previousChildren) {
        List<Widget> children = previousChildren;

        if (currentChild != null) {
          children = children.toList()..add(currentChild);
        }

        return Stack(
          children: children,
        );
      },
      duration: Duration(milliseconds: durationMilliseconds),
      child: children[super.getStep],
    );
  }
}
