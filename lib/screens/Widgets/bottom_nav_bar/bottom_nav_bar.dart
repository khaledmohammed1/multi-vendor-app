import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/controllController.dart';

Widget bottomNavigationBar() {
  return GetBuilder<ControlViewModel>(
    init: Get.put(ControlViewModel()),
    builder: (controller) => BottomNavigationBar(
      elevation: 0,
      items: [
        BottomNavigationBarItem(
          icon: SizedBox(
              height: 26,
              width: 26,
              child: Image.asset("assets/images/shopping-cart.png")),
          label: "",
          activeIcon: const Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: Text(
              "Home",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
              height: 26,
              width: 26,
              child: Image.asset("assets/images/comment.png")),
          label: "",
          activeIcon: const Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: Text(
              "Message",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
              height: 26,
              width: 26,
              child: Image.asset("assets/images/bag.png")),
          label: "",
          activeIcon: const Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: Text(
              "Cart",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
              height: 26,
              width: 26,
              child: Image.asset("assets/images/pr.png")),
          label: "",
          activeIcon: const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text(
              "Profile",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
      onTap: (index) {
        controller.changeSelectedValue(index);
        Get.offAllNamed(controller.currentScreen.toString());
      },
      currentIndex: controller.navigatorValue,
      selectedItemColor: Colors.black,
      backgroundColor: Colors.red.withOpacity(.1),
    ),
  );
}
