import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:helath/logic/controllers/main_controller.dart';
import 'package:helath/logic/controllers/settings_controller.dart';


class SettingBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(MainController());
    Get.put(SettingController());
  }
}