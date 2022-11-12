import 'package:get/get.dart';
import '../../model/Sensor_model.dart';

import '../../services/sensor_services.dart';

class SensorController extends GetxController{
  var sensorslists=<SensorModel>[].obs;
   var isloading=true.obs;
  var idsensor=2;
    @override
  void onInit() {
    super.onInit();
    getSensors();

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





}