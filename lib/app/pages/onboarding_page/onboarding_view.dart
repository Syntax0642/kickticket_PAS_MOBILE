import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kickticket/app/pages/onboarding_page/onboarding_controller.dart';
import 'package:kickticket/common/theme/theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingView extends StatelessWidget {
  final onBoardingController controller = Get.put(onBoardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 5,
                child: PageView.builder(
                  itemCount: controller.pages.length,
                  controller: controller.pageController,
                  onPageChanged: (index) {
                    controller.updatePageIndex(index);
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          controller.pages[index].imageUrl,
                          height: 250,
                          width: 250,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            controller.pages[index].title,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: ColorTheme.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Center(
                          child: Text(
                            controller.pages[index].description,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: ColorTheme.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SmoothPageIndicator(
                  controller: controller.pageController,
                  count: controller.pages.length,
                  effect: JumpingDotEffect(),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Visibility(
                  visible: controller.currentPage.value == 0,
                  child: TextButton(
                    onPressed: () {
                      controller.pageController.animateToPage(
                        controller.pages.length - 1,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                    child: Text('Skip'),
                  ),
                ),
                Obx(
                  () => ElevatedButton(
                    onPressed: () {
                      if (controller.isLastPage) {
                        Get.offNamed(
                          '/register',
                        );
                      } else {
                        controller.pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      }
                    },
                    child: Text(controller.isLastPage ? 'Done' : 'Next'),
                  ),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
