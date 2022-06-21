import 'package:cached_network_image/cached_network_image.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'highlightsController.dart';

class BrandHighlights extends StatelessWidget {
  const BrandHighlights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Brand Highlights",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Container(
            height: 190,
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: SizedBox(
              child: GetBuilder<HighLightsController>(
                init: HighLightsController(),
                builder: (controller) => controller.loading.value
                    ? Container()
                    : PageView.builder(
                        onPageChanged: (val) {
                          controller.onPageChange(val.toDouble());
                        },
                        physics: const BouncingScrollPhysics(),
                        itemCount: controller.brandAd.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 0, 4, 8),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        height: 100,
                                        child: YoutubePlayer(
                                          controller: YoutubePlayerController(
                                            initialVideoId: controller.brandAd[index]['youtube'],
                                            flags: const YoutubePlayerFlags(
                                              autoPlay: true,
                                              loop: true,
                                              mute: true,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                8, 0, 2, 8),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                color: Theme.of(context)
                                                    .primaryColor.withOpacity(.05),
                                              ),
                                              height: 65,
                                              child: CachedNetworkImage(
                                                imageUrl: controller
                                                    .brandAd[index]['image1'],
                                                fit: BoxFit.fill,
                                                placeholder: (context, url) =>
                                                    const Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                6, 0, 4, 8),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                color: Theme.of(context)
                                                    .primaryColor.withOpacity(.05),
                                              ),
                                              height: 65,
                                              child: CachedNetworkImage(
                                                imageUrl: controller
                                                    .brandAd[index]['image2'],
                                                fit: BoxFit.fill,
                                                placeholder: (context, url) =>
                                                    const Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 0, 8, 17),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Theme.of(context).primaryColor),
                                    height: 190,
                                    child: CachedNetworkImage(
                                      imageUrl: controller.brandAd[index]
                                          ['image3'],
                                      fit: BoxFit.cover,
                                      placeholder: (context, url) =>
                                          const Center(
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 6.0),
             child: DotsIndicatorWidget(),
          ),
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
    return GetBuilder<HighLightsController>(
        init: HighLightsController(),
        builder: (controller) {
          return Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: controller.brandAd.isEmpty
                    ? Container()
                    : DotsIndicator(
                        position: controller.highlightsPosition,
                        dotsCount: controller.brandAd.length,
                        decorator: DotsDecorator(
                          spacing: const EdgeInsets.all(2),
                          size: const Size.square(6),
                          activeSize: const Size(12, 6),
                          activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
              ),
            ],
          );
        });
  }
}
