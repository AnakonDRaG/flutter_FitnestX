import 'package:flutter/material.dart';

class FontSize {
  static const double h1 = 26;
  static const double h2 = 24;
  static const double h3 = 22;
  static const double h4 = 20;

  static const double subtitle = 18;
  static const double large = 16;
  static const double medium = 14;
  static const double small = 12;

  static const double caption = 10;

  static const double logo1 = 36;
  static const double logo2 = 50;

}

const TextTheme TEXT_THEME_DEFAULT = TextTheme(
  headline1: TextStyle(fontSize: FontSize.h1),
  headline2: TextStyle(fontSize: FontSize.h2),
  headline3: TextStyle(fontSize: FontSize.h3),
  headline4: TextStyle(fontSize: FontSize.h4),
  subtitle1: TextStyle(fontSize: FontSize.subtitle),
  subtitle2: TextStyle(fontSize: FontSize.subtitle),
  bodyText1: TextStyle(fontSize: FontSize.large),
  bodyText2: TextStyle(fontSize: FontSize.medium),
  caption: TextStyle(fontSize: FontSize.caption),
);
