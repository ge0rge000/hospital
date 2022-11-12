import 'package:get/get.dart';
import 'package:helath/model/SensorSpecifyModel.dart';
import 'package:helath/services/sensor_services.dart';

class SensorDetailController extends GetxController{
  RxList<SensorSpecifyModel> sensor_detail=RxList<SensorSpecifyModel>();
  var isloading=true.obs;
  var data = Get.arguments;

  @override
   onInit() {
    getspecifysensor(data);
  }
  void getspecifysensor(id)async{

    var sensor= await SensorService.getspecifysensor(id);
    try{
      isloading(true);
      if(sensor!=null){
        sensor_detail.add(sensor);
      }
    }finally{
      isloading(false);
    }
  }




}