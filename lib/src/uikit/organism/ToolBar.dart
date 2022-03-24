import 'package:FitnestX/src/common/utils.dart';
import 'package:FitnestX/src/uikit/molecule/Buttons/base.dart';
import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:FitnestX/src/uikit/style/indents.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconly/iconly.dart';

class ToolBar extends StatelessWidget {
  final Widget middleChild;

  const ToolBar({
    Key? key,
    required this.middleChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: ScreenUtils.topSafeHeight + 40, bottom: 30, right: 30, left: 30),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              context.pop();
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ThemeColors.border,
              ),
              child: const Icon(
                IconlyLight.arrow_left_2,
                size: 16,
              ),
            ),
          ),
          middleChild,
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: ThemeColors.border,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 4,
                  height: 4,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ThemeColors.darkColors.normal,
                  ),
                ),
                const SizedBox(width: 2),
                Container(
                  width: 4,
                  height: 4,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ThemeColors.darkColors.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
