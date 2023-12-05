import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/app/models/checkout_model.dart';
import 'package:lottie/lottie.dart';

import '../ticket_controller.dart';



class CheckoutList extends StatelessWidget {

  final TicketController controller = Get.put(TicketController());



  CheckoutList({super.key});

  @override
  Widget build(BuildContext context) {
    return   controller.data.value.isEmpty? Center(child: Lottie.asset("assets/lottie/not_found.json"),):  ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return  InkWell(
          onTap: () => Get.toNamed('/payment',arguments: {"index":index}),

          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.network(
                    controller.data.value[index].url,
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

                            controller.data.value[index].name,
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
        );
      },
      itemCount:   controller.data.value.length,
    );
  }
}
