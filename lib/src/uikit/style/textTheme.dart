import 'package:FitnestX/src/uikit/style/colors.dart';
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

class CustomTextTheme {
  static double lineHeight = 1.5;

  static TextStyle get headline1 =>
      TextStyle(fontSize: FontSize.h1, height: lineHeight);

  static TextStyle get headline2 =>
      TextStyle(fontSize: FontSize.h2, height: lineHeight);

  static TextStyle get headline3 =>
      TextStyle(fontSize: FontSize.h3, height: lineHeight);

  static TextStyle get headline4 =>
      TextStyle(fontSize: FontSize.h4, height: lineHeight);

  static TextStyle get subtitle1 => TextStyle(
      fontSize: FontSize.subtitle,
      color: ThemeColors.grayColors.normal,
      height: lineHeight);

  static TextStyle get subtitle2 => TextStyle(
      fontSize: FontSize.small,
      color: ThemeColors.grayColors.normal,
      height: lineHeight);

  static TextStyle get bodyText1 =>
      TextStyle(fontSize: FontSize.large, height: lineHeight);

  static TextStyle get bodyText2 =>
      TextStyle(fontSize: FontSize.medium, height: lineHeight);

  static TextStyle get caption =>
      TextStyle(fontSize: FontSize.caption, height: lineHeight);

  static TextStyle get small =>
      TextStyle(fontSize: FontSize.small, height: lineHeight);
}

late TextTheme TEXT_THEME_DEFAULT = TextTheme(
  headline1: const TextStyle(fontSize: FontSize.h1),
  headline2: const TextStyle(fontSize: FontSize.h2),
  headline3: const TextStyle(fontSize: FontSize.h3),
  headline4: const TextStyle(fontSize: FontSize.h4),
  subtitle1: TextStyle(
    fontSize: FontSize.subtitle,
    color: ThemeColors.grayColors.normal,
  ),
  subtitle2: TextStyle(
    fontSize: FontSize.small,
    color: ThemeColors.grayColors.normal,
  ),
  bodyText1: const TextStyle(fontSize: FontSize.large),
  bodyText2: const TextStyle(fontSize: FontSize.medium),
  caption: const TextStyle(fontSize: FontSize.caption),
);
