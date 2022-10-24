import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:helath/utils/api_endpoints.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController{
  final TextEditingController namecontroller=TextEditingController();
  final TextEditingController mobilephone=TextEditingController();
  final TextEditingController address=TextEditingController();
  ///getx update
  bool isCheckbox=false;
  void checkbox(){
    isCheckbox=! isCheckbox;
    update();
  }


}