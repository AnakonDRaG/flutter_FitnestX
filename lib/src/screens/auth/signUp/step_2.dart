import 'package:FitnestX/src/assets/icons/CustomIcons.dart';
import 'package:FitnestX/src/assets/images/images.dart';
import 'package:FitnestX/src/common/utils.dart';
import 'package:FitnestX/src/uikit/atom/atoms.dart';
import 'package:FitnestX/src/uikit/molecule/molecules.dart';
import 'package:FitnestX/src/uikit/organism/organisms.dart';
import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:FitnestX/src/uikit/style/indents.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:iconly/iconly.dart';

class SignUpStepScreen_2 extends StatelessWidget {
  const SignUpStepScreen_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _labelContainer(String text) => Container(
          child: Center(
              child: Text(
            text,
            style: CustomTextTheme.smallText.regular.merge(const TextStyle(color: Colors.white)),
          )),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              gradient: ThemeGradients.purple),
          height: 48,
          width: 48,
        );

    return Screen(
      child: PageScrollView(
        child: Column(
          children: [
            SvgPicture.asset(
              SIGNUP_HEADER_IMAGE_1,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                Text(
                  "Let’s complete your profile",
                  style: CustomTextTheme.heading4.bold,
                ),
                const SizedBox(height: 5),
                Text(
                  "It will help us to know more about you!",
                  style: CustomTextTheme.smallSubtitle.regular,
                )
              ],
            ),
            ScreenContent(
              child: Column(
                children: [
                  const TextInput(
                    icon: IconlyLight.user,
                    placeholder: "Choose Gender",
                  ),
                  const SizedBox(height: 15),
                  const TextInput(
                    icon: IconlyLight.calendar,
                    placeholder: "Date of Birth",
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Expanded(
                          child: TextInput(
                        icon: CustomIcons.weight_scale,
                        placeholder: "Your Weight",
                      )),
                      const SizedBox(width: 15),
                      _labelContainer("KG")
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Expanded(
                          child: TextInput(
                        icon: IconlyLight.swap,
                        placeholder: "Your Height",
                      )),
                      const SizedBox(width: 15),
                      _labelContainer("CM")
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: ThemeIndents.content,
        child: GradientButton(
          "Next",
          rightIcon: IconlyLight.arrow_right_2,
          iconSize: 20,
          gradient: ThemeGradients.blue,
          isFullWidth: true,
          onPressed: () {
            context.go("/signUpStep3");
          },
        ),
      ),
    );
  }
}
