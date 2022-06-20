import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../controllers/controllController.dart';

// ignore: must_be_immutable
class ControllScreen extends StatefulWidget {
  const ControllScreen({Key? key}) : super(key: key);

  @override
  State<ControllScreen> createState() => _ControllScreenState();
}

class _ControllScreenState extends State<ControllScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: []);
    return GetBuilder<ControlViewModel>(
      init: Get.put(ControlViewModel()),
      builder:(controller)=> Scaffold(
        body: controller.currentScreen,
      ),
    );
  }
}
