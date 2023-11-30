import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kickticket/common/theme/theme.dart';
import 'package:kickticket/app/pages/splash_screen_page/splash_controller.dart';

class splashScreenView extends GetView<splashController>{
  splashScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Get.put(splashController());
    return Scaffold(
      backgroundColor: ColorTheme.white,
      body: Center(
        child: Container(
          width: width,
          height: height,
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              SvgPicture.asset(
                "assets/images/splashscreenlogo.svg",
                width: width,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Your Instant Pass to Sports Excitement!",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                    color: ColorTheme.purple,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}