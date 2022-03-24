import 'package:FitnestX/src/assets/images/images.dart';
import 'package:FitnestX/src/uikit/atom/atoms.dart';
import 'package:FitnestX/src/uikit/organism/organisms.dart';
import 'package:FitnestX/src/uikit/style/textTheme.dart';
import 'package:flutter/material.dart';

import 'components/NitificationListItem.dart';

class DashboardNotificationScreen extends StatefulWidget {
  const DashboardNotificationScreen({Key? key}) : super(key: key);

  @override
  State<DashboardNotificationScreen> createState() =>
      _DashboardNotificationScreenState();
}

class _DashboardNotificationScreenState
    extends State<DashboardNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Screen(
        topBar: ToolBar(
          middleChild: Text(
            "Notification",
            style: CustomTextTheme.largeText.bold,
          ),
        ),
        child: PageScrollView(
          child: ScreenContent(
            child: Column(
              children: [
                NotificationListItem(
                  title: 'Hey, it’s time for lunch',
                  assetName: DASHBOARD_APPLE_PIE_IMAGE,
                  dateTime: DateTime(2018, 3, 24, 21, 1),
                ),
                const Divider(height: 30),
                NotificationListItem(
                  title: 'Don’t miss your lowerbody workout',
                  assetName: DASHBOARD_LOWEBODY_WORKOUT_IMAGE,
                  dateTime: DateTime(2018, 3, 24, 21, 18),
                  isWarning: true,
                ),
                const Divider(height: 30),
                NotificationListItem(
                  title: 'Don’t miss your lowerbody workout',
                  assetName: DASHBOARD_PANCAKES_IMAGE,
                  dateTime: DateTime(2018, 3, 21, 2, 18),
                ),
                const Divider(height: 30),
                NotificationListItem(
                  title: 'Congratulations, You have finished Anything',
                  assetName: DASHBOARD_AB_WORKOUT_IMAGE,
                  dateTime: DateTime(2018, 3, 24, 21, 18),
                ),
                const Divider(height: 30),
                NotificationListItem(
                  title: 'Hey, it’s time for lunch',
                  assetName: DASHBOARD_PANCAKES_IMAGE,
                  dateTime: DateTime(2018, 3, 24, 21, 2),
                ),
                const Divider(height: 30),
                NotificationListItem(
                  title: 'Ups, You have missed your Lowerbody',
                  assetName: DASHBOARD_LOWEBODY_WORKOUT_IMAGE,
                  dateTime: DateTime(2018, 3, 24, 21, 6),
                  isWarning: true,
                ),
              ],
            ),
          ),
        ));
  }
}
