import 'package:flutter/cupertino.dart';

enum ThemeGradientType {
  BLUE,
  PURPLE
}

class ThemeGradients {
  const ThemeGradients();

  static const Gradient blue = LinearGradient(
    begin: Alignment(-1, -1),
    end: Alignment(1, 1),
    colors: [Color(0xff9DCEFF), Color(0xff92a3fd)],
  );

  static const Gradient purple = LinearGradient(
    begin: Alignment(-1, -1),
    end: Alignment(1, 1),
    colors: [Color(0xffEEA4CE), Color(0xffC58BF2)],
  );


  static Gradient getGradient(ThemeGradientType type)
  {
    switch(type) {
      case ThemeGradientType.BLUE:
        return blue;
      case ThemeGradientType.PURPLE:
        return purple;
    }

  }

}
