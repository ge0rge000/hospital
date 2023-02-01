import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helath/logic/controllers/main_controller.dart';

import 'package:helath/utils/theme.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Obx((){
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              leading: Container(),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.menu),
                )
              ],
              backgroundColor: mainColor,
              title: Text(controller.title[controller.currentIndex.value]),
              centerTitle: true,
            ),
            backgroundColor: Colors.white,
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.white,
              currentIndex: controller.currentIndex.value,
              type: BottomNavigationBarType.fixed,

              items: [
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.home,color: Colors.black,),

                  icon: Icon(Icons.home,
                    color: Get.isDarkMode?Colors.black:Colors.black,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.devices_other,color: Colors.black,),

                  icon: Icon(Icons.devices_other,
                    color: Get.isDarkMode?Colors.black:Colors.black,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.favorite,color: Colors.black,),

                  icon: Icon(Icons.medication_outlined,
                    color: Get.isDarkMode?Colors.black:Colors.black,
                  ),
                  label: '',
                ),


              ],
              onTap: (index){
                controller.currentIndex.value=index;
              },
            ),
            body: IndexedStack(
              index: controller.currentIndex.value,
              children: controller.tabs.value,
            ),
          );
        }));
  }
}
