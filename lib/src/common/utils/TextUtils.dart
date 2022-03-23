import 'package:FitnestX/src/common/utils.dart';

class TextUtils {
  static fixedFontSize(double fontSize) {
    return fontSize / ScreenUtils.textScaleFactor;
  }
}
