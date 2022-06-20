// ignore: file_names
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MainController extends GetxController{
  final box = GetStorage();
  bool get isFirstTime => box.read('isFirstTime') ?? true;
  void changeToFalse() => box.write('isFirstTime', false);

}