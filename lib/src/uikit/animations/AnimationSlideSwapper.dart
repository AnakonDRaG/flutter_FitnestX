import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'BaseAnimator.dart';

class AnimationSlideSwapper extends BaseAnimator {
  final List<Widget> children;

  final Tween<Offset>? inAnimation;
  final Tween<Offset>? outAnimation;

  AnimationSlideSwapper(
      {required this.children, this.inAnimation, this.outAnimation});

  @override
  render() {
    return AnimatedSwitcher(
      transitionBuilder: (Widget child, Animation<double> animation) {
        Future.delayed(const Duration(milliseconds: 1000), () {});

        final Animation<Offset> _inAnimation = (inAnimation ??
                Tween<Offset>(
                  begin: const Offset(0, -1),
                  end: const Offset(0, 0),
                ))
            .animate(CurvedAnimation(
          parent: animation,
          curve: const Interval(0.5, 1),
        ));

        final Animation<Offset> _outAnimation = (outAnimation ??
                Tween<Offset>(
                  begin: const Offset(0, -1),
                  end: const Offset(0, 0),
                ))
            .animate(CurvedAnimation(
          parent: animation,
          curve: const Interval(0.5, 1.0),
        ));

        if (child.key == children[super.getStep].key) {
          return SlideTransition(child: child, position: _inAnimation);
        } else {
          return SlideTransition(child: child, position: _outAnimation);
        }
      },
      layoutBuilder: (Widget? currentChild, List<Widget> previousChildren) {
        List<Widget> children = previousChildren;

        if (currentChild != null) {
          children = children.toList()..add(currentChild);
        }

        return Stack(
          children: children,
          alignment: Alignment.center,
        );
      },
      duration: const Duration(milliseconds: 500),
      child: children[super.getStep],
    );
  }
}
