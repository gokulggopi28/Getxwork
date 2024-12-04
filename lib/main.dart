import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/pages/home_page.dart';

import 'controllers/lazy_controller.dart';

void main() {

  // Dependency Injection Get.put
  // Get.put(MyController());

  //Dependency Injection Get.lazyPut
  Get.lazyPut<LazyController>(()=> LazyController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

