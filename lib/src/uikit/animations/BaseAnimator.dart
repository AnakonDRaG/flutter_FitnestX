import 'package:flutter/cupertino.dart';

abstract class BaseAnimator {
  var _step = 0;

  nextSlide() {
    _step++;
  }

  prevSlide() {
    _step--;
  }

  get getStep => _step;

  render();
}
