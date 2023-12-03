import 'package:get/get.dart';
import 'package:kickticket/app/pages/ticket_all/ticket_controller.dart';

class TicketBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<TicketController>(
          () =>TicketController(),
    );
  }
}