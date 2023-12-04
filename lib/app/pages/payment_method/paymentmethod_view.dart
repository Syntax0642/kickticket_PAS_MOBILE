import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/app/pages/payment/payment_controller.dart';
import 'package:kickticket/app/pages/payment_method/widget/payment_method_list.dart';

class PaymentMethodView extends GetView<PaymentController> {
  final paymentController = Get.put(PaymentController());
  PaymentMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.white,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 50.0,
            left: 40.0,
            right: 40.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Payment Method',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  width: double.infinity,
                  height: 350.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Transform.scale(
                    scale: 1.70,
                    child: Image.asset('assets/qr.jpg'),
                  ),
                ),
                SizedBox(height: 5.0),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      // Logika untuk men-download QRIS
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                    child: Text(
                      'Download QRIS',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Paymentmethod(
                  text: 'Dana',
                  image: 'assets/dana.png',
                  press: () {
                  },
                ),
                SizedBox(height: 10),
                Paymentmethod(
                  text: 'Link aja',
                  image: 'assets/linkaja.png',
                  press: () {
                  },
                ),
                SizedBox(height: 10),
                Paymentmethod(
                  text: 'Bni',
                  image: 'assets/bni.png',
                  press: () {
                  },
                ),
                SizedBox(height: 10),
                Paymentmethod(
                  text: 'MasterCard',
                  image: 'assets/mastercard.png',
                  press: () {
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}