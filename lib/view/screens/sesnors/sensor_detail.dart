
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helath/model/Sensor_model.dart';

import '../../widgets/sensor/image_sensor.dart';


class Sensor_detail extends StatelessWidget {

  final SensorModel sensorModel;


  const Sensor_detail({Key? key, required this.sensorModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           ImageSlider(
             imageUrl: sensorModel.imageSensor,
           ),



          ],
        ),
      ),
    );
  }
}
