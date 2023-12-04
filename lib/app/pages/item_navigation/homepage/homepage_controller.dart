import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:kickticket/app/models/sport_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homePageController extends GetxController {
  Rx<SportsModel> data = SportsModel().obs;
  late final SharedPreferences prefs;
  RxString username = "".obs;
  // Rx<File> imageProfile = File('').obs;
  RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  loadData() async {
    prefs = await SharedPreferences.getInstance();
    username.value = prefs.getString("username") ?? "No Username";




    final response = await http.get(Uri.parse(
        "https://app.ticketmaster.com/discovery/v2/events.json?classificationName=sports&apikey=22yreWsOTMa8BwGhwQP8GWyS3XWeOU7F"));
    if (response.statusCode == 200) {
      var responses = jsonDecode(response.body);

      data.value = SportsModel.fromJson(responses);
      isLoading.value = false;
    } else {
      print("status code : ${response.statusCode.toString()}");
    }
    isLoading.value = false;
  }
  //
  // String formattingDate(String date) {
  //   try {
  //     DateTime originalDate = DateTime.parse(date);
  //     String formattedDate = DateFormat('dd MMM yyyy').format(originalDate);
  //     return formattedDate; // Output: 18-11-2023
  //   } catch (e) {
  //     return "Invalid date format";
  //   }
  // }
  //
  // String formattingTime(String time) {
  //   try {
  //     DateTime originalTime = DateFormat('HH:mm:ss').parse(time);
  //     String formattedTime = DateFormat('HH:mm').format(originalTime);
  //     return formattedTime; // Output: 18-11-2023
  //   } catch (e) {
  //     return "Invalid time format";
  //   }
  // }

}