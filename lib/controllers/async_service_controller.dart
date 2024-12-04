import 'package:get/get.dart';

class AsyncService extends GetxService{
  Future<String> fetchData() async{
    await Future.delayed(const Duration(seconds: 2));
     return "Data loaded successfully";

  }
}