import 'package:get/get.dart';
import 'package:kickticket/app/models/checkout_model.dart';
import 'package:kickticket/app/pages/item_navigation/ticket_all/ticket_view.dart';

class TicketController extends GetxController{
  RxList<CheckoutModel> data = <CheckoutModel>[].obs;
}