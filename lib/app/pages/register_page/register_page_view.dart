import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/common/theme/theme.dart';
import 'register_page_controller.dart';
import 'package:kickticket/app/pages/register_page/widget/textfield.dart';
import 'package:kickticket/app/pages/register_page/widget/register_button.dart';
import 'package:kickticket/app/pages/register_page/element/arleady_havean_account.dart';


class regsiterPageView extends GetView<registerPageController> {
  regsiterPageView({super.key});

  final RegisterPageController = Get.put(registerPageController());
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            height: height,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Container(
                    width: width,
                    child: Image.asset(
                      "assets/images/liquidelement.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                    width: width,
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
                            "Welcome Guest!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            "Come join us for the ultimate sport experience",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          SizedBox(height: size.height*0.04,),
                          Form(
                            key: formKey,
                            child: Column(
                              children: [
                                myTextField(textEditingController: controller.usernameTextEditingController, hintText: "insert your username", labelText: "Username", iconData: Icons.person, isPass: false),
                                SizedBox(height: size.height*0.03,),
                                myTextField(textEditingController: controller.emailTextEditingController, hintText: "insert your email eg.you@gmail.com", labelText: "Email", iconData: Icons.mail, isPass: false),
                                SizedBox(height: size.height*0.03,),
                                myTextField(textEditingController: controller.passwordTextEditingController, hintText: "insert your password", labelText: "Password", iconData: Icons.lock, isPass: true),
                                Obx(() =>
                                controller.successfulRegister.value?
                                    Container():
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        controller.message.value,
                                        style: TextStyle(
                                          color: ColorTheme.red,
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                ),
                                SizedBox(height: 30,),
                                Obx(() =>
                                  controller.isLoading.value?
                                      Container(
                                        height: 50,
                                        width: double.maxFinite,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(100),
                                        ),
                                        child: Center(
                                          child: Container(
                                            height: 20,
                                            width: 20,
                                            child: CircularProgressIndicator(
                                              valueColor: AlwaysStoppedAnimation(
                                                ColorTheme.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                      :SignUpButton(usernameTextEditing: controller.usernameTextEditingController, emailTextEditing: controller.emailTextEditingController, passwordTextEditing: controller.passwordTextEditingController, formKey: formKey),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                ArleadyHaveAnAccount()
                              ],
                            ),
                          ),
                        ],
                      ),
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