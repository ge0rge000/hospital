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

class LoginController extends GetxController{

  static final TextEditingController mobilephone=TextEditingController();




  static Future<void> loginwithmobile() async
  {
    if(mobilephone.text!=null){
      final controller=Get.find<AuthController>();
      controller.fetchData();
      var device =DeviceInfoPlugin();
      var andriodinfo=await device.androidInfo;
      print(andriodinfo.id);
      try{
        var headers={'Content-Type':'application/json'};
        var url=Uri.parse(ApiEndPoints.baseURl+ApiEndPoints.authEndPoints.login);
        Map body={
          'mobile_phone':mobilephone.text,
          'device_id':andriodinfo.id
        };
        http.Response response=await http.post(url,body: jsonEncode(body),headers: headers);
        if (response.statusCode==200){
          final json =jsonDecode(response.body);
          var token=json['token'];
          var type=json['data']['usertype'];
          var id=json['data']['id'];
          print(token);
          SharedHelper.put(key: 'token', value: token);
          SharedHelper.put(key: 'type', value: type);
          SharedHelper.put(key: 'id', value: id.toString());

          print(SharedHelper.get(key: 'id'));
          mobilephone.clear();
          Get.offNamed(Routes.mainscreen);
        }else{
          print("no login");
        }
      }catch(e){
        print(e);
      }
    }
  }
}


