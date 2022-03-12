import 'package:flutter/widgets.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';

class Heading2 extends Text {
  final String title;

  const Heading2(this.title)
      : super(title, style: const TextStyle(fontSize: FontSize.h2));
}
