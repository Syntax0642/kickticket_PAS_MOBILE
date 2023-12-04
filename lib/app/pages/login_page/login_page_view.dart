import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/app/pages/login_page/login_page_controller.dart';
import 'package:kickticket/app/pages/login_page/widget/login_button.dart';
import 'package:kickticket/app/pages/login_page/widget/textfield.dart';
import 'package:kickticket/app/pages/login_page/element/dont_have_an_account.dart';
import 'package:kickticket/common/theme/theme.dart';

class loginPageView extends GetView<loginPageController>{
  loginPageView({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: ColorTheme.greybg,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width,
                  child: Image.asset(
                    "assets/images/liquidelement.png",
                    fit: BoxFit.cover,
                  ),
                ),
            Container(
              width: width,
              height: 640,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFD3A8FF),
                    Color(0xFFDCB8FF),
                    Color(0xFFF4E6FF),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment : MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          child: Image.asset(
                            "assets/images/onboardlogo.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 30,
                          child: Image.asset(
                            "assets/images/logo.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Welcome Back!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Text(
                      "Hello SportLovers! We missed you.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(height: size.height*0.04,),
                    Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          loginTextField(textEditingController: controller.usernameTextEditingController, hintText: "insert your username", icon: Icons.people, labelText: "Username", isPass: false),
                          SizedBox(height: size.height*0.03,),
                          loginTextField(textEditingController: controller.passwordTextEditingController, hintText: "insert your password", icon: Icons.lock, labelText: "Password", isPass: true),
                          Obx(
                                () => controller.successfulLogin.value
                                ? Container()
                                : Padding(
                              padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                controller.message.value,
                                style: TextStyle(
                                    color: ColorTheme.red,
                                    fontFamily: "Poppins",
                                    fontSize: 12),
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.075),
                      Obx(
                            () => controller.isLoading.value
                            ? Container(
                             height: 50,
                              width: double.maxFinite,
                             decoration: BoxDecoration(
                              color: ColorTheme.grey,
                              borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            ),
                             child: Center(
                               child: Container(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation(
                                    ColorTheme.grey),
                              ),
                            ),
                          ),
                        ):logInButton(
                              usernameTextEditing:
                              controller.usernameTextEditingController,
                              passwordTextEditing:
                              controller.passwordTextEditingController,
                              formKey: formKey,
                            ),
                          ),
                          Container(
                            width: width,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: EdgeInsets.only(top: size.height* 0.05 ),
                                child: dontHaveAnAccount(),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}