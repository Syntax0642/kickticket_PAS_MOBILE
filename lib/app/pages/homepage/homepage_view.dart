import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/app/pages/homepage/homepage_controller.dart';
import 'package:kickticket/app/pages/login_page/login_page_controller.dart';
import 'widget/bottom_navigation_bar.dart';

class homePageView extends GetView<homePageController>{
  homePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}