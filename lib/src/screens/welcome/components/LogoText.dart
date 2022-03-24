import 'package:flutter/material.dart';
import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';

class LogoText extends StatelessWidget {
  const LogoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: 'Fitnest',
            style: TextStyle(
                fontSize: FontSize.logo1,
                color: ThemeColors.darkColors.normal,
                fontWeight: FontWeight.w900),
            children: const [
              TextSpan(
                text: 'X',
                style: TextStyle(
                    fontSize: FontSize.logo2, color: Color(0xffC58BF2)),
              ),
            ],
          ),
        ),
         Text("Everybody Can Train", style: CustomTextTheme.subtitle.regular,)
      ],
    );
  }
}
