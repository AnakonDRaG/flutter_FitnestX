import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'base.dart';

class CompanyButton extends StatelessWidget {
  final String logoPath;
  final void onTap;

  final double width;
  final double height;

  const CompanyButton({
    Key? key,
    required this.logoPath,
    required this.onTap,
    this.width = 50,
    this.height = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xffDDDADA)),
      ),
      child: SizedBox(
        height: 20,
        width: 20,
        child: SvgPicture.asset(
          logoPath,
        ),
      ),
    );
  }
}
