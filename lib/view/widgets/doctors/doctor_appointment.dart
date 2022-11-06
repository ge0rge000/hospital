import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helath/utils/theme.dart';
import 'package:helath/view/widgets/text_utils.dart';
import '../../../logic/controllers/settings_controller.dart';



class DoctorAppointMent extends StatelessWidget {
  DoctorAppointMent({Key? key}) : super(key: key);
  final controller=Get.find<SettingController>();


   @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingController>(builder: (_)=> Material(
      color: Colors.transparent,
      child: GestureDetector(
        onTap: (){
          print("Container clicked");
        },
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white70,
              ),
              child: const Icon(
                Icons.timer,
                color: mainColor,
              ),
            ),
            const SizedBox(width: 20,),
            TextUtils(fontSize: 18, text: 'Add Appointments', color: Colors.black, fontWeight: FontWeight.bold,),
          ],
        ),
      ),
    ) );
  }
}
