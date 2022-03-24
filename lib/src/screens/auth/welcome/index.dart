import 'package:FitnestX/src/assets/images/images.dart';
import 'package:FitnestX/src/uikit/atom/atoms.dart';
import 'package:FitnestX/src/uikit/molecule/molecules.dart';
import 'package:FitnestX/src/uikit/organism/organisms.dart';
import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:FitnestX/src/uikit/style/indents.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class AuthWelcomeScreen extends StatelessWidget {
  const AuthWelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: ScreenContent(
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: SvgPicture.asset(
                AUTH_WELCOME_IMAGE,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
            ),
            Expanded(
                flex: 0,
                child: SizedBox(
                  width: 214,
                  child: Column(
                    children: [
                       Text(
                        "Welcome, Stefani",
                        style: CustomTextTheme.heading4.bold,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "You are all set now, let’s reach your goals together with us",
                        style: CustomTextTheme.smallSubtitle.regular, textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: ThemeIndents.content,
        child: GradientButton(
          "Go To Home",
          iconSize: 20,
          gradient: ThemeGradients.blue,
          isFullWidth: true,
          onPressed: () {
            context.go("/signUp");
          },
        ),
      ),
    );
  }
}
