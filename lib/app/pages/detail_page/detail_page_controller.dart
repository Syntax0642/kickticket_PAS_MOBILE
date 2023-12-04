import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:kickticket/app/models/sports_detail_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class detailPageController extends GetxController{
  String idEvent = Get.arguments["id"];
  Rx<SportsDetailModel> data = SportsDetailModel().obs;
  RxString username = "".obs;
  // Rx<File> imageProfile = File('').obs;
  RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  loadData() async {

    final response = await http.get(Uri.parse(
    "https://app.ticketmaster.com/discovery/v2/events/$idEvent.json?classificationName=sports&apikey=22yreWsOTMa8BwGhwQP8GWyS3XWeOU7F"));
    if (response.statusCode == 200) {
      var responses = jsonDecode(response.body);

      data.value = SportsDetailModel.fromJson(responses);

      print(  data.value.name);
      isLoading.value = false;
    } else {
      print("status code : ${response.statusCode.toString()}");
    }
    isLoading.value = false;
  }


String formattingDate(String date) {
  try {
    DateTime originalDate = DateTime.parse(date);
    String formattedDate = DateFormat('dd MMM yyyy').format(originalDate);
    return formattedDate; // Output: 18-11-2023
  } catch (e) {
    return "Invalid date format";
  }
}

String formattingTime(String time) {
  try {
    DateTime originalTime = DateFormat('HH:mm:ss').parse(time);
    String formattedTime = DateFormat('HH:mm').format(originalTime);
    return formattedTime; // Output: 18-11-2023
  } catch (e) {
    return "Invalid time format";
  }
}

  // void onInit() {
  //   super.onInit();
  //   Future.delayed(Duration.zero, () {
  //     Get.to(
  //       ProfileScreen(),
  //       transition: Transition.native, // Choose your desired transition animation
  //       duration: Duration(milliseconds: 500), // Adjust the duration as needed
  //     );
  //   });
  // }
  //
  // signout() async {
  //   prefs.clear();
  //   Get.offNamed("/login");
  // }
}