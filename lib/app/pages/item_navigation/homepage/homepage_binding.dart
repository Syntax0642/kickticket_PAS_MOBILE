import 'package:get/get.dart';

import 'homepage_controller.dart';

class homePageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<homePageController>(
          () =>homePageController(),
    );
  }
}