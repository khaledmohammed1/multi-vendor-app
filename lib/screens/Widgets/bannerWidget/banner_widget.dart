import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bannerController.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BannerController>(
      init: Get.put(BannerController()),
      builder: (controller) => Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
            child: Container(
              height: MediaQuery.of(context).size.height * .20,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: PageView(
                onPageChanged: (val) {
                  controller.onPageChange(val.toDouble());
                },
                physics: const BouncingScrollPhysics(),
                children: const [
                  Center(
                    child: Text(
                      "Banner 1",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Banner 2",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Banner 3",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // const DotIndicator(),
          const DotsIndicatorWidget(),
        ],
      ),
    );
  }
}

class DotsIndicatorWidget extends StatelessWidget {
  const DotsIndicatorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BannerController>(
      init: BannerController(),
      builder: (controller) {
        return Positioned(
          bottom: 20,
          child: Row(
            children: [
              SizedBox(
                width:MediaQuery.of(context).size.width,
                child: DotsIndicator(
                  position: controller.bannerPosition,
                  dotsCount: 3,
                  decorator:  DotsDecorator(
                    spacing: const EdgeInsets.all(2),
                    size: const Size.square(6),
                    activeSize: const Size(12,6),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)
                    )
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
