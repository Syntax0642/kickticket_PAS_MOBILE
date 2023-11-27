import 'package:get/get.dart';
import 'package:kickticket/app/pages/login_page/login_page_binding.dart';
import 'package:kickticket/app/pages/register_page/register_page_binding.dart';
import 'package:kickticket/app/pages/register_page/register_page_view.dart';
import 'package:kickticket/app/pages/login_page/login_page_view.dart';

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
];