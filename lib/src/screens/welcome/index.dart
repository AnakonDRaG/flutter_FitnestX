import 'package:FitnestX/src/uikit/atom/atoms.dart';
import 'package:FitnestX/src/uikit/molecule/molecules.dart';
import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:FitnestX/src/uikit/style/indents.dart';
import 'package:flutter/material.dart';
import 'package:FitnestX/src/screens/welcome/components/LogoText.dart';
import 'package:FitnestX/src/uikit/organism/Screen.dart';
import 'package:go_router/go_router.dart';

class WelComeScreen extends StatefulWidget {
  const WelComeScreen({Key? key}) : super(key: key);

  @override
  State<WelComeScreen> createState() => _WellComeScreenState();
}

class _WellComeScreenState extends State<WelComeScreen> {
  @override
  Widget build(BuildContext context) {
    return Screen(
      child: const ScreenContent(
        child: Padding(
          padding: EdgeInsets.only(top: 40 * 4),
          child: Center(child: LogoText()),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: ThemeIndents.content,
        child: GradientButton(
          "Get Started",
          gradient: ThemeGradients.blue,
          isFullWidth: true,
          onPressed: () {
            context.go("/onboarding");
          },
        ),
      ),
    );
  }
}
