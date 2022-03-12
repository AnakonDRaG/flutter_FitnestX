import 'package:FitnestX/src/uikit/atom/Diagrams/PieDiagram.dart';
import 'package:FitnestX/src/uikit/atom/Diagrams/RadialStrokeDiagram.dart';
import 'package:FitnestX/src/uikit/molecule/Buttons/BlueGradientButton.dart';
import 'package:FitnestX/src/uikit/molecule/Buttons/IconGradientButton.dart';
import 'package:FitnestX/src/uikit/molecule/Buttons/IconWithProgressButton.dart';
import 'package:FitnestX/src/uikit/molecule/Buttons/PurpleGradientButton.dart';
import 'package:FitnestX/src/uikit/molecule/Buttons/base.dart';
import 'package:FitnestX/src/uikit/organism/Screen.dart';
import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:FitnestX/src/uikit/uikit.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({Key? key}) : super(key: key);

  @override
  State<ExampleScreen> createState() => _ExampleState();
}

class _ExampleState extends State<ExampleScreen>
    with SingleTickerProviderStateMixin {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Heading1("Heading1"),
            const Heading2("Heading2"),
            const Heading3("Heading3"),
            const Heading4("Heading4"),
            const Subtitle("Subtitle"),
            BaseButton(
              "qweqwe",
              onPressed: () {},
              leftIcon: IconlyLight.activity,
              rightIcon: IconlyBold.arrow_down,
            ),
            BlueGradientButton(
              "Login",
              onPressed: () {
                setState(() {
                  value = 0;
                });
              },
              leftIcon: IconlyBold.login,
            ),
            PurpleGradientButton(
              "qwe",
              onPressed: () {
                setState(() {
                  value = 0.6;
                });
              },
              isFullWidth: true,
            ),
            const Icon(IconlyBold.activity),
            RadialStrokeDiagram(
              value: value,
            ),
            IconGradientButton(
              IconlyBold.login,
              onPressed: () {},
            ),
            IconWithProgressButton(
              IconlyLight.arrow_right_2,
              value: value,
              onPressed: () {
                setState(() {
                  if (value < 1) value += 0.25;
                });
              },
            ),
            PieDiagram(
              21.2,
              gradient: ThemeGradients.purple,
              radius: 106,
            )
          ],
        ),
      ),
    );
  }
}
