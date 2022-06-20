import 'package:get/get.dart';

import '../../controllers/controllController.dart';
import '../../controllers/mainController.dart';
import '../../controllers/onBoardController.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ControlViewModel());
    Get.lazyPut(() => MainController());
    Get.lazyPut(() => OnBoardController());
  }

}