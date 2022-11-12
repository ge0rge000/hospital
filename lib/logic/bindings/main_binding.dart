



import 'package:get/instance_manager.dart';
import 'package:helath/logic/controllers/SensorController.dart';
import 'package:helath/logic/controllers/SensorDetailController.dart';

import '../controllers/main_controller.dart';
import '../controllers/settings_controller.dart';

class MainBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(MainController());
    Get.put(SensorController());


  }
}