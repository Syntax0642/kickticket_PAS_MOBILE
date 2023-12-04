import 'package:flutter/material.dart';

import '../../../../../common/theme/theme.dart';

Widget TextTimes (BuildContext context) {
  String getGreeting() {
    final currentTime = DateTime.now();
    final hour = currentTime.hour;

    if (hour >= 0 && hour < 5) {
      return 'GOOD DAWN 🤗';
    } else if (hour >= 5 && hour < 11) {
      return 'GOOD MORNING 🤗';
    } else if (hour >= 11 && hour < 15) {
      return 'GOOD AFTERNOON 🤗';
    } else if (hour >= 15 && hour < 19) {
      return 'GOOD EVENING 🤗';
    } else {
      return 'GOOD NIGHT 🤗';
    }
  }

  return Text(
    getGreeting(),
    style: TextStyle(
      color: ColorTheme.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );

}