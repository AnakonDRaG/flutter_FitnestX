import 'dart:math';

import 'package:FitnestX/src/common/utils.dart';
import 'package:FitnestX/src/uikit/style/indents.dart';
import 'package:flutter/material.dart';

class PageScrollView extends StatelessWidget {
  final Widget child;

  const PageScrollView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification notification) {
      notification.disallowIndicator();
      return false;
    }, child: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SizedBox(
          width: ScreenUtils.width,
          height: ScreenUtils.height,
          child: SingleChildScrollView(child: child,),
        );
      },
    ));
  }
}
