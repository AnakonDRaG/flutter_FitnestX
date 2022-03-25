import 'package:FitnestX/src/assets/images/images.dart';
import 'package:FitnestX/src/common/utils.dart';
import 'package:FitnestX/src/screens/auth/signUp/models/CarouselItemModel.dart';
import 'package:FitnestX/src/uikit/atom/atoms.dart';
import 'package:FitnestX/src/uikit/molecule/molecules.dart';
import 'package:FitnestX/src/uikit/organism/organisms.dart';
import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:FitnestX/src/uikit/style/indents.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'components/CarouselCard.dart';

class SignUpStep3Screen extends StatefulWidget {
  const SignUpStep3Screen({Key? key}) : super(key: key);

  @override
  State<SignUpStep3Screen> createState() => _SignUpStep3ScreenState();
}

class _SignUpStep3ScreenState extends State<SignUpStep3Screen> {
  late int _pickedIndex = 0;

  final _carouselItemsJson = [
    {
      "assetImage": SIGNUP_STEP_1_IMAGE,
      "title": "Improve Shape",
      "text":
      "I have a low amount of body fat and need / want to build more muscle"
    },
    {
      "assetImage": SIGNUP_STEP_2_IMAGE,
      "title": "Lean & Tone",
      "text":
      "I’m “skinny fat”. look thin but have no shape. I want to add learn muscle in the right way"
    },
    {
      "assetImage": SIGNUP_STEP_3_IMAGE,
      "title": "Lose a Fat",
      "text":
      "I have over 20 lbs to lose. I want to drop all this fat and gain muscle mass"
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Screen(
      bodyPadding: EdgeInsets.only(top: ScreenUtils.topSafeHeight),
      child: Column(
        children: [
          Expanded(
            flex: 0,
            child: SizedBox(
              width: 225,
              child: Column(
                children: [
                  Text("What is your goal ?",
                      style: CustomTextTheme.heading4.bold),
                  Text(
                    "It will help us to choose a best program for you",
                    style: CustomTextTheme.smallSubtitle.regular,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: CarouselSlider(
              options: CarouselOptions(
                  height: 478.0,
                  viewportFraction: 0.75,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  onPageChanged: (int index, CarouselPageChangedReason reason) {
                    setState(() {
                      _pickedIndex = index;
                    });
                  }),
              items: _carouselItemsJson.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return CarouselCard(CarouselItemModel.fromJson(item));
                  },
                );
              }).toList(),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: ThemeIndents.content,
        child: GradientButton(
          "Confirm",
          iconSize: 20,
          gradient: ThemeGradients.blue,
          isFullWidth: true,
          onPressed: () {
            context.go("/authWelcome");
          },
        ),
      ),
    );
  }
}
