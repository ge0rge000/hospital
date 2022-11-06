



import 'package:get/instance_manager.dart';
<<<<<<< Updated upstream

import '../controllers/main_controller.dart';
import '../controllers/settings_controller.dart';
=======
import 'package:helath/logic/controllers/main_controller.dart';
>>>>>>> Stashed changes

class MainBinding extends Bindings{
  @override
  void dependencies() {
<<<<<<< Updated upstream
    Get.put(MainController());
    Get.put(SettingController());
=======
   Get.put(MainController());
>>>>>>> Stashed changes
  }
}