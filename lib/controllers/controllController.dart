import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_shop_app/screens/cart_screen/cart_screen.dart';
import 'package:multi_vendor_shop_app/screens/home_screen/home_screen.dart';
import 'package:multi_vendor_shop_app/screens/message_screen/message_screen.dart';
import 'package:multi_vendor_shop_app/screens/profile_screen/profile_screen.dart';

class ControlViewModel extends GetxController{
   Widget _currentScreen =  HomeScreen();
  int _navigatorValue = 0;

  get navigatorValue => _navigatorValue;
  get currentScreen => _currentScreen;

  void changeSelectedValue(int selectedValue){
    _navigatorValue = selectedValue;
    switch (selectedValue){
      case 0 :{
        _currentScreen =  HomeScreen();
        break;
      }case 1 :{
      _currentScreen =  const MessageScreen();
      break;
    }case 2 :{
      _currentScreen = const CartScreen();
      break;
    }case 3 :{
      _currentScreen = const ProfileScreen();
      break;
     }
    }
    update();
  }
}