import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../profile/profiledesign.dart';


class ProfileController extends GetxController{
  late final SharedPreferences prefs;


  signout() async {
    prefs.clear();
    Get.offNamed("/login");
  }


}