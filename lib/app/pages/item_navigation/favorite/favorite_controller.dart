import 'package:get/get.dart';
import 'package:kickticket/app/pages/favorite/favorite_view.dart';

class FavoriteController extends GetxController{

  void onInit() {
    super.onInit();
    Future.delayed(Duration.zero, () {
      Get.to(
        FavDesign(),
        transition: Transition.native, // Choose your desired transition animation
        duration: Duration(milliseconds: 500), // Adjust the duration as needed
      );
    });
  }
}


