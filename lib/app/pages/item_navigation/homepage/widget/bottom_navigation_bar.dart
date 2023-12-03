import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:kickticket/common/theme/theme.dart';

class MyBottomNavigationBar  extends StatelessWidget {
   MyBottomNavigationBar ({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: ColorTheme.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [
           Icon(Icons.home)
          ],
        ),
      ),
    );
  }
}
