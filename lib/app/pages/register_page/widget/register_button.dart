import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/app/pages/register_page/register_page_controller.dart';
import 'package:kickticket/common/theme/theme.dart';

class SignUpButton extends GetView<registerPageController>{
  const SignUpButton({super.key, required this.usernameTextEditing, required this.emailTextEditing, required this.passwordTextEditing, required this.formKey, });

  final TextEditingController usernameTextEditing, emailTextEditing, passwordTextEditing;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () async{
          if(formKey.currentState!.validate()){
            if(!(emailTextEditing.text == "" && passwordTextEditing.text == "")){
              await controller.signin(
                  usernameTextEditing.text, emailTextEditing.text, passwordTextEditing.text);
            } else if(controller.successfulRegister.value) {
              controller.message.value = "Please fill username and password";
              controller.successfulRegister.value = false;
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
              "Register",
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