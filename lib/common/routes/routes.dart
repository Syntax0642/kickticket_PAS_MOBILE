import 'package:get/get.dart';
import 'package:kickticket/app/pages/detail_page/detail_page_binding.dart';
import 'package:kickticket/app/pages/detail_page/detail_page_view.dart';
import 'package:kickticket/app/pages/item_navigation/homepage/homepage_binding.dart';

import 'package:kickticket/app/pages/item_navigation/homepage/homepage_view.dart';
import 'package:kickticket/app/pages/item_navigation/item_nvatigation.dart';

import 'package:kickticket/app/pages/login_page/login_page_binding.dart';
import 'package:kickticket/app/pages/onboarding_page/onboarding_binding.dart';
import 'package:kickticket/app/pages/onboarding_page/onboarding_view.dart';
import 'package:kickticket/app/pages/register_page/register_page_binding.dart';
import 'package:kickticket/app/pages/register_page/register_page_view.dart';
import 'package:kickticket/app/pages/login_page/login_page_view.dart';
import 'package:kickticket/app/pages/splash_screen_page/splash_binding.dart';
import 'package:kickticket/app/pages/splash_screen_page/splash_view.dart';

import '../../app/pages/item_navigation/homepage/homepage_view.dart';

List<GetPage> routes = [
  GetPage(
    name: '/register',
    page: () => regsiterPageView(),
    binding: registerPageBinding(),
  ),
  GetPage(
    name: '/login',
    page: () => loginPageView(),
    binding: loginPageBinding(),
  ),
  GetPage(
    name: '/splash',
    page:() =>  splashScreenView(),
    binding: splashScreenBinding(),
  ),GetPage(
    name: '/onboard',
    page:() =>  onBoardingView(),
    binding: onBoardBinding(),
  ),GetPage(
    name: '/homepage',
    page:() =>  homePageView(),
    binding: homePageBinding(),
  ),
  GetPage(
    name: '/menu',
    page:() =>  Bottom_Nav(),
  ),
    name: '/a',
    page:() =>  NavigationExample(),
    // binding: homePageBinding(),
  ),
  GetPage(
    name: '/detail',
    page:() =>  detailPageView(),
    binding: detailPageBinding(),
  ),
];