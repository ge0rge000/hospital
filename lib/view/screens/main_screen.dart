import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< Updated upstream

import 'package:helath/utils/theme.dart';
import '../../logic/controllers/main_controller.dart';
class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final controller = Get.find<MainController>();
=======
import 'package:helath/logic/controllers/main_controller.dart';
import 'package:helath/utils/theme.dart';
class MainScreen extends StatelessWidget {
   MainScreen({Key? key}) : super(key: key);

  final controller=Get.find<MainController>();
>>>>>>> Stashed changes

  @override
  Widget build(BuildContext context) {
    return SafeArea(
<<<<<<< Updated upstream
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
                  activeIcon: Icon(Icons.category,color: Colors.black,),

                  icon: Icon(Icons.category,
                    color: Get.isDarkMode?Colors.black:Colors.black,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.favorite,color: Colors.black,),

                  icon: Icon(Icons.favorite,
                    color: Get.isDarkMode?Colors.black:Colors.black,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.settings,color: Colors.black,),

                  icon: Icon(Icons.settings,
                    color: Colors.black,
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
=======
      child: Obx((){
        return  Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: Container(),
            actions: [
              IconButton(onPressed: (){},
                  icon: Icon(Icons.menu)),

            ],
            backgroundColor: Get.isDarkMode? mainColor:darkGreyClr,
            title: Text(controller.title[controller.currentIndex.value],
            ),
            centerTitle: true,

          ),
          backgroundColor:Get.isDarkMode? Colors.white:darkGreyClr,
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Get.isDarkMode?Colors.white:darkGreyClr,
            currentIndex: controller.currentIndex.value,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.home,
                  color: Get.isDarkMode?mainColor:Colors.pink,
                ),
                icon: Icon(Icons.home,
                  color: Get.isDarkMode?Colors.black:Colors.white,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.category,
                  color: Get.isDarkMode?mainColor:Colors.pink,
                ),
                icon: Icon(Icons.category,
                  color: Get.isDarkMode?Colors.black:Colors.white,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.favorite,
                  color: Get.isDarkMode?mainColor:Colors.pink,
                ),
                icon: Icon(Icons.favorite,
                  color: Get.isDarkMode?Colors.black:Colors.white,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.settings,
                  color: Get.isDarkMode?mainColor:Colors.pink,
                ),
                icon: Icon(Icons.settings,
                  color: Get.isDarkMode?Colors.black:Colors.white,
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
      }),
         );
>>>>>>> Stashed changes
  }
}
