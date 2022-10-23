


import 'package:get/get.dart';
import 'package:helath/view/screens/home_screen.dart';
import 'package:helath/view/screens/sesnors/catogery_screen.dart';
import 'package:helath/view/screens/sesnors/favourite_screen.dart';
import 'package:helath/view/screens/settings_screen.dart';


class MainController extends GetxController{

  RxInt currentIndex=0.obs;

  final tabs=[
    HomeScreen(),
    CatogeryScreen(),
    FavouriteScreen(),
    SettingScreen(),
  ].obs;

  final title=[
    "First Health",
    "Catogeries",
    "Favourities",
    "Setting",
  ].obs;
}