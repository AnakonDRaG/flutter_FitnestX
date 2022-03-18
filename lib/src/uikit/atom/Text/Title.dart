import 'package:flutter/widgets.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';

class TitleText extends Text {
  final String title;

  const TitleText(this.title, {Key? key})
      : super(title, key: key, style: const TextStyle(fontSize: FontSize.h2, fontWeight: FontWeight.bold));
}
