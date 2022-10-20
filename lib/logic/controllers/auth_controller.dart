import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';


class AuthController extends GetxController{
  bool isCheckbox=false;
  void checkbox(){
    isCheckbox=! isCheckbox;
    update();
  }
}