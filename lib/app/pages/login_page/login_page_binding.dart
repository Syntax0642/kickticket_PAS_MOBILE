import 'package:get/get.dart';
import 'package:kickticket/app/pages/login_page/login_page_controller.dart';

class loginPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<loginPageController>(
        () =>loginPageController(),
    );
  }
}