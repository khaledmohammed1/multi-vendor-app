import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_shop_app/screens/controll_screen/controll_screen.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {


  @override
  void initState() {
    Timer(
      const Duration(seconds: 1),
          () => Get.offAll(  const ControllScreen()),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: []);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SizedBox(
              height: 160, child: Image.asset("assets/images/bag.png")),
        ),
      ),
    );
  }
}