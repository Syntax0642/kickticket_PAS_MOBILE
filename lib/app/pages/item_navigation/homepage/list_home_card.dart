import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homepage_controller.dart';

class ListHomeCard extends StatelessWidget {


  final homePageController controller = Get.put(homePageController());
   ListHomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return   ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return  InkWell(

          onTap: () => Get.toNamed('/detail',arguments: {"id" :   controller.data.value.embedded!.events[index].id}),
          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.network(
                    controller.data.value.embedded!.events[index].images[0].url,

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
                            controller.data.value.embedded!.events[index].name,
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
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: controller.isLoading.value
          ? 10
          : controller.data.value.embedded!.events.length,
    );
  }
}
