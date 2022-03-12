import 'colors.dart';
import 'package:flutter/material.dart';


class ThemeConstants {
  static const paddingDefault = EdgeInsets.all(10);

  static const LinearGradient gradientBlue = LinearGradient(
    begin: Alignment(-1, -1),
    end: Alignment(1, 1),
    colors: [Color(0xff9DCEFF), Color(0xff92a3fd)],
  );


  static const paddingBig =
  EdgeInsets.only(left: 24, right: 24, top: 18, bottom: 18);

  static const paddingSmall =
      EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5);

  static const boxShadowBlue = [
    BoxShadow(
      color: Color(0xffD7E0FF),
      blurRadius: 22,
      offset: Offset(0, 10), // Shadow position
    )
  ];

  static const boxShadowPurple = [
    BoxShadow(
      color: Color(0xffD7E0FF),
      blurRadius: 22,
      offset: Offset(0, 10), // Shadow position
    )
  ];

  static const boxShadowCard = [
    BoxShadow(
      color: Color(0xffECECEC),
      blurRadius: 22,
      offset: Offset(0, 10), // Shadow position
    )
  ];


}
