import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_shop_app/helper/firebase_services/firebase_services.dart';



final FireBaseServices _services = FireBaseServices();

class HighLightsController extends GetxController{

  HighLightsController() {
    getBrandAd();

  }

  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  List _brandAd = [];
  List get brandAd => _brandAd;

  double highlightsPosition = 0;
  void onPageChange(double val){
    highlightsPosition = val;
    update();
  }

  getBrandAd() {
    _loading.value = true;
    _services.getBrandHighlight()
        .then((value) {
      for(int i=0 ;i<value.docs.length;i++){
        _brandAd.add(value.docs[i]);
      }
      print(_brandAd);
      _loading.value = false;
      update();
    });
  }


}