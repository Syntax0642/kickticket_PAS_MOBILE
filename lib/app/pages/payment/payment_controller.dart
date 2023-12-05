import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentController extends GetxController {
  final RxString customerName = ''.obs;
  final RxString numberOfTickets = ''.obs;
  final RxString cardNumber = ''.obs;
  final RxString cardHolderName = ''.obs;
  final RxString email = ''.obs;
  final RxString expirationDate = ''.obs;
  final RxString cvv = ''.obs;
  final RxString paymentMethod = 'Select Payment'.obs;
  final TextEditingController controllerPayment =TextEditingController();
  // final RxString?   language = ''.obs;

  int indexEvent = Get.arguments["index"];

  TextEditingController getPayment(){
  controllerPayment.text = paymentMethod.value;
  update();

  return controllerPayment;

}
}
