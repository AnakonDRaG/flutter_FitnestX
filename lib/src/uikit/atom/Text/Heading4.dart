import 'package:flutter/widgets.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';

class Heading4 extends Text {
  final String title;

  const Heading4(this.title)
      : super(title, style: const TextStyle(fontSize: FontSize.h4));
}
