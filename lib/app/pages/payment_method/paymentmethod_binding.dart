import 'package:get/get.dart';
import 'package:kickticket/app/pages/payment_method/paymentmethod_controller.dart';

class PaymentMethodBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<PaymentMethodController>(
          () =>PaymentMethodController(),
    );
  }
}