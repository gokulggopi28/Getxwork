import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/components/custom_button_style.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
      ),
      body:  Center(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Next Page",
              style: TextStyle(
                fontSize: 20
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: customButtonStyle,
              onPressed: (){
              Get.back();
            }, child: const Text('Back to Home'))
          ],
        ),
      ),
    );
  }
}