
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/sensor/image_sensor.dart';


class Sensor_detail extends StatelessWidget {


  const Sensor_detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 35,),
            SizedBox(height: 35,),
            Image.network('https://picsum.photos/250?image=9'),

          ],
        ),
      ),
    );
  }
}
