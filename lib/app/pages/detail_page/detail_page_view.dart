import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/app/pages/detail_page/detail_page_controller.dart';
import 'package:kickticket/common/theme/theme.dart';
import 'package:rive/rive.dart';

import '../../models/checkout_model.dart';
import '../item_navigation/ticket_all/ticket_controller.dart';
import '../item_navigation/ticket_all/ticket_view.dart';
import '../item_navigation/ticket_all/widget/checkout_list.dart';

class detailPageView extends GetView<detailPageController>{


  final TicketController controllerticket = Get.put(TicketController());

  detailPageView({super.key});

  @override
  Widget build(BuildContext context) {

    print(controller.idEvent);
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorTheme.greybg,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 10),
          child: Obx(() => controller.isLoading.value?CircularProgressIndicator():Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: width,
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(
                          controller.data.value.images![0].url,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: ()=> Get.back(),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: ColorTheme.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(width: 2, color: ColorTheme.black)
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: ColorTheme.black,
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Container(
                padding: EdgeInsets.only(left: 20, right: 0, bottom: 20, top: 10),
                width: width,
                height: 150,
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
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 170,
                            child: Text(

                              controller.data.value.name.toString(),
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: ColorTheme.black
                              ),
                              maxLines: 2,
                              softWrap: true,
                            ),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                      size: 13,
                                      Icons.calendar_month
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                   controller.formattingDate(controller.data.value.dates!.start.dateTime.toString()),
                                    style: TextStyle(
                                      color: ColorTheme.grey,
                                      fontFamily: "Poppins",
                                      fontSize: 13,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(width: 10,),
                              Row(
                                children: [
                                  Icon(
                                      size: 12,
                                      Icons.location_on
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                    controller.data.value.dates!.timezone.toString(),
                                    style: TextStyle(
                                      color: ColorTheme.grey,
                                      fontFamily: "Poppins",
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorTheme.lightPurple
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(

                            "\$${controller.data.value.priceRanges![0].min.toString()}",
                            style: TextStyle(
                              color: ColorTheme.white,
                              fontFamily: "Poppins",
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 3,),
                          Column(
                            children: [
                              Text(

                          "${controller.data.value.embedded!.venues![0].upcomingEvents.ticketmaster} seats",
                                style: TextStyle(
                                  color: ColorTheme.white,
                                  fontFamily: "Poppins",
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "available",
                                style: TextStyle(
                                  color: ColorTheme.white,
                                  fontFamily: "Poppins",
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(25),
                width: width,
                height: 600,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Deskripsi",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: ColorTheme.black,
                      ),
                    ),
                    Container(
                      width: 300,
                      child: Text(


                        "\$${controller.data.value.embedded!.venues![0].generalInfo.childRule}",
                       style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: ColorTheme.black
                        ),
                        maxLines: 5,
                        softWrap: true,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Personal Responsible",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: ColorTheme.black,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/michie.jpeg"
                                  ),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text(
                          "Alexandra Michie",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "Location",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: ColorTheme.black,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/map.png"
                                  ),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      width: 300,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorTheme.heavyPurple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: (){
                          // Get.toNamed('/payment');


                          controllerticket.data.value.add(CheckoutModel(id: controller.idEvent,name:  controller.data.value.name.toString(), url:    controller.data.value.images![0].url,));
                          // CheckoutList.checkout!.add(CheckoutModel(name:  controller.data.value.name.toString(), url:    controller.data.value.images![0].url,));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Checkout",
                              style: TextStyle(
                                color: ColorTheme.white,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 70,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: ColorTheme.black),
                      borderRadius: BorderRadius.circular(20),
                      color: ColorTheme.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_border_outlined,
                          color: ColorTheme.heavyPurple,
                          size: 30,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),)
        ),
      ),
    );
  }
}