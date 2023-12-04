import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/app/pages/item_navigation/homepage/widget/text_time.dart';
import '../../../../common/theme/theme.dart';
import 'homepage_controller.dart';
import 'list_home_card.dart';

class homePageView extends GetView<homePageController> {
  homePageView({super.key});
  final homePageController controller = Get.put(homePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.greybg,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 60),
                    width: MediaQuery.of(context).size.width,
                    height: 270,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xff9d76c1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(
                        ()=> Text(
                              "Hello ${controller.username.value} 👋",
                            style: TextStyle(
                              color: ColorTheme.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Poppins"
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        TextTimes(context),
                        SizedBox(height: 20,),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: ColorTheme.white,
                            borderRadius: BorderRadius.circular(20),
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
                              hintText: "Search your favorite team...",
                              prefixIcon: Icon(Icons.search),
                            ),
                          ),
                        )
                      ],
                    ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Up coming Events",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 23)),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: ()=> Get.toNamed('/events'),
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: Color(0xffd9d9d9),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/images/stadiumbasket.png",
                                      height: 125,
                                      width: 125,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    // height: 120,
                                    // color: Colors.black,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "17 April, 2022",
                                          style: TextStyle(
                                            fontFamily: "Poppins-regular",
                                          ),
                                        ),
                                        Container(
                                          width: 190,
                                          child: Text(
                                              "BasketBall Match Golden Gate Vs Chicago Bulls",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on_outlined),
                                            Text(
                                              "Kudus, Indonesia",
                                              style: TextStyle(
                                                fontFamily: "Poppins-regular",
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Color(0xffd9d9d9),
                                borderRadius: BorderRadius.circular(40)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "assets/images/basket.png",
                                    height: 125,
                                    width: 125,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  // height: 120,
                                  // color: Colors.black,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "17 April, 2022",
                                        style: TextStyle(
                                          fontFamily: "Poppins-regular",
                                        ),
                                      ),
                                      Container(
                                        width: 190,
                                        child: Text(
                                            "BasketBall Match Golden Gate Vs Chicago Bulls",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18)),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on_outlined),
                                          Text(
                                            "Kudus, Indonesia",
                                            style: TextStyle(
                                              fontFamily: "Poppins-regular",
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Color(0xffd9d9d9),
                                borderRadius: BorderRadius.circular(40)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "assets/images/basket.png",
                                    height: 125,
                                    width: 125,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  // height: 120,
                                  // color: Colors.black,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "17 April, 2022",
                                        style: TextStyle(
                                          fontFamily: "Poppins-regular",
                                        ),
                                      ),
                                      Container(
                                        width: 190,
                                        child: Text(
                                            "BasketBall Match Golden Gate Vs Chicago Bulls",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18)),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on_outlined),
                                          Text(
                                            "Kudus, Indonesia",
                                            style: TextStyle(
                                              fontFamily: "Poppins-regular",
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Color(0xffd9d9d9),
                                borderRadius: BorderRadius.circular(40)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "assets/images/basket.png",
                                    height: 125,
                                    width: 125,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  // height: 120,
                                  // color: Colors.black,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "17 April, 2022",
                                        style: TextStyle(
                                          fontFamily: "Poppins-regular",
                                        ),
                                      ),
                                      Container(
                                        width: 190,
                                        child: Text(
                                            "BasketBall Match Golden Gate Vs Chicago Bulls",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18)),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on_outlined),
                                          Text(
                                            "Kudus, Indonesia",
                                            style: TextStyle(
                                              fontFamily: "Poppins-regular",
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Top Picks 🔥",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 23)),
                      InkWell(
                        onTap: ()=> Get.toNamed('/ticket'),
                        child: Text(
                          "View All",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            children: [
                              Image.asset("assets/images/category.png"),
                              SizedBox(
                                width: 10,
                              ),
                              Text("BasketBall",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            children: [
                              Image.asset("assets/images/category.png"),
                              SizedBox(
                                width: 10,
                              ),
                              Text("FootBall",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ],
                          ),
                        ),
                      ]),

                  Obx(() => controller.isLoading.value?CircularProgressIndicator():ListHomeCard())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
