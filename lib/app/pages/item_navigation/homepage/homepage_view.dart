import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/app/pages/login_page/login_page_controller.dart';
import 'homepage_controller.dart';
import 'widget/bottom_navigation_bar.dart';


class homePageView extends GetView<homePageController> {

  homePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 270,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xff9d76c1)),
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      padding: EdgeInsets.only(top: 60),
                      width: double.infinity,
                      child: Text("Hello, Ayika.",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 23)),
                    )),
                Image.asset("assets/images/gelombang.png")
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

                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Color(0xffd9d9d9),
                              borderRadius: BorderRadius.circular(40)

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child:   Image.asset(
                                  "assets/images/basket.png",
                                  height: 125,
                                  width: 125,
                                  fit: BoxFit.cover,
                                ),),
                              SizedBox(width: 10,),
                              Container(
                                // height: 120,
                                // color: Colors.black,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "17 April, 2022",
                                      style: TextStyle(
                                        fontFamily: "Poppins-regular",
                                      ),
                                    ),
                                    Container(
                                      width: 190,
                                      child:      Text("Judul nya adalah ini 2022.",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18)),
                                    ),
                                    SizedBox(height: 20,),

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
                        SizedBox(width: 15,),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Color(0xffd9d9d9),
                              borderRadius: BorderRadius.circular(40)

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child:   Image.asset(
                                  "assets/images/basket.png",
                                  height: 125,
                                  width: 125,
                                  fit: BoxFit.cover,
                                ),),
                              SizedBox(width: 10,),
                              Container(
                                // height: 120,
                                // color: Colors.black,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "17 April, 2022",
                                      style: TextStyle(
                                        fontFamily: "Poppins-regular",
                                      ),
                                    ),
                                    Container(
                                      width: 190,
                                      child:      Text("Judul nya adalah ini 2022.",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18)),
                                    ),
                                    SizedBox(height: 20,),

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
                        SizedBox(width: 15,),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Color(0xffd9d9d9),
                              borderRadius: BorderRadius.circular(40)

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child:   Image.asset(
                                  "assets/images/basket.png",
                                  height: 125,
                                  width: 125,
                                  fit: BoxFit.cover,
                                ),),
                              SizedBox(width: 10,),
                              Container(
                                // height: 120,
                                // color: Colors.black,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "17 April, 2022",
                                      style: TextStyle(
                                        fontFamily: "Poppins-regular",
                                      ),
                                    ),
                                    Container(
                                      width: 190,
                                      child:      Text("Judul nya adalah ini 2022.",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18)),
                                    ),
                                    SizedBox(height: 20,),

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
                        SizedBox(width: 15,),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Color(0xffd9d9d9),
                              borderRadius: BorderRadius.circular(40)

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child:   Image.asset(
                                  "assets/images/basket.png",
                                  height: 125,
                                  width: 125,
                                  fit: BoxFit.cover,
                                ),),
                              SizedBox(width: 10,),
                              Container(
                                // height: 120,
                                // color: Colors.black,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "17 April, 2022",
                                      style: TextStyle(
                                        fontFamily: "Poppins-regular",
                                      ),
                                    ),
                                    Container(
                                      width: 190,
                                      child:      Text("Judul nya adalah ini 2022.",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18)),
                                    ),
                                    SizedBox(height: 20,),

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
                    )
                  ),

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
                      Text(
                        "View All",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: "Poppins",
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
                          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            children: [
                              Image.asset("assets/images/category.png"),
                              SizedBox(width: 10,),
                              Text("Kategori 1",
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
                          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            children: [
                              Image.asset("assets/images/category.png"),
                              SizedBox(width: 10,),
                              Text("Kategori 2",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ],
                          ),
                        ),


                      ]),
                  SizedBox(height: 25.0),
                  InkWell(
                    onTap: () {
                      Get.toNamed("/detail");
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset(
                            "assets/images/basket.png",
                            width: 500.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(

                            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            width: 400.0,

                            height: 100.0,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(200)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'View your order details',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      SizedBox(width: 8.0),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.black,
                                        size: 20.0,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    'BasketBall Nice!',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

