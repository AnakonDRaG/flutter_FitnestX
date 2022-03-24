import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';

ThemeData CustomTheme(BuildContext context) => Theme.of(context).copyWith(
    scaffoldBackgroundColor: ThemeColors.whiteColors.normal,
    shadowColor: const Color(0xffECECEC),
    textTheme: Theme.of(context).textTheme.merge(TEXT_THEME_DEFAULT).apply(
        fontFamily: 'Poppins', bodyColor: ThemeColors.darkColors.normal));
