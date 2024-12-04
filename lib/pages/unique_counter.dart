import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/components/custom_button_style.dart';
import 'package:get_demo/controllers/unique_controller.dart';

class UniqueCounter extends StatelessWidget {
  final UniqueController uniqueController = Get.put(UniqueController());
   UniqueCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unique Counter'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<UniqueController>(
              id: 'txtCount',
              builder: (controller){
                return Text('The Value is ${controller.count}',
                style: const TextStyle(
                  fontSize: 30
                ),);
              }),
              GetBuilder<UniqueController>(
                builder: (controller){
                return Text('The Value is ${controller.count}',
                style: const TextStyle(
                  fontSize: 30
                ),);
              } ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: customButtonStyle,
                onPressed: () => uniqueController.increment(),
                 child: const Text('Increment'))

          ],
        ),
      ),
    );
  }
}