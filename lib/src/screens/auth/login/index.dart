import 'package:FitnestX/src/assets/images/images.dart';
import 'package:FitnestX/src/uikit/atom/atoms.dart';
import 'package:FitnestX/src/uikit/molecule/molecules.dart';
import 'package:FitnestX/src/uikit/organism/organisms.dart';
import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:FitnestX/src/uikit/style/stadows.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:iconly/iconly.dart';

import '../Components/CompaniesButtons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: PageScrollView(
        child: ScreenContent(
          child: Column(
            children: [
              Column(
                children: const [
                  Text(
                    "Hey there",
                    style: TextStyle(fontSize: FontSize.large),
                  ),
                  SizedBox(height: 5),
                  Heading4(
                    "Welcome Back",
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Form(
                child: Column(
                  children: const [
                    TextInput(
                      icon: IconlyLight.message,
                      placeholder: "Email",
                    ),
                    SpacingBetween(),
                    PasswordInput(
                      icon: IconlyLight.lock,
                      placeholder: "Password",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              LinkText(
                "Forgot your password?",
                textStyle: TextStyle(color: ThemeColors.grayColors.light),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: ScreenContent(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GradientButton(
              "Login",
              gradient: ThemeGradients.blue,
              shadows: ThemeShadow.boxShadowBlue,
              leftIcon: IconlyBold.login,
              isFullWidth: true,
              onPressed: () {
                context.go("/onboarding");
              },
            ),
            const SizedBox(height: 30),
            const HorizontalTextDivider("Or"),
            const SizedBox(height: 30),
            const CompaniesButtons(),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Don`t have an account yet? "),
                LinkGradientText(
                  "Register",
                  textStyle: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
