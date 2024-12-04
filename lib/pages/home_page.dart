import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/components/custom_button_style.dart';
import 'package:get_demo/pages/dependency_inj.dart';
import 'package:get_demo/pages/next_page.dart';
import 'package:get_demo/pages/state_page.dart';
import 'package:get_demo/pages/student_name.dart';
import 'package:get_demo/pages/unique_counter.dart';
import 'package:get_demo/pages/worker_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: customButtonStyle,
              onPressed: (){
              Get.snackbar('Snackbar Title','This is a snackbar message',
              snackPosition: SnackPosition.BOTTOM,
              colorText: Colors.black,
              borderRadius: 30,
              animationDuration: const Duration(
                milliseconds: 3000,
              ),
              backgroundGradient: const LinearGradient(colors: [Colors.yellow,
              Colors.blueAccent]),
              borderColor: Colors.purple,
              borderWidth: 4,
              dismissDirection: DismissDirection.horizontal,
              forwardAnimationCurve: Curves.bounceInOut,
              icon: const Icon(Icons.send,
              color: Colors.black,),
              shouldIconPulse: false,
              leftBarIndicatorColor: Colors.white,
              mainButton: TextButton(onPressed: (){}, child: const Text('Retry',
              selectionColor: Colors.green,
              )),
              overlayBlur: 5
              );
            }, child: const Text('Show Snackbar',),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: customButtonStyle,
              onPressed: (){
              Get.defaultDialog();
            }, child: const Text("Dialog")),
             const SizedBox(
              height: 20,
            ),
             ElevatedButton(
              style: customButtonStyle,
              onPressed: (){
              Get.bottomSheet(
                Wrap(
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.wb_sunny_outlined),
                      title: const Text('Light theme'),
                      onTap: (){
                        Get.changeTheme(ThemeData.light());
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.wb_sunny),
                      title: const Text('Dark theme'),
                      onTap: () => Get.changeTheme(ThemeData.dark()),
                    ),
                    
                
                
                  ],
                ),
                backgroundColor:Colors.green
              );
            }, child: const Text("Bottom Sheet")),
             const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: customButtonStyle,
              onPressed: (){
                Get.to( const NextPage(),
                transition: Transition.zoom,
                duration: const Duration(
                  milliseconds: 4000
                ),
                curve: Curves.bounceInOut);
                
              }, child: const Text('Navigation')),
               const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: customButtonStyle,
              onPressed: (){
              Get.to( StatePage());
            }, child: const Text('State Management')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: customButtonStyle,
              onPressed: (){
              Get.to(StudentName());
            }, child: const Text('Student Name')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: customButtonStyle,
              onPressed: (){
                Get.to( UniqueCounter());
              }, child: const Text('Unique Id')),
               const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: customButtonStyle,
              onPressed: (){
               Get.to( WorkerPage());
              }, child: const Text('Worker Page')),
               const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: customButtonStyle,
              onPressed: (){
               Get.to( DependencyInj());
              }, child: const Text('Dependency Injection'))

            
        
            
          ],
        ),
      ),

    );
  }
}