import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/app/models/checkout_model.dart';
import 'package:kickticket/app/pages/item_navigation/ticket_all/widget/checkout_list.dart';

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
              Text(
                'Checkout Tickets',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: "Poppins"
                ),
              ),
              SizedBox(height: 25.0),
              
              // Text(checkout ?? "")
              CheckoutList()
            ],
          ),
        ),
      ),
    );
  }
}
