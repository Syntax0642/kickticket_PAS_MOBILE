import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/app/pages/item_navigation/profile/profile_controller.dart';
import 'package:kickticket/app/pages/profile/widget/avatar.dart';
import 'package:kickticket/app/pages/profile/widget/profile_model.dart';


class ProfileScreen extends GetView<ProfileController> {
   ProfileScreen({super.key});
   ProfileController controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            const ProfilePic(),
            const SizedBox(height: 20),
            ProfileMenu(
              text: "My Account",
              press: () => {},
            ),
            ProfileMenu(
              text: "Notifications",
              press: () {},
            ),
            ProfileMenu(
              text: "Settings",
              press: () {},
            ),
            ProfileMenu(
              text: "Help Center",
              press: () {},
            ),
            ProfileMenu(
              text: "Log Out",
              press: ()  {controller.signout();},
            ),
          ],
        ),
      ),
    );
  }
}