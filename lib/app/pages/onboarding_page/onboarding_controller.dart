import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kickticket/app/pages/onboarding_page/onboarding_model.dart';
import 'package:kickticket/app/pages/onboarding_page/onboarding_view.dart';

class onBoardingController extends GetxController{
  final RxInt currentPage = 0.obs;
  late PageController pageController;
  final List<OnboardingData> pages = [
    OnboardingData(
      title: "Welcome to KickTicket: Where Every Game Begins!",
      description: "Score big with KickTicket – your passport to sporting thrills! Experience seamless ticketing, exclusive deals, and front-row seats to all the action. Join us and kick off your sports adventure today!",
      imageUrl:"assets/images/onboardimage1.png",
    ),
    OnboardingData(
      title: "Your Game, Your Seat",
      description: "Discover the ease of securing your favorite seats for every game. From courtside action to the perfect view in the stands, find your spot effortlessly.",
      imageUrl:"assets/images/onboardimage2.png",
    ),OnboardingData(
      title: "Cheer On Your Team with KickTicket!",
      description: "KickTicket: Your Team's Ultimate Support Hub! Get tickets, exclusive team offers, and prime seats. Join now to back your favorites like never before!",
      imageUrl:"assets/images/onboardimage3.png",
    ),OnboardingData(
      title:  "Swift Tickets for Supreme Cricket Action with KickTicket!",
      description: "Get lightning-fast, affordable cricket tickets with KickTicket! Don't miss out on top-notch matches – join us now for the ultimate cricket experience!",
      imageUrl:"assets/images/onboardimage4.png",
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  bool get isLastPage => currentPage.value == pages.length - 1;


  void updatePageIndex(int index) {
    currentPage.value = index;
  }

}