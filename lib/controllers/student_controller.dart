import 'package:get/get.dart';
import 'package:get_demo/student.dart';

class StudentController extends GetxController{
  var student = Student();

  void converToUpperCase(){

    student.name.value = student.name.value.toUpperCase();
  }
}