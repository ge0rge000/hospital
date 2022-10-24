import 'dart:convert';

import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';


import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:helath/utils/api_endpoints.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../routes/routes.dart';


class RegisterController extends GetxController{
  static final TextEditingController namecontroller=TextEditingController();
  static final TextEditingController mobilephone=TextEditingController();
  static final TextEditingController address=TextEditingController();


  static  final Future<SharedPreferences> _prefs=SharedPreferences.getInstance();
  static  Future<void> registerwithmobile() async
  {
     var device =DeviceInfoPlugin();

       var andriodinfo=await device.androidInfo;


    var headers={'Content-Type':'application/json'};
    try{
      var url=Uri.parse(ApiEndPoints.baseURl+ApiEndPoints.authEndPoints.register);
      Map body={
        'name':namecontroller.text,
        'mobile_phone':mobilephone.text,
        'address':address.text,
        'device_id':andriodinfo.id
      };
      http.Response response=await http.post(url,body: jsonEncode(body),headers: headers);
      if (response.statusCode==200){
        final json =jsonDecode(response.body);
        var token=json['token'];
        print(token);
        final SharedPreferences? prefs =await _prefs;
        await prefs?.setString('token', token);
        namecontroller.clear();
        mobilephone.clear();
        address.clear();
        print("yes");
        Get.offNamed(Routes.mainscreen);
      }else{
        print("no register");
      }
    }catch(e){
      print(e);
    }
  }


}