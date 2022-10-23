



import 'package:get/instance_manager.dart';

import '../controllers/main_controller.dart';

class MainBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>MainController());
  }
}