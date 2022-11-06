
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helath/logic/controllers/SensorController.dart';
import 'package:helath/model/Sensor_model.dart';

import '../../../utils/theme.dart';




class Sensor_detail extends StatelessWidget {

 Sensor_detail({ Key? key,}) : super(key: key);
final controller =Get.find<SensorController>();

  @override
  Widget build(BuildContext context) {
    var idsensor=Get.arguments;

    return Obx(
            (){
  if(controller.isloading.value) {
    return Center(
      child: CircularProgressIndicator(
        color: mainColor,
      ),
    );
  }else{
    return Scaffold(

      body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              controller.sensorsspecify[0].nameSensor, style: TextStyle(color: Colors.black, fontSize: 50),),
          ],

        ),
      ),
    );
  }
   }
    );
}}
