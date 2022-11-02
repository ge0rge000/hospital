import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helath/utils/theme.dart';
import 'package:helath/view/widgets/text_utils.dart';
import '../../../logic/controllers/settings_controller.dart';


class LogoutWidget extends StatelessWidget {
   LogoutWidget({Key? key}) : super(key: key);
  final controller=Get.find<SettingController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingController>(builder: (_)=> Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){
          Get.defaultDialog(
              title: "Logout From App",
              titleStyle: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
              middleText: "Are you sure to need logout",
              middleTextStyle: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
              backgroundColor: Colors.grey,
              radius: 10,
              textCancel: "NO",
              cancelTextColor: Colors.white,
              textConfirm: "YES",
              confirmTextColor: Colors.white,
              onCancel: (){
                Get.back();
              },
              onConfirm: (){
                print("he");
              },
              buttonColor: mainColor
          );
        },
        splashColor: mainColor.withOpacity(0.4),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 20,),
            TextUtils(fontSize: 18, text: 'Log out', color: Colors.black, fontWeight: FontWeight.bold,),
          ],
        ),
      ),
    ) );
  }
}
