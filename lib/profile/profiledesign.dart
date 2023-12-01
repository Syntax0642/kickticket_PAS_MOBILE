import 'package:flutter/material.dart';
import 'package:kickticket/profile/profile_pict_style.dart';
import 'package:kickticket/profile/profile_widget.dart';


class ProfileScreen extends StatelessWidget {

  const ProfileScreen({super.key});
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
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}