import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/my_controller.dart';

class DependencyInj extends StatelessWidget {

  final MyController myController = Get.find<MyController>();

   DependencyInj({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dependency'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "Counter: ${myController.counter.value}",
                  style: const TextStyle(fontSize: 24),
                )),
                const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                myController.increment();
              },
              child: const Text('Increment Counter'),
            ),
          ],
        ),
      ),
    );
  }
}