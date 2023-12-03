import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/app/pages/payment/payment_controller.dart';
import 'package:kickticket/app/pages/payment/payment_model.dart';

class PaymentDesign extends StatelessWidget {
  final PaymentController paymentController = Get.put(PaymentController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
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
                  label: 'Customer Name',
                  onChanged: (value) => paymentController.customerName.value = value,
                ),
                Paystyle(
                  label: 'Number of Tickets',
                  onChanged: (value) => paymentController.numberOfTickets.value = value,
                  keyboardType: TextInputType.number,
                ),
                Paystyle(
                  label: 'Email',
                  onChanged: (value) => paymentController.email.value = value,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Paystyle(
                        label: 'Date and time',
                        keyboardType: TextInputType.number,
                        onChanged: (value) => paymentController.expirationDate.value = value,
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Paystyle(
                        label: 'Booking hours',
                        keyboardType: TextInputType.number,
                        onChanged: (value) => paymentController.cvv.value = value,
                      ),
                    ),
                  ],
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
              Paystyle(
                label: 'Select payment',
                onChanged: (value) => paymentController.customerName.value = value,
              ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Placeholder for processing payment
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
      ),
    );
  }
}
