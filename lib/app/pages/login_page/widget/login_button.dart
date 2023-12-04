import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/common/theme/theme.dart';
import 'package:kickticket/app/pages/login_page/login_page_controller.dart';

class logInButton extends GetView<loginPageController>{
  logInButton({super.key,
    required this.usernameTextEditing,
    required this.passwordTextEditing,
    required this.formKey
  });
  final TextEditingController usernameTextEditing, passwordTextEditing;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () async{
          if(formKey.currentState!.validate()){
            if(!(usernameTextEditing.text == "" && passwordTextEditing.text == "")){
              await controller.login(
                  usernameTextEditing.text, passwordTextEditing.text);
            } else {
              controller.message.value = "Please fill username and password";
              controller.successfulLogin.value = false;
            }
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorTheme.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}