import 'package:get/get.dart';
import 'package:kickticket/app/pages/detail_page/detail_page_controller.dart';


class detailPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<detailPageController>(
          () =>detailPageController(),
    );
  }
}