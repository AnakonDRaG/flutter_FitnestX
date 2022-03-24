import 'package:FitnestX/src/uikit/atom/atoms.dart';
import 'package:FitnestX/src/uikit/organism/organisms.dart';
import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:FitnestX/src/uikit/style/stadows.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'components/Banner.dart';
import 'components/Header.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Screen(
      child: PageScrollView(
        child: ScreenContent(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              const SizedBox(height: 30),
              BannerComponent(),
              const SizedBox(height: 30),
              CardComponent(
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                gradient:
                    ThemeGradients.withOpacity(0.2, ThemeGradients.blueLinear),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Today Target",
                        style: CustomTextTheme.mediumText.medium,
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: Text(
                        "🥺🥺🥺",
                        style: CustomTextTheme.mediumText.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Activiti Status",
                style: CustomTextTheme.largeText.semi_bold,
              ),
              const SizedBox(height: 15),
              CardComponent(
                gradient:
                    ThemeGradients.withOpacity(0.2, ThemeGradients.blueLinear),
                child: const SizedBox(height: 150),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 315,
                      child: CardComponent(
                        shadows: ThemeShadow.boxShadowCard,
                        child: Row(
                          children: [
                            SizedBox(width: 20),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sleep",
                                    style: CustomTextTheme.smallText.medium),
                                GradientText(
                                  "8h 20m",
                                  gradient: ThemeGradients.blueLinear,
                                  style: CustomTextTheme.mediumText.semi_bold,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 150,
                          width: 150,
                          child: CardComponent(
                            shadows: ThemeShadow.boxShadowCard,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sleep",
                                    style: CustomTextTheme.smallText.medium),
                                GradientText(
                                  "8h 20m",
                                  gradient: ThemeGradients.blueLinear,
                                  style: CustomTextTheme.mediumText.semi_bold,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 150,
                          child: CardComponent(
                            shadows: ThemeShadow.boxShadowCard,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Calories",
                                    style: CustomTextTheme.smallText.medium),
                                GradientText(
                                  "760 kCal",
                                  gradient: ThemeGradients.blueLinear,
                                  style: CustomTextTheme.mediumText.semi_bold,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Workout Progress",
                          style: CustomTextTheme.largeText.semi_bold,
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: Text(
                          "🥺🥺",
                          style: CustomTextTheme.mediumText.regular,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 172,
                    child: Stack(
                      children: [SizedBox()],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Latest Workout",
                          style: CustomTextTheme.largeText.semi_bold,
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: Text(
                          "See more",
                          style: CustomTextTheme.smallText.medium.merge(
                              TextStyle(color: ThemeColors.grayColors.light)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 172,
                    child: Stack(
                      children: [SizedBox()],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
