import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/components/custom_button_style.dart';
import 'package:get_demo/controllers/worker_controller.dart';

class WorkerPage extends StatelessWidget {
  final WorkerController workerController = Get.put(WorkerController());
   WorkerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Worker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Workers'),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: (){

              workerController.increment();
              
            },
            style: customButtonStyle, child: const Text('Increment'),),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (val){
                  workerController.increment();
                },
                decoration: const InputDecoration(
                hintText: "Type and press enter",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}