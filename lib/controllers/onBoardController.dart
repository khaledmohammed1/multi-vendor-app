import 'package:get/get.dart';

class OnBoardController extends GetxController{
  double _scrollerPosition = 0;
  double get scrollerPosition => _scrollerPosition;
  onChangePage(value){
    _scrollerPosition = value;
    update();
  }

}