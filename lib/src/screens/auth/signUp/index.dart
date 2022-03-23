import 'package:FitnestX/src/uikit/atom/atoms.dart';
import 'package:FitnestX/src/uikit/molecule/molecules.dart';
import 'package:FitnestX/src/uikit/organism/organisms.dart';
import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:FitnestX/src/uikit/style/stadows.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:iconly/iconly.dart';

import '../Components/CompaniesButtons.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //TODO: need to change this shit later
    final _testTextStyle = TextStyle(
        fontSize: FontSize.caption, color: ThemeColors.grayColors.normal);

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
                    "Create an Account",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Form(
                child: Column(
                  children: const [
                    TextInput(
                      icon: IconlyLight.profile,
                      placeholder: "First name",
                    ),
                    SpacingBetween(),
                    TextInput(
                      icon: IconlyLight.profile,
                      placeholder: "Last name",
                    ),
                    SpacingBetween(),
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
              CheckboxInput(
                child: Wrap(
                  children: [
                    Text(
                      "By continuing you accept our ",
                      style: _testTextStyle,
                    ),
                    LinkText(
                      "Privacy Policy ",
                      textStyle: _testTextStyle,
                    ),
                    Text(
                      "and ",
                      style: _testTextStyle,
                    ),
                    LinkText(
                      "Term of Use",
                      textStyle: _testTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ScreenContent(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GradientButton(
              "Register",
              gradient: ThemeGradients.blue,
              shadows: ThemeShadow.boxShadowBlue,
              isFullWidth: true,
              onPressed: () {
                context.go("/signUpStep2");
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
                Text("Already have an account? "),
                LinkGradientText(
                  "Login",
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
