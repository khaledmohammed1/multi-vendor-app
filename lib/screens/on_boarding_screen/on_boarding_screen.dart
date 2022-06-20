import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_shop_app/controllers/mainController.dart';
import 'package:multi_vendor_shop_app/screens/controll_screen/controll_screen.dart';
import '../../controllers/onBoardController.dart';
import 'on_boarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return SafeArea(
      child: GetBuilder<OnBoardController>(
        init: OnBoardController(),
        builder: (controller) => Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              PageView(
                onPageChanged: (value) {
                  controller.onChangePage(value.toDouble());
                },
                physics: const BouncingScrollPhysics(),
                children: [
                  OnBoardPage(
                    boardImage: "assets/images/1.jpg",
                    boardText: " ",
                  ),
                  OnBoardPage(
                    boardImage: "assets/images/2.jpg",
                    boardText: " ",
                  ),
                  OnBoardPage(
                    boardImage: "assets/images/3.jpg",
                    boardText: " ",
                  ),
                ],
              ),
              Positioned(
                bottom: 140,
                right: MediaQuery.of(context).size.width * .4,
                child: DotsIndicator(
                  dotsCount: 3,
                  position: controller.scrollerPosition,
                  decorator: const DotsDecorator(
                    color: Colors.black87,
                    activeColor: Color(0xffFD652A),
                  ),
                ),
              ),
              controller.scrollerPosition == 2
                  ? Positioned(
                      bottom: 80,
                      left: MediaQuery.of(context).size.width * .1,
                      right: MediaQuery.of(context).size.width * .1,
                      child: GetBuilder<MainController>(
                        init: MainController(),
                        builder:(controller)=> Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xffFD652A),
                          ),
                          width: MediaQuery.of(context).size.width * .8,
                          child: TextButton(
                            onPressed: () {
                              Get.off(()=> const ControllScreen());
                              controller.changeToFalse();
                            },
                            child: const Text(
                              "Get Started",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container(),
              Positioned(
                right: 10,
                top: 10,
                child: GetBuilder<MainController>(
                  init: MainController(),
                  builder: (controller) => InkWell(
                    onTap: () {
                      Get.off(const ControllScreen());
                      controller.changeToFalse();
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
