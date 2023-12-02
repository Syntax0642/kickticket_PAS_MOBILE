import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class splashController extends GetxController{
  late final SharedPreferences prefs;

  @override
  void onInit() {
    super.onInit();
    checkSharedPreference();
  }
  void checkSharedPreference() async{
    prefs = await SharedPreferences.getInstance();
    Future.delayed(Duration(seconds: 2), () async {
      if(prefs.getString('token') == null || prefs.getString('token') == ""){
        Get.offNamed('/register');
      }else{
        Get.offNamed('/homepage');
      }
    });
  }
}
