import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:helath/utils/api_endpoints.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:device_info_plus/device_info_plus.dart';
import '../../logic/controllers/auth_controller.dart';
import '../../logic/local/shared.dart';
import '../../routes/routes.dart';
import 'package:get_storage/get_storage.dart';

class LogoutController extends GetxController{





  static Future<void> logoutwithmobile() async
  {


    try{
      var headers={'Content-Type':'application/json','token':SharedHelper.get(key: 'token').toString()};
      var url=Uri.parse(ApiEndPoints.baseURl+ApiEndPoints.authEndPoints.logout);

      http.Response response=await http.post(url,headers: headers);
      if (response.statusCode==200){
        final json =jsonDecode(response.body);
        SharedHelper.clearData();
        Get.offNamed(Routes.loginscreen);
      }else{
        print("no login");
      }
    }catch(e){
      print(e);
    }

  }
}


