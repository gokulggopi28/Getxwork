import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/components/custom_button_style.dart';

class StatePage extends StatefulWidget {
   StatePage({super.key});

  @override
  State<StatePage> createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  var count = 0.obs;

  void increment(){
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Page'),
      ),
      body:  Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Obx(() =>Text('Count Value is $count',
             style: const TextStyle(
              fontSize: 25,
             ),),),
             const SizedBox(height: 30,),
            ElevatedButton(
              style: customButtonStyle,
              onPressed: (){
                increment();
              }, child: const Text('Increment'))
          ],
        ),
      ),
    );
  }
}