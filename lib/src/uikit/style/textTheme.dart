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

  static double lineHeight = 1.5;
}

class CustomTextTheme {
  const CustomTextTheme();

  static Heading1 get heading1 => Heading1();

  static Heading2 get heading2 => Heading2();

  static Heading3 get heading3 => Heading3();

  static Heading4 get heading4 => Heading4();

  static Subtitle get subtitle => Subtitle();

  static SmallSubtitle get smallSubtitle => SmallSubtitle();

  static LargeText get largeText => LargeText();

  static MediumText get mediumText => MediumText();

  static SmallText get smallText => SmallText();

  static Caption get caption => Caption();
}

class Heading1 {
  late TextStyle regular = TextStyle(
    fontSize: FontSize.h1,
    height: FontSize.lineHeight,
  );

  late TextStyle bold = regular.merge(const TextStyle(
    fontWeight: FontWeight.w700,
  ));

  late TextStyle semi_bold = regular.merge(const TextStyle(
    fontWeight: FontWeight.w600,
  ));

  late TextStyle medium = regular.merge(const TextStyle(
    fontWeight: FontWeight.w500,
  ));
}

class Heading2 {
  late TextStyle regular = TextStyle(
    fontSize: FontSize.h2,
    height: FontSize.lineHeight,
  );

  late TextStyle bold = regular.merge(const TextStyle(
    fontWeight: FontWeight.w700,
  ));

  late TextStyle semi_bold = regular.merge(const TextStyle(
    fontWeight: FontWeight.w600,
  ));

  late TextStyle medium = regular.merge(const TextStyle(
    fontWeight: FontWeight.w500,
  ));
}

class Heading3 {
  late TextStyle regular = TextStyle(
    fontSize: FontSize.h3,
    height: FontSize.lineHeight,
  );

  late TextStyle bold = regular.merge(const TextStyle(
    fontWeight: FontWeight.w700,
  ));

  late TextStyle semi_bold = regular.merge(const TextStyle(
    fontWeight: FontWeight.w600,
  ));

  late TextStyle medium = regular.merge(const TextStyle(
    fontWeight: FontWeight.w500,
  ));
}

class Heading4 {
  late TextStyle regular = TextStyle(
    fontSize: FontSize.h4,
    height: FontSize.lineHeight,
  );

  late TextStyle bold = regular.merge(const TextStyle(
    fontWeight: FontWeight.w700,
  ));

  late TextStyle semi_bold = regular.merge(const TextStyle(
    fontWeight: FontWeight.w600,
  ));

  late TextStyle medium = regular.merge(const TextStyle(
    fontWeight: FontWeight.w500,
  ));
}

class Subtitle {
  late TextStyle regular = TextStyle(
    color: ThemeColors.grayColors.normal,
    fontSize: FontSize.subtitle,
    height: FontSize.lineHeight,
  );

  late TextStyle bold = regular.merge(const TextStyle(
    fontWeight: FontWeight.w700,
  ));

  late TextStyle semi_bold = regular.merge(const TextStyle(
    fontWeight: FontWeight.w600,
  ));

  late TextStyle medium = regular.merge(const TextStyle(
    fontWeight: FontWeight.w500,
  ));
}

class SmallSubtitle {
  late TextStyle regular = TextStyle(
    color: ThemeColors.grayColors.normal,
    fontSize: FontSize.small,
    height: FontSize.lineHeight,
  );

  late TextStyle bold = regular.merge(const TextStyle(
    fontWeight: FontWeight.w700,
  ));

  late TextStyle semi_bold = regular.merge(const TextStyle(
    fontWeight: FontWeight.w600,
  ));

  late TextStyle medium = regular.merge(const TextStyle(
    fontWeight: FontWeight.w500,
  ));
}

class LargeText {
  late TextStyle regular = TextStyle(
    fontSize: FontSize.large,
    height: FontSize.lineHeight,
  );

  late TextStyle bold = regular.merge(const TextStyle(
    fontWeight: FontWeight.w700,
  ));

  late TextStyle semi_bold = regular.merge(const TextStyle(
    fontWeight: FontWeight.w600,
  ));

  late TextStyle medium = regular.merge(const TextStyle(
    fontWeight: FontWeight.w500,
  ));
}

class MediumText {
  late TextStyle regular = TextStyle(
    fontSize: FontSize.medium,
    height: FontSize.lineHeight,
  );

  late TextStyle bold = regular.merge(const TextStyle(
    fontWeight: FontWeight.w700,
  ));

  late TextStyle semi_bold = regular.merge(const TextStyle(
    fontWeight: FontWeight.w600,
  ));

  late TextStyle medium = regular.merge(const TextStyle(
    fontWeight: FontWeight.w500,
  ));
}

class SmallText {
  late TextStyle regular = TextStyle(
    fontSize: FontSize.small,
    height: FontSize.lineHeight,
  );

  late TextStyle bold = regular.merge(const TextStyle(
    fontWeight: FontWeight.w700,
  ));

  late TextStyle semi_bold = regular.merge(const TextStyle(
    fontWeight: FontWeight.w600,
  ));

  late TextStyle medium = regular.merge(const TextStyle(
    fontWeight: FontWeight.w500,
  ));
}

class Caption {
  late TextStyle regular = TextStyle(
    fontSize: FontSize.caption,
    height: FontSize.lineHeight,
  );

  late TextStyle bold = regular.merge(const TextStyle(
    fontWeight: FontWeight.w700,
  ));

  late TextStyle semi_bold = regular.merge(const TextStyle(
    fontWeight: FontWeight.w600,
  ));

  late TextStyle medium = regular.merge(const TextStyle(
    fontWeight: FontWeight.w500,
  ));
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
