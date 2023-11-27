import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/common/theme/theme.dart';

class ArleadyHaveAnAccount extends StatelessWidget{
  const ArleadyHaveAnAccount ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Aleady have an account?",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: Colors.black
          ),
        ),
        SizedBox(width: 5,),
        InkWell(
          onTap: (){
            Get.offNamed('/login');
          },
          child: Text(
            "Sign In",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 14,
              color: ColorTheme.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}