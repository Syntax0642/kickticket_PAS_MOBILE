import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/theme/theme.dart';

class TicketDesign extends StatelessWidget {
  const TicketDesign({Key? key}) : super(key: key);

  final String imagePath = 'assets/basket.jpeg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.greybg,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: ()=> Get.toNamed('/menu'),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: ColorTheme.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2, color: ColorTheme.black)
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: ColorTheme.black,
                        size: 15,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    'All Tickets',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: "Poppins"
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.0),
              InkWell(
                onTap: ()=> Get.toNamed('/detail'),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset(
                        "assets/images/stadiumbasket.png",
                        width: 500,
                        height: 250,
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
                          padding: const EdgeInsets.all(20),
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
        ),
      ),
    );
  }
}
