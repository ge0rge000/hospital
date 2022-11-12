
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helath/logic/controllers/SensorDetailController.dart';

import '../../../utils/theme.dart';

class Sensor_detail extends StatelessWidget {
 Sensor_detail({ Key? key,}) : super(key: key);

 SensorDetailController controller=Get.put(SensorDetailController());

 @override
 Widget build(BuildContext context) {
   return Scaffold(
        body: Obx(
              ()
          {
          if(controller.isloading.value){
            return const Center(
              child: CircularProgressIndicator(
                color: mainColor,
              ),
            );
          }else{
            return ListView.builder(
                itemCount:controller.sensor_detail.length,
                itemBuilder: (context,index){
                  return Text(controller.sensor_detail[index].nameSensor);
                }
            );
          }
        }

            ,)
   );
 }
}
