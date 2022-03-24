import 'package:flutter/cupertino.dart';

enum ThemeGradientType { BLUE, PURPLE }

class ThemeGradients {
  const ThemeGradients();

  static LinearGradient withOpacity(double opacity, LinearGradient gradient) {
    return LinearGradient(
      begin: gradient.begin,
      end: gradient.end,
      colors: gradient.colors.map((e) => e.withOpacity(opacity)).toList(),
    );
  }

  static const LinearGradient blue = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xff9DCEFF), Color(0xff92a3fd)],
  );

  static const LinearGradient blueLinear = LinearGradient(
    colors: [Color(0xff9dceff), Color(0xff92a3fd)],
  );

  static const LinearGradient purple = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xffEEA4CE), Color(0xffC58BF2)],
  );

  static const LinearGradient purpleLinear = LinearGradient(
    colors: [Color(0xffEEA4CE), Color(0xffC58BF2)],
  );

  static const LinearGradient calories = LinearGradient(
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
    colors: [Color(0xffc58bf2), Color(0xffb4c0fe)],
  );

  static const LinearGradient progressBar = LinearGradient(
    colors: [Color(0xffc58bf2), Color(0xff92a3fd)],
  );

  static const LinearGradient waterIntake = LinearGradient(
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
    colors: [Color(0xffc58bf2), Color(0xffb4c0fe)],
  );
}
