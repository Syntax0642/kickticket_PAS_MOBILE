import 'package:get/get.dart';
import 'package:kickticket/app/pages/splash_screen_page/splash_controller.dart';

class splashScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<splashController>(
          () => splashController(),
    );
  }
}