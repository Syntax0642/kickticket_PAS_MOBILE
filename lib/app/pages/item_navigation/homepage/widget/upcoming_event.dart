import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../homepage_controller.dart';

class UpcomingEventsCard extends StatelessWidget {


  final homePageController controller = Get.put(homePageController());
  UpcomingEventsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 175,
      child: ListView.builder(

        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return  InkWell(

            onTap: () => Get.toNamed('/detail',arguments: {"id" :   controller.data.value.embedded!.events[index].id}),

           child: Container(
             margin: EdgeInsets.only(right: 15),
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
                    child: Image.network(
                      controller.data.value.embedded!.events[index].images[0].url,
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
                          controller.formattingDate(controller.data.value.embedded!.events[index].dates.start.dateTime.toString()),

                          style: TextStyle(
                            fontFamily: "Poppins-regular",
                          ),
                        ),
                        Container(
                          width: 190,
                          child: Text(
                              controller.data.value.embedded!.events[index].name,
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
                            controller.data.value.embedded!.events[index].dates.timezone.toString(),
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
          );
        },
        // physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: controller.isLoading.value
            ? 10
            : controller.data.value.embedded!.events.length,
      ),
    );
  }
}
