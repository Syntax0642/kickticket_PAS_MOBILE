import 'package:get/get.dart';
import 'package:kickticket/app/pages/item_navigation/profile/profile_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController extends GetxController{

  late final SharedPreferences prefs;
  void onInit() {
    super.onInit();
    Future.delayed(Duration.zero, () {
      Get.to(
        ProfileScreen(),
        transition: Transition.native, // Choose your desired transition animation
        duration: Duration(milliseconds: 500), // Adjust the duration as needed
      );
    });
  }

  signout() async {
    prefs.clear();
    Get.offNamed("/login");
  }
}