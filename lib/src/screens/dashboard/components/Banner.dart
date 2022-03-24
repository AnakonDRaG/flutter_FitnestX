import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:FitnestX/src/uikit/style/stadows.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';
import 'package:FitnestX/src/uikit/uikit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:FitnestX/src/uikit/atom/atoms.dart';

Widget BannerComponent() => SizedBox(
      child: Stack(
        children: [
          CardComponent(
            gradient: ThemeGradients.blueLinear,
            shadows: ThemeShadow.boxShadowPurple,
            padding: const EdgeInsets.all(0),
            child: Stack(children: [
              const Dots(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "BMI (Body Mass Index)",
                            style: CustomTextTheme.mediumText.semi_bold.merge(
                              const TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "You have a normal weight",
                            style: CustomTextTheme.smallText.regular.merge(
                              const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          GradientButton(
                            "View More",
                            onPressed: () {},
                            gradient: ThemeGradients.purpleLinear,
                            isSmall: true,
                          )
                        ],
                      ),
                    ),
                    const Expanded(
                        flex: 0,
                        child: PieDiagram(
                          20.1,
                          gradient: ThemeGradients.purple,
                          radius: 106,
                        ))
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );

class Dots extends StatelessWidget {
  const Dots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _centerPos = MediaQuery.of(context).size.width / 2;

    return Positioned.fill(
      child: Stack(
        children: [
          Positioned(
              bottom: -18,
              left: -20,
              child: Opacity(
                opacity: 0.20,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              )),
          Positioned(
            bottom: 22,
            left: (_centerPos - 8 * 4) / 1.15,
            child: Opacity(
              opacity: 0.20,
              child: Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 11,
            left: (_centerPos - 8 * 4) * 1.15,
            child: Opacity(
              opacity: 0.20,
              child: Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 22,
            left: (_centerPos - 8 * 4) * 1.07,
            child: Opacity(
              opacity: 0.20,
              child: Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 12,
            left: (_centerPos - 8 * 4) / 1.4,
            child: Opacity(
              opacity: 0.20,
              child: Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -8,
            right: -14,
            child: Opacity(
              opacity: 0.20,
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
