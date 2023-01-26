import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helath/view/widgets/sensor/SensorReading.dart';

import '../../logic/controllers/PatientReadController.dart';
import '../../utils/theme.dart';

class PatientRead extends StatelessWidget {
   PatientRead({Key? key}) : super(key: key);
  PatientReadController controller=Get.put(PatientReadController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SensorReading()
    );

  }
}
