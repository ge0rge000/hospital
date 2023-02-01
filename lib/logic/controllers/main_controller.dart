


import 'package:get/get.dart';
import 'package:helath/view/screens/home_screen.dart';
import 'package:helath/view/screens/sesnors/sensor_read_screen.dart';

import '../../view/screens/follow_screen.dart';




class MainController extends GetxController{

  RxInt currentIndex=0.obs;

  final tabs=[

    HomeScreen(),
    SensorReadScreen(),
    FollowScreen(),

  ].obs;

  final title=[
    "Health APP",
    "sensors Readings",
    "Follow-Screen",

  ].obs;
}