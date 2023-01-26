import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helath/routes/routes.dart';
import 'package:helath/utils/theme.dart';
import 'package:helath/view/screens/PatientRead_screen.dart';

import '../../logic/controllers/SensorController.dart';
import '../../logic/local/shared.dart';

class SensorReadScreen extends StatelessWidget {
   SensorReadScreen({Key? key}) : super(key: key);
   final controller =Get.find<SensorController>();

  var url_photo='https://hospital.lechefhany.com/sensors/sensorsimages/';
  @override
  Widget build(BuildContext context) {
    return    Obx((){
      if (controller.isloading.value) {
        return Center(
          child: CircularProgressIndicator(
            color: mainColor,
          ),
        );
      } else {
        return   Scaffold(
          body: ListView.builder(
              itemExtent: 80.0,
              shrinkWrap: true,
              itemCount: controller.sensorslists.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(

                    leading:  Image.network(url_photo+controller.sensorslists[index].
                    imageSensor,width: 40,
                      height: 50,
                    ),
                    trailing:  ElevatedButton(

                      onPressed: () => Get.toNamed(Routes.patientread,
                          arguments: [
                       {"id_patient":SharedHelper.get(key: 'id').toString()},
                        {"id_sensor":controller.sensorslists[index].id.toString()}
                          ,{"namesensor":controller.sensorslists[index].nameSensor.toString()}]),
                      child: Text('Readings'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:mainColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          // <-- Radius
                        ),

                      ),
                    ),
                    title: Text(controller.sensorslists[index].
                    nameSensor));

              }),
        );
      }});

  }
}
