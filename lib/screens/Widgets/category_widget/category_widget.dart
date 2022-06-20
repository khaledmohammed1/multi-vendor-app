import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'category_controller.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> categoryLabel = <String>[
      "picked for you",
      "mobiles",
      "laptop",
      "fashion",
    ];
    return Padding(
      padding: const EdgeInsets.only(bottom: 14.0),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Stores For You",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 45,
              child: Row(
                children: [
                  Expanded(
                    child: GetBuilder<CategoryController>(
                      init: CategoryController(),
                      builder: (controller) => ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categoryLabel.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8, bottom: 8),
                            child: Expanded(
                              child: ActionChip(
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                backgroundColor:
                                    controller.categoryPosition == index
                                        ? Theme.of(context).primaryColor
                                        : Colors.grey,
                                label: Text(
                                  categoryLabel[index],
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: controller.categoryPosition == index
                                          ? Colors.white
                                          : Colors.black),
                                ),
                                onPressed: () {
                                  controller.onChange(index.toDouble());
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_downward),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
