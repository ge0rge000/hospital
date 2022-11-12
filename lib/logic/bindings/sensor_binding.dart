
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:helath/logic/controllers/SensorDetailController.dart';

class SensorBinding extends Bindings{
  @override
  void dependencies() {

    Get.put(SensorDetailController());

  }
}