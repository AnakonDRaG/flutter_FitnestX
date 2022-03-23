import 'package:FitnestX/src/common/utils.dart';
import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:FitnestX/src/uikit/style/stadows.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget CarouselCard(String assetImage, String title, String text) => Container(
      width: 275,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: Colors.amber,
          gradient: ThemeGradients.blue,
          borderRadius: BorderRadius.circular(22),
          boxShadow: ThemeShadow.boxShadowPurple),
      child: Column(
        children: [
          Expanded(
            child: SvgPicture.asset(
              assetImage,
              fit: BoxFit.fitHeight,
            ),
          ),
          Expanded(
              flex: 0,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    title,
                    style: CustomTextTheme.bodyText2.merge(const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(
                    width: 50,
                    height: 2,
                    child: Divider(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    text,
                    style: CustomTextTheme.bodyText2
                        .merge(const TextStyle(color: Colors.white)),
                  ),
                ],
              ))
        ],
      ),
    );
