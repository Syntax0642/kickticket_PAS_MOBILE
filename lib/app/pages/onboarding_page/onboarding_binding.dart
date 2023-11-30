import 'package:get/get.dart';
import 'package:kickticket/app/pages/onboarding_page/onboarding_controller.dart';

class onBoardBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<onBoardingController>(
          () => onBoardingController(),
    );
  }
}