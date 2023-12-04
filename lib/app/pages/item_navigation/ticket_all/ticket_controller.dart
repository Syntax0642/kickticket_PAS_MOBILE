import 'package:get/get.dart';
import 'package:kickticket/app/pages/item_navigation/ticket_all/ticket_view.dart';

class TicketController extends GetxController{
  void onInit() {
    super.onInit();
    Future.delayed(Duration.zero, () {
      Get.to(
        TicketDesign(),
        transition: Transition.native, // Choose your desired transition animation
        duration: Duration(milliseconds: 500), // Adjust the duration as needed
      );
    });
  }
}