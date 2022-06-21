import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_shop_app/helper/firebase_services/firebase_services.dart';


final FireBaseServices _services = FireBaseServices();

class BannerController extends GetxController {
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  BannerController() {
    getBanners();

  }

  double bannerPosition = 0;

  void onPageChange(double val) {
    bannerPosition = val;
    update();
  }

  List _bannerImages = [];
  List get bannerImages => _bannerImages;


  getBanners() {
    _loading.value = true;
    _services.getBanners().then((value) {
      for(int i=0 ;i<value.docs.length;i++){
        _bannerImages.add(value.docs[i]['image']);
      }
      print(_bannerImages);
      print(_bannerImages.length);
      _loading.value = false;
      update();
    });
  }



}