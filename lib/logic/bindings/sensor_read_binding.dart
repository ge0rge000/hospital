



import 'package:get/instance_manager.dart';
import 'package:helath/logic/controllers/PatientReadController.dart';
import 'package:helath/logic/controllers/SensorController.dart';

class SensorReadBinding extends Bindings{
  @override
  void dependencies() {


    Get.put(PatientReadController());



}
}