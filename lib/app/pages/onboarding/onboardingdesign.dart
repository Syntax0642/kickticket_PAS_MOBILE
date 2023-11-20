// import 'package:flutter/material.dart';
// import 'package:introduction_screen/introduction_screen.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:kickticket/app/pages/homepage/homepage_view.dart';
//
// class onboarding extends StatelessWidget {
//   onboarding({Key? key}) : super(key: key);
//
//   final List<PageViewModel> pages = [
//     PageViewModel(
//         title: 'Connect With Everyone',
//         body: 'Here you can have whatever description you would like to have, you can type it all in here',
//         image: Center(
//           child: Image.asset('assets/splash.png'),
//         ),
//         decoration: const PageDecoration(
//             titleTextStyle: TextStyle(
//               fontSize: 25.0,
//               fontWeight: FontWeight.bold,
//             )
//         )
//     ),
//     PageViewModel(
//         title: 'Have Access Everywhere!',
//         body: 'Here you can have whatever description you would like to have, you can type it all in here',
//         image: Center(
//           child: Image.asset('assets/splash.png'),
//         ),
//         decoration: const PageDecoration(
//             titleTextStyle: TextStyle(
//               fontSize: 25.0,
//               fontWeight: FontWeight.bold,
//             )
//         )
//     ),
//     PageViewModel(
//       title: 'Here We Start!',
//       body: 'Here you can have whatever description you would like to have, you can type it all in here',
//       image: Center(
//         child: Image.asset('assets/splash.png'),
//       ),
//       footer: Padding(
//         padding: const EdgeInsets.all(25),
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             primary: Colors.black,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//           ),
//           onPressed: () {
//           },
//           child: Text(
//             "Get Started",
//             style: TextStyle(
//               fontSize: 20,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ),
//       decoration: const PageDecoration(
//         titleTextStyle: TextStyle(
//           fontSize: 25.0,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     ),
//
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.fromLTRB(23, 100, 15, 15),
//         child: IntroductionScreen(
//           pages: pages,
//           dotsDecorator: const DotsDecorator(
//             size: Size(10,15),
//             color: Colors.black,
//             activeSize: Size.square(20),
//             activeColor: Colors.grey,
//           ),
//           showDoneButton: true,
//           done: const Text(
//             'Done',
//             style: TextStyle(fontSize: 20, color: Colors.black), // Warna teks 'Done'
//           ),
//           showSkipButton: true,
//           skip: const Text(
//             'Skip',
//             style: TextStyle(fontSize: 20, color: Colors.black), // Warna teks 'Skip'
//           ),
//           showNextButton: true,
//           next: Icon(
//             Icons.arrow_forward,
//             size: 25,
//             color: Colors.black, // Warna ikon 'Next'
//           ),
//
//           onDone: () => onDone(context),
//           curve: Curves.bounceOut,
//         ),
//       ),
//     );
//   }
//   void onDone(context) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setBool('ON_BOARDING', false);
//     Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) =>  HomeScreen()));
//   }
// }