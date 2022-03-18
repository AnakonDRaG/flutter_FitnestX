import 'package:FitnestX/src/uikit/atom/atoms.dart';
import 'package:FitnestX/src/uikit/molecule/molecules.dart';
import 'package:FitnestX/src/uikit/organism/organisms.dart';
import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconly/iconly.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({Key? key}) : super(key: key);

  @override
  State<ExampleScreen> createState() => _ExampleState();
}

class _ExampleState extends State<ExampleScreen>
    with SingleTickerProviderStateMixin {
  double value = 0;
  double valueDiagram = 0;

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: SingleChildScrollView(
        child: ScreenContent(
          child: Column(
            children: [
              const Heading1("Heading1"),
              const Heading2("Heading2"),
              const Heading3("Heading3"),
              const Heading4("Heading4"),
              const Subtitle("Subtitle"),
              BaseButton(
                "Back to welcome screen",
                onPressed: () {
                  context.go("/");
                },
                leftIcon: IconlyLight.arrow_left,
              ),
              GradientButton(
                "Login",
                gradient: ThemeGradients.blue,
                onPressed: () {
                  setState(() {
                    value = 0;
                    valueDiagram = 0;
                  });
                },
                leftIcon: IconlyBold.login,
              ),
              const Icon(IconlyBold.activity),
              RadialStrokeDiagram(
                value: value,
              ),
              IconGradientButton(
                IconlyBold.login,
                onPressed: () {
                  setState(() {
                    valueDiagram = 65.6;
                  });
                },
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
              Text(valueDiagram.toString()),
              Slider(
                  value: valueDiagram,
                  onChanged: (double value) {
                    setState(() {
                      valueDiagram = value;
                    });
                  }),
              PieDiagram(
                valueDiagram * 100,
                gradient: ThemeGradients.purple,
                radius: 106,
              )
            ],
          ),
        ),
      ),
    );
  }
}
