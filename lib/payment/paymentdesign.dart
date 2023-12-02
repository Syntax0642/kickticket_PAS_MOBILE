import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/Payment/paymentctr.dart';
import 'package:kickticket/Payment/paystyle.dart';

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
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 90.0, 16.0, 16.0),
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
                label: 'Card Number',
                onChanged: (value) => paymentController.cardNumber.value = value,
              ),
              Paystyle(
                label: 'Card Holder Name',
                onChanged: (value) => paymentController.cardHolderName.value = value,
              ),
              Paystyle(
                label: 'Email',
                onChanged: (value) => paymentController.email.value = value,
              ),
              Row(
                children: [
                  Expanded(
                    child: Paystyle(
                      label: 'Expiration Date',
                      onChanged: (value) => paymentController.expirationDate.value = value,
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Paystyle(
                      label: 'CVV',
                      onChanged: (value) => paymentController.cvv.value = value,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'Choose Payment Method:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Radio(
                    value: 'Credit Card',
                    groupValue: paymentController.paymentMethod.value,
                    onChanged: (value) => paymentController.paymentMethod.value = value.toString(),
                  ),
                  Text('Credit Card'),
                  SizedBox(width: 16.0),
                  Radio(
                    value: 'Bank Transfer',
                    groupValue: paymentController.paymentMethod.value,
                    onChanged: (value) => paymentController.paymentMethod.value = value.toString(),
                  ),
                  Text('Bank Transfer'),
                ],
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
    );
  }
}
