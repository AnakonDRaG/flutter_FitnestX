import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance?.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

ThemeData CustomTheme(BuildContext context) => Theme.of(context).copyWith(
    scaffoldBackgroundColor: ThemeColors.whiteColors.normal,
    shadowColor: const Color(0xffECECEC),
    textTheme: Theme.of(context)
        .textTheme
        .merge(TEXT_THEME_DEFAULT)
        .apply(fontFamily: 'Poppins',));

class ApplicationTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.black,
    colorScheme: const ColorScheme.dark(),
    iconTheme: IconThemeData(color: Colors.purple.shade200, opacity: 0.8),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.red,
    colorScheme: const ColorScheme.light(),
    iconTheme: const IconThemeData(color: Colors.red, opacity: 0.8),
  );
}
