import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helath/logic/controllers/auth_controller.dart';

import '../../../utils/theme.dart';
import '../text_utils.dart';


class CheckWidget extends StatelessWidget {
   CheckWidget({Key? key}) : super(key: key);
  final controller=Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        builder:(_){
      return Row(
        children: [
          InkWell(
            onTap: (){
              controller.checkbox();
            },
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color:Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
          child: controller.isCheckbox ?Icon(Icons.check,color: mainColor,size: 30,):Container(),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Row(
            children: [
              TextUtils(fontSize: 16, text: 'I accept ', fontWeight: FontWeight.normal, color: Colors.black
              ),
              TextUtils(fontSize: 16, text: 'terms & conditions', fontWeight: FontWeight.normal, color: Colors.black
                ,decoration: TextDecoration.underline,),
            ],
          )
        ],
      );
    });
  }
}
