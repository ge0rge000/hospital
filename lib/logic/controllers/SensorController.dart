import 'package:get/get.dart';
import 'package:helath/model/SensorSpecifyModel.dart';
import '../../model/Sensor_model.dart';

import '../../services/sensor_services.dart';

class SensorController extends GetxController{

  var sensorslists=<SensorModel>[].obs;
  var sensorsspecify=<SensorSpecifyModel>[].obs;
  var isloading=true.obs;
  var idsensor=Get.arguments;
    @override
  void onInit() {
    super.onInit();
    getSensors();
    getspecifysensor();
  }
  void getSensors()async{

    var sensors= await SensorService.getSensors();
    try{
      isloading(true);
        if(sensors.isNotEmpty){
        sensorslists.addAll(sensors);
        }
    }finally{
      isloading(false);
    }
  }
  void getspecifysensor()async{
  print(";sdadsadad");

    var sensor= await SensorService.getspecifysensor();
    try{
      isloading(true);
      if(sensor!=null){
        sensorsspecify.add(sensor);
      }
    }finally{
      isloading(false);
    }
  }




}