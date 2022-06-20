import 'package:get/get.dart';

class CategoryController extends GetxController{
  double categoryPosition = 0;
  void onChange(double val){
    categoryPosition = val;
    update();
  }


}