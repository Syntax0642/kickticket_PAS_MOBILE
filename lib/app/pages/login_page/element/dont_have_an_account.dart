import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/common/theme/theme.dart';

class dontHaveAnAccount extends StatelessWidget{
  const dontHaveAnAccount ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Didn't have an account yet?",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: ColorTheme.black,
          ),
        ),
        SizedBox(width: 5,),
        InkWell(
          onTap: (){
            Get.offNamed('/register');
          },
          child: Text(
            "Register",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 12,
              color: ColorTheme.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}