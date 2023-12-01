import 'package:get/get.dart';

class PaymentController extends GetxController {
  final RxString customerName = ''.obs;
  final RxString numberOfTickets = ''.obs;
  final RxString cardNumber = ''.obs;
  final RxString cardHolderName = ''.obs;
  final RxString email = ''.obs;
  final RxString expirationDate = ''.obs;
  final RxString cvv = ''.obs;
  final RxString paymentMethod = ' '.obs;
}
