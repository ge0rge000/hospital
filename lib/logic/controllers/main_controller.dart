


import 'package:get/get.dart';
import 'package:helath/view/screens/home_screen.dart';
import 'package:helath/view/screens/sensor_read_screen.dart';
 import 'package:helath/view/screens/sesnors/favourite_screen.dart';


class MainController extends GetxController{

  RxInt currentIndex=0.obs;

  final tabs=[
    HomeScreen(),
    SensorReadScreen(),
    FavouriteScreen(),

  ].obs;

  final title=[
    "Health APP",
    "sensors Readings",
    "Favourities",
  ].obs;
}