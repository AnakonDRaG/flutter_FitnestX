import 'package:flutter/widgets.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';

class Heading3 extends Text {
  final String title;

  const Heading3(this.title)
      : super(title, style: const TextStyle(fontSize: FontSize.h3));
}
