import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/app/pages/register_page/register_page_controller.dart';
import 'package:kickticket/common/theme/theme.dart';

class myTextField extends GetView<registerPageController>{
  const myTextField({super.key,
  required this.textEditingController,
  required this.hintText,
  required this.labelText,
  required this.iconData,
  required this.isPass,
  });

  final TextEditingController textEditingController;
  final String hintText;
  final String labelText;
  final IconData iconData;
  final bool isPass;

  @override
  Widget build(BuildContext context) {
    return Obx(() => TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'You need to fill this field';
        } else if (hintText == "Username") {
          if (!RegExp(r"^[a-zA-Z0-9]+$").hasMatch(value)) {
            return 'Username can only contain letters and numbers';
          } else if (value.length < 6) {
            return 'Username must be at least 6 characters';
          }
        } else if (hintText == "Email") {
          if (!value.contains("@")) {
            return 'Please enter a valid email address';
          }
        } else if (hintText == "Password") {
          if (!RegExp(r"^[a-zA-Z0-9]+$").hasMatch(value)) {
            return 'Username can only contain letters and numbers';
          }
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: textEditingController,
      obscureText: isPass
          ? controller.isObsecure.value
          : controller.isObsecureFalse.value,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              color: controller.successfulRegister.value
                  ?ColorTheme.purple
                  :ColorTheme.black
          ),
        ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: controller.successfulRegister.value
                  ?ColorTheme.black
                  :ColorTheme.purple
            ),
          ),
            labelText: labelText,
            hintText: hintText,
            suffixIcon: isPass?
            IconButton(
                icon: Icon(
                  controller.isObsecure.value
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: ColorTheme.black,
                ),
                onPressed: () {
                  controller.isObsecure.value = !controller.isObsecure.value;
                })
                : null,
        icon: Icon(iconData, color: ColorTheme.black),
        hintStyle: TextStyle(
            fontFamily: "Poppins",
            fontSize: 14,
            color: ColorTheme.black,
            fontWeight: FontWeight.w400),

      ),
      style: TextStyle(
          fontFamily: "Poppins",
          fontSize: 14,
          color: controller.successfulRegister.value
              ? ColorTheme.black
              : ColorTheme.purple),
    ));
  }

}