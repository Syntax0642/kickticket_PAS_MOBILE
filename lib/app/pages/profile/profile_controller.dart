import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';



class ProfileController extends GetxController{
  late final SharedPreferences prefs;


  signout() async {

    prefs = await SharedPreferences.getInstance();
    prefs.clear();
    Get.offNamed("/login");
  }


}