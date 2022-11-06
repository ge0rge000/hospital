


import 'package:get/get.dart';
<<<<<<< Updated upstream
import 'package:helath/view/screens/home_screen.dart';
import 'package:helath/view/screens/sesnors/catogery_screen.dart';
import 'package:helath/view/screens/sesnors/favourite_screen.dart';
=======
import 'package:helath/view/screens/category_screen.dart';
import 'package:helath/view/screens/favourite_screen.dart';
import 'package:helath/view/screens/home_screen.dart';
>>>>>>> Stashed changes
import 'package:helath/view/screens/settings_screen.dart';


class MainController extends GetxController{
<<<<<<< Updated upstream

  RxInt currentIndex=0.obs;

  final tabs=[
    HomeScreen(),
    CatogeryScreen(),
=======
  RxInt currentIndex=0.obs;


  final tabs=[
    HomeScreen(),
    CategoryScreen(),
>>>>>>> Stashed changes
    FavouriteScreen(),
    SettingScreen(),
  ].obs;

  final title=[
<<<<<<< Updated upstream
    "Health APP",
    "Catogeries",
    "Favourities",
    "Setting",
  ].obs;
=======
    "First Health",
    "Catogeries",
    "Favourities",
    "Settings",
  ].obs;

>>>>>>> Stashed changes
}