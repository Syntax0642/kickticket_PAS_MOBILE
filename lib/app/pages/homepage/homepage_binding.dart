import 'package:get/get.dart';
import 'package:kickticket/app/pages/homepage/homepage_controller.dart';

class homePageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<homePageController>(
          () =>homePageController(),
    );
  }
}