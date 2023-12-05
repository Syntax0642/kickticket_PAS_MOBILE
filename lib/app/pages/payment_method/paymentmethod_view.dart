import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/app/pages/payment/payment_controller.dart';
import 'package:kickticket/app/pages/payment_method/widget/payment_method_list.dart';

import '../../../common/theme/theme.dart';

class PaymentMethodView extends StatefulWidget {

  PaymentMethodView({super.key});

  @override
  State<PaymentMethodView> createState() => _PaymentMethodViewState();
}

class _PaymentMethodViewState extends State<PaymentMethodView> {
  final paymentController = Get.put(PaymentController());
  String? language = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: ColorTheme.greybg,

     body: SingleChildScrollView(
       child: Padding(
         padding: EdgeInsets.all(20),
         child: Column(
           // crossAxisAlignment: CrossAxisAlignment.stretch,
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
                 child: Image.asset('assets/images/qr.jpg'),
               ),
             ),
             SizedBox(height: 5.0),
             Align(
               alignment: Alignment.center,
               child: ElevatedButton(
                 onPressed: () {





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



             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
               child: TextButton(
                 style: TextButton.styleFrom(
                   foregroundColor: kPrimaryColor,
                   padding: const EdgeInsets.all(20),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15),
                   ),
                   backgroundColor: const Color(0xFFF5F6F9),
                 ),
                 onPressed: () {

                 },
                 child: Row(
                   children: [
                     Image.asset(
                       'assets/images/dana.png',
                       width: 24,
                       height: 24,
                     ),
                     const SizedBox(width: 20),
                     Expanded(child: Text('Dana')),

                     Radio<String>(
                       value: 'Dana',
                       groupValue: language,
                       onChanged: (String? value) {
                         setState(() {
                           language = value;
                           // showSnackbar();?


                           paymentController.paymentMethod.value = language!;
                         });
                       },
                     ),

                   ],
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
               child: TextButton(
                 style: TextButton.styleFrom(
                   foregroundColor: kPrimaryColor,
                   padding: const EdgeInsets.all(20),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15),
                   ),
                   backgroundColor: const Color(0xFFF5F6F9),
                 ),
                 onPressed: () {

                 },
                 child: Row(
                   children: [
                     Image.asset(

                       'assets/images/linkaja.png',
                       width: 24,
                       height: 24,
                     ),
                     const SizedBox(width: 20),
                     Expanded(child: Text('Link Aja')),

                     Radio<String>(
                       value: 'Link Aja',
                       groupValue: language,
                       onChanged: (String? value) {
                         setState(() {
                           language = value;
                           // showSnackbar();?


                           paymentController.paymentMethod.value = language!;
                         });
                       },
                     ),


                   ],
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
               child: TextButton(
                 style: TextButton.styleFrom(
                   foregroundColor: kPrimaryColor,
                   padding: const EdgeInsets.all(20),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15),
                   ),
                   backgroundColor: const Color(0xFFF5F6F9),
                 ),
                 onPressed: () {

                 },
                 child: Row(
                   children: [
                     Image.asset(

                       'assets/images/bni.png',
                       width: 24,
                       height: 24,
                     ),
                     const SizedBox(width: 20),
                     Expanded(child: Text('Bni')),

                     Radio<String>(
                       value: 'Bni',
                       groupValue: language,
                       onChanged: (String? value) {
                         setState(() {
                           language = value;
                           // showSnackbar();?


                           paymentController.paymentMethod.value = language!;
                         });
                       },
                     ),


                   ],
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
               child: TextButton(
                 style: TextButton.styleFrom(
                   foregroundColor: kPrimaryColor,
                   padding: const EdgeInsets.all(20),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15),
                   ),
                   backgroundColor: const Color(0xFFF5F6F9),
                 ),
                 onPressed: () {

                 },
                 child: Row(
                   children: [
                     Image.asset(

                       'assets/images/mastercard.png',
                       width: 24,
                       height: 24,
                     ),
                     const SizedBox(width: 20),
                     Expanded(child: Text('MasterCard')),

                     Radio<String>(
                       value: 'MasterCard',
                       groupValue: language,
                       onChanged: (String? value) {
                         setState(() {
                           language = value;
                           // showSnackbar();?


                           paymentController.paymentMethod.value = language!;

                         });
                       },
                     ),


                   ],
                 ),
               ),
             ),


             Text(language!),

           ],
         ),
       ),
     ),
    );
  }
}