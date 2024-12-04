import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/components/custom_button_style.dart';
import 'package:get_demo/controllers/lazy_controller.dart';

class LazyPage extends StatelessWidget {
  final LazyController lazyController = Get.find<LazyController>();
   LazyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lazy Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Obx(()=> Text('Counter: ${lazyController.counter.value}',
           style: const TextStyle(
            fontSize: 30
           ), )),
           const SizedBox(
            height: 20,
           ),
           ElevatedButton(
            style: customButtonStyle,
            onPressed: (){
              lazyController.increment();
            }, child: const Text('Increment'))
          ],
        ),
      ),
    );
  }
}