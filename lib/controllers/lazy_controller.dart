import 'package:get/get.dart';

class LazyController extends GetxController{

  var counter = 0.obs;

  void increment(){
    counter++;
  }
}