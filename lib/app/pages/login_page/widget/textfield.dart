import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/common/theme/theme.dart';
import 'package:kickticket/app/pages/login_page/login_page_controller.dart';

class loginTextField extends GetView<loginPageController> {
  const loginTextField(
      {super.key,
      required this.textEditingController,
      required this.hintText,
      required this.icon,
      required this.labelText,
      required this.isPass});

  final TextEditingController textEditingController;
  final String hintText;
  final IconData icon;
  final bool isPass;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 4, bottom: 4 ),
        child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'You need to fill this field';
                } else if (hintText == "Username") {
                  if (value.length < 6) {
                    return 'Username must be at least 6 characters';
                  }
                } else if (hintText == "Password") {
                  if (!RegExp(r"^[a-zA-Z0-9]+$").hasMatch(value)) {
                    return 'Password can only contain letters and numbers';
                  }
                } else if (!controller.successfulLogin.value) {
                  print("INI SALAH");
                  return null;
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: textEditingController,
              obscureText: isPass
                  ? controller.isObsecure.value
                  : controller.isObsecureFalse.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: labelText,
                hintText: hintText,
                suffixIcon: isPass
                    ? IconButton(
                        icon: Icon(
                          controller.isObsecure.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: ColorTheme.black,
                        ),
                        onPressed: () {
                          controller.isObsecure.value =
                              !controller.isObsecure.value;
                        })
                    : null,
                icon: Icon(icon, color: ColorTheme.black),
                hintStyle: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                    color: ColorTheme.black,
                    fontWeight: FontWeight.w400),
              ),
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                  color: controller.successfulLogin.value
                      ? ColorTheme.black
                      : ColorTheme.purple),
            ),
      ),
    ));
  }
}
