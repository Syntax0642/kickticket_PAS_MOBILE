import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/app/pages/register_page/register_page_view.dart';
import 'package:kickticket/common/routes/routes.dart';
import 'package:kickticket/common/theme/theme.dart';
import 'package:kickticket/Favorite/favdesign.dart';
import 'package:kickticket/Payment/paymentdesign.dart';
import 'package:kickticket/Ticket/ticketdesign.dart';
import 'package:kickticket/profile/profiledesign.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kick Ticket',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
              errorStyle: TextStyle(
                fontFamily: "Poppins",
                color: ColorTheme.red
              )
        )
      ),
      getPages: routes,
      initialRoute: '/detail',
    );
  }
}


