import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/controllers/async_service_controller.dart';

class AsyncServicePage extends StatelessWidget {
  final AsyncService asyncService = Get.find<AsyncService>();
   AsyncServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Async Service Example'),
      ),
      body: FutureBuilder<String>(
        future: asyncService.fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            return Center(
              child: Text(
                snapshot.data ?? "No data",
                style: const TextStyle(fontSize: 24),
              ),
            );
          }
        },
      ),
    );
  }
}