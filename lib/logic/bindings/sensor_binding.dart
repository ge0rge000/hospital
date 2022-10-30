import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:helath/logic/controllers/SensorController.dart';

class SensorBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(SensorController());
  }
}