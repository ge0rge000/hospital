
import 'package:get/get.dart';

import '../../model/PatientReadModel.dart';
import '../../services/sensor_services.dart';
class PatientReadController extends GetxController{
  var readinglist=<PatientReadModel>[].obs;
  var isloading=true.obs;
  var data = Get.arguments;


  @override
  void onInit() {
    super.onInit();
    print(data);
    getreadingpatient(data[0]['id_patient'],data[1]['id_sensor']);
  }
  void getreadingpatient(patiend_id,sensor_id)async{


    var readings= await SensorService.getreading(patiend_id,sensor_id);

    try{
      isloading(true);
      if(readings.isNotEmpty){

        readinglist.addAll(readings);

      }
    }finally{

      isloading(false);
    }
  }
}