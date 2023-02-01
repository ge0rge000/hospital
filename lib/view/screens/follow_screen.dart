import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helath/utils/theme.dart';
import 'package:helath/view/widgets/text_utils.dart';

import '../../routes/routes.dart';

class FollowScreen extends StatelessWidget {
  const FollowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              Get.toNamed(Routes.doctorsscreen);
            },
            child: Container(
              width:MediaQuery.of(context).size.width/3,
              height:MediaQuery.of(context).size.height/5,
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 4,
                    offset: Offset(4, 8), // Shadow position
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.person_search_sharp,color:Colors.white,size: 50,),
                    SizedBox(height: 15,),
                    TextUtils(fontSize: 22, text: "Doctors",
                        fontWeight: FontWeight.w500, color: Colors.white)
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              print("Container clicked");
            },
            child: Container(
              width:MediaQuery.of(context).size.width/3,
              height:MediaQuery.of(context).size.height/5,
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 4,
                    offset: Offset(4, 8), // Shadow position
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.check_box_outlined,color:Colors.white,size: 50,),
                    SizedBox(height: 15,),
                    TextUtils(fontSize: 22, text: "appointment",
                        fontWeight: FontWeight.w500, color: Colors.white)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
