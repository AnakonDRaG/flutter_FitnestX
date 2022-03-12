import 'package:flutter/material.dart';
import 'package:FitnestX/src/screens/welcome/components/LogoText.dart';
import 'package:FitnestX/src/uikit/molecule/Buttons/BlueGradientButton.dart';
import 'package:FitnestX/src/uikit/organism/Screen.dart';

class WellComeScreen extends StatefulWidget {
  const WellComeScreen({Key? key}) : super(key: key);

  @override
  State<WellComeScreen> createState() => _WellComeScreenState();
}

class _WellComeScreenState extends State<WellComeScreen> {
  @override
  Widget build(BuildContext context) {
    return Screen(
        child: Padding(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: LogoText(),
            ),
          ),
          // Expanded(
          //   flex: 0,
          //   child: GradientButton(
          //     "Get Started",
          //     isFullWidth: true, onPressed: () {  },
          //   ),
          // ),
        ],
      ),
      padding: const EdgeInsets.only(bottom: 40),
    ));
  }
}
