import 'package:get/get.dart';
import 'package:kickticket/app/pages/item_navigation/profile/profile_controller.dart';

class ProfileBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
          () =>ProfileController(),
    );
  }
}