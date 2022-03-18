import 'package:FitnestX/src/assets/images/images.dart';
import 'package:FitnestX/src/uikit/animations.dart';
import 'package:FitnestX/src/uikit/atom/atoms.dart';
import 'package:FitnestX/src/uikit/molecule/molecules.dart';
import 'package:FitnestX/src/uikit/organism/organisms.dart';
import 'package:FitnestX/src/uikit/style/indents.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingState();
}

class _OnboardingState extends State<OnboardingScreen> {
  double _progress = 0.25;
  int _step = 0;

  final List<String> _images = [
    ONBOARDING_HEADER_IMAGE_1,
    ONBOARDING_HEADER_IMAGE_2,
    ONBOARDING_HEADER_IMAGE_3,
    ONBOARDING_HEADER_IMAGE_4
  ];

  final List<String> _titles = [
    "Track Your Goal",
    "Get Burn",
    "Eat Well",
    "Improve Sleep \nQuality"
  ];

  final List<String> _subtitles = [
    "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
    "Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
    "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
    "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
  ];

  late final AnimationFadeTransition _animationController =
      AnimationFadeTransition(
    durationMilliseconds: 400,
    slideOffset: 0,
    children: List.generate(
      _images.length,
      (index) => SvgPicture.asset(
        _images[index],
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
        key: ValueKey(index),
      ),
    ),
  );

  late final AnimationFadeTransition _animationTitleController =
      AnimationFadeTransition(
    durationMilliseconds: 500,
    children: List.generate(
      _titles.length,
      (index) => TitleText(
        _titles[index],
        key: ValueKey(index),
      ),
    ),
  );

  late final AnimationFadeTransition _animationSubTitleController =
      AnimationFadeTransition(
    durationMilliseconds: 600,
    children: List.generate(
      _subtitles.length,
      (index) => Subtitle(
        _subtitles[index],
        key: ValueKey(index),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: PageScrollView(
        child: Column(
          children: [
            Expanded(flex: 2, child: _animationController.render()),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.only(
                    left: ThemeIndents.large,
                    right: ThemeIndents.large,
                    top: ThemeIndents.larger),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _animationTitleController.render(),
                    const SpacingBetween(),
                    _animationSubTitleController.render(),
                  ],
                ),
              ),
            ),
            Container(
              padding: ThemeIndents.content,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconWithProgressButton(
                    IconlyLight.arrow_right_2,
                    value: _progress,
                    onPressed: () {
                      setState(() {
                        if (_step < 3) {
                          _progress += 0.25;
                          _step++;
                          _animationController.nextSlide();
                          _animationTitleController.nextSlide();
                          _animationSubTitleController.nextSlide();
                        }
                      });
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
