import 'package:get/get.dart';

class BannerController extends GetxController{
  double bannerPosition = 0;
  void onPageChange(double val){
    bannerPosition = val;
    update();
  }


}