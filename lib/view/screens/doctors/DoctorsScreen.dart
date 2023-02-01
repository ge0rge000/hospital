import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helath/logic/controllers/doctor_controller.dart';

import '../../../utils/theme.dart';
import '../../widgets/text_utils.dart';


class DoctrorsScreen extends StatelessWidget {
   DoctrorsScreen({Key? key}) : super(key: key);
  final controller =Get.find<DoctorController>();
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
            backgroundColor:Colors.grey.shade100,
          body: ListView.builder(
              shrinkWrap: true,
              itemCount: controller.doctorslists.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                  )),
                    child: Row(
                     children: [
                       Icon(Icons.person,size: 80,),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                           child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                               TextUtils(fontSize: 25,
                                   text: controller.doctorslists[index].name,
                                   fontWeight: FontWeight.bold, color:  mainColor),
                      TextUtils(fontSize: 20,
                          text: controller.doctorslists[index].address,
                          fontWeight: FontWeight.w300, color: Colors.black),
                               TextUtils(fontSize: 20,
                                   text: controller.doctorslists[index].mobilePhone,
                                   fontWeight: FontWeight.w300, color: Colors.black),
                             ],
                           ),
                         ),
                       )
                     ],
                    ),
                  ),
                );
              }),
        );
      }});

  }
}
