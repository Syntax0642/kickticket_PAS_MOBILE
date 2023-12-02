import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/app/pages/login_page/login_page_controller.dart';
import 'homepage_controller.dart';
import 'widget/bottom_navigation_bar.dart';
import 'package:kickticket/common/theme/theme.dart';

class homePageView extends GetView<homePageController>{
  homePageView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: Column(
          children: [
            Container(
              width: width,
              child: Image.asset(
                "assets/images/liquidelement.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 3,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding: EdgeInsets.only(left: 20),
                 child: Text(
                   "Hello,Ayika.",
                   style: TextStyle(
                       fontFamily: "Poppins",
                       color: ColorTheme.black,
                       fontSize: 20,
                       fontWeight: FontWeight.w500
                   ),
                 ),
               ),
               Padding(
                 padding: EdgeInsets.only(right: 20),
                 child: Container(
                   width: 40,
                   height: 40,
                   decoration: BoxDecoration(
                      color: ColorTheme.white,
                     borderRadius: BorderRadius.circular(25),
                     border: Border.all(width: 2, color: ColorTheme.purple)
                   ),
                   child: Icon(
                     Icons.notifications,
                     color: Colors.black,
                   ),
                 ),
               ),
             ],
           ),
            SizedBox(height: 12,),
            Container(
              width: width,
              height: 50,
              margin: EdgeInsets.only(left: 20, right: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: ColorTheme.lightPurple, width: 1.5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Adjust color and opacity as needed
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // Changes the position of the shadow
                  ),
                ],
              ),
              child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Find your best team...",
                    prefixIcon: Icon(Icons.search, color: ColorTheme.grey,)
                  ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Up Coming Events",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: ColorTheme.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: ColorTheme.grey,
                      fontSize: 17
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}