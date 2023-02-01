

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../model/DoctorModel.dart';
import '../../services/DoctorServices.dart';

class DoctorController extends GetxController{

  var doctorslists=<DoctorModel>[].obs;
  var isloading=true.obs;
  @override
  void onInit() {
    super.onInit();
    getdoctors();
  }

  void getdoctors()async{
    var doctors=await DoctorService.getDoctors();
    try{
      isloading(true);
      if(doctors.isNotEmpty){
        doctorslists.addAll(doctors);
      }
    }finally{
      isloading(false);
    }
}

}