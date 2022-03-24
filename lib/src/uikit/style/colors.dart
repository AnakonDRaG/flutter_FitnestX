import 'package:flutter/cupertino.dart';

class WhiteColors {
  const WhiteColors();

  Color get normal => const Color(0xffffffff);
}

class DarkColors {
  const DarkColors();

  final normal = const Color(0xff1D1617);
}

class GrayColors {
  const GrayColors();

  get normal => const Color(0xff7B6F72);
  get light => const Color(0xffADA4A5);
  get lightest => const Color(0xffDDDADA);
}


class ThemeColors {
  static const  WhiteColors whiteColors = WhiteColors();
  static const DarkColors darkColors = DarkColors();
  static const GrayColors grayColors = GrayColors();

  static const Color purple = Color(0xffC58BF2);

  static const Color border = Color(0xffF7F8F8);

  static const Color success = Color(0xff42d742);
  static const Color warning = Color(0xffffd600);
  static const Color danger = Color(0xffff0000);


}
