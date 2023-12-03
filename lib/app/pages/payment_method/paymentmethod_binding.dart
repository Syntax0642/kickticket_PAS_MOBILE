import 'package:get/get.dart';

class PaymentMethodController extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<PaymentMethodController>(
          () =>PaymentMethodController(),
    );
  }
}