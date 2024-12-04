import 'package:get/get.dart';

class WorkerController extends GetxController{
  var count = 0.obs;

  void increment(){
    count++;
  }

  @override
  void onInit() {

    ever(count,(_)=> print(count));
    
    super.onInit();
  }
}