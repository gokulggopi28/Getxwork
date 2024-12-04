import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/components/custom_button_style.dart';
import 'package:get_demo/controllers/student_controller.dart';

class StudentName extends StatelessWidget {
  final StudentController studentController = Get.put(StudentController());
   StudentName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Name'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Obx(()=> Text('Name is ${studentController.student.name},',
           style: const TextStyle(
            fontSize: 30
           ),)),
           const SizedBox(height: 30,
           ),
           ElevatedButton(
            style: customButtonStyle,
            onPressed: (){
              studentController.converToUpperCase();
          
           }, child: const Text('Upper')),
           const SizedBox(height: 30,),
           Obx(()=> Text('Age is ${studentController.student.age}',
           style: const TextStyle(
            fontSize: 30
           ),)),
          ],

        ),
      ),
    );
  }
}