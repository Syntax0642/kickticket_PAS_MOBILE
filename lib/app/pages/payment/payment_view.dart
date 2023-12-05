import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/app/pages/payment/payment_controller.dart';
import 'package:kickticket/app/pages/payment/payment_model.dart';
import 'package:kickticket/common/theme/theme.dart';
import 'package:lottie/lottie.dart';

import '../item_navigation/ticket_all/ticket_controller.dart';

class PaymentDesign extends StatelessWidget {
  final PaymentController paymentController = Get.put(PaymentController());

  final TicketController controller = Get.put(TicketController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: Icon(Icons.arrow_back), onPressed: () {
          Navigator.of(context).pop();
        },
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'KickTicket',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Paystyle(
                isReadOnly: false,
                label: 'Customer Name',
                onChanged: (value) => paymentController.customerName.value = value,
              ),
              Paystyle(
                isReadOnly: false,
                label: 'Number of Tickets',
                onChanged: (value) => paymentController.numberOfTickets.value = value,
                keyboardType: TextInputType.number,
              ),

              SizedBox(height: 05.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose Payment Method:',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed("/payment_method",arguments: {"index":0});
                    },
                    child: Text(
                      'Change Payment',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
          
          // Obx(() => Text( paymentController.paymentMethod.value)),

          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Obx(
              () => TextFormField(
                controller:paymentController.getPayment(),
                // initialValue: paymentController.paymentMethod.value,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: 'Select payment',
                  filled: true,
                  fillColor: Colors.white70,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0), // Radius border
                  ),
                ),
              ),
            ),
          ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  showCheckoutConfirmationDialog(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurpleAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0), // Bentuk border radius
                  ),
                  elevation: 5.0, // Ketinggian bayangan
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    'CheckOut',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  void showCheckoutConfirmationDialog(BuildContext context) {
    Get.dialog(
      barrierDismissible: false,
      Dialog(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset(
                'assets/lottie/confirm.json',
                width: 300,
                height: 300,
                fit: BoxFit.fill,
              ),
              Text(
                "Your Order has been confirmed!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.data.value.where((x) =>controller.data.value.indexOf(x) != 0).toList();
                          Get.offAllNamed('menu');

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorTheme.heavyPurple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 7),
                          child: Text(
                            'Continue Shopping',
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}
