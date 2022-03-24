import 'package:FitnestX/src/assets/images/images.dart';
import 'package:FitnestX/src/uikit/style/colors.dart';
import 'package:FitnestX/src/uikit/style/gradients.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class NotificationListItem extends StatelessWidget {
  final String title;
  final DateTime dateTime;

  final String assetName;

  final bool isWarning;

  const NotificationListItem(
      {Key? key,
      this.isWarning = false,
      required this.title,
      required this.dateTime,
      required this.assetName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              padding: const EdgeInsets.all(6),
              child: SvgPicture.asset(
                assetName,
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: isWarning
                      ? ThemeGradients.withOpacity(
                          0.20, ThemeGradients.purpleLinear)
                      : ThemeGradients.withOpacity(
                          0.20, ThemeGradients.blueLinear)),
            ),
          ],
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: CustomTextTheme.smallText.medium,
              ),
              const SizedBox(height: 5),
              Text(
                DateTime.now().day == dateTime.day
                    ? DateTime.now().hour == dateTime.hour
                        ? "About ${DateTime.now().minute - dateTime.minute} minutes ago"
                        : "About ${DateTime.now().hour - dateTime.hour} hours ago"
                    : DateFormat('dd MMMM').format(dateTime),
                style: CustomTextTheme.caption.regular
                    .merge(TextStyle(color: ThemeColors.grayColors.normal)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
          width: 40,
          child: Icon(
            Icons.more_vert,
            size: 14,
            color: ThemeColors.grayColors.light,
          ),
        )
      ],
    );
  }
}
