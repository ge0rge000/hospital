



import 'package:get/instance_manager.dart';
import 'package:helath/logic/controllers/SensorController.dart';
import 'package:helath/logic/controllers/settings_controller.dart';

import '../controllers/main_controller.dart';

class MainBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(SensorController());
    Get.put(MainController());




  }
}