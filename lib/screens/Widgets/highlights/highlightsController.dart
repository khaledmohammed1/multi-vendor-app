import 'package:get/get.dart';

class HighLightsController extends GetxController{
  double highlightsPosition = 0;
  void onPageChange(double val){
    highlightsPosition = val;
    update();
  }


}