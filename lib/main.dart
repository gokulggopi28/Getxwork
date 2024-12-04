import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/controllers/async_service_controller.dart';
import 'package:get_demo/pages/home_page.dart';


void main() async{

  // Dependency Injection Get.put
  // Get.put(MyController());

  //Dependency Injection Get.lazyPut
  // Get.lazyPut<LazyController>(()=> LazyController());

  // Dependency Injection Get.putAsync
  WidgetsFlutterBinding.ensureInitialized();
   await Get.putAsync<AsyncService>(() async {
    return AsyncService();
  });
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

