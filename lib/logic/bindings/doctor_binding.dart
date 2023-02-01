
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:helath/logic/controllers/doctor_controller.dart';

class DoctorBinding extends Bindings{
  @override
  void dependencies() {

    Get.put(DoctorController());

  }
}