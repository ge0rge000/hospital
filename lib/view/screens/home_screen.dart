import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helath/utils/theme.dart';
import 'package:helath/view/widgets/text_utils.dart';

import '../widgets/sensor/Sensor_Items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDark;
    return Scaffold(
      backgroundColor: Colors.white,
    body:Column(
      children: [
        Container(
          width: double.infinity,
          height: 180,
          decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextUtils(fontSize: 25, text: "Go", fontWeight: FontWeight.bold, color: Colors.white),
                        const SizedBox(height: 5,),
                        TextUtils(fontSize: 30, text: "Sensors", fontWeight: FontWeight.bold, color: Colors.black,fontFamily:FontStyle.normal),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset('assets/images/dr.png',
                      width:150,
                      height: 130,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.topLeft,
            child: TextUtils(
                fontSize: 20,
                text:"Sensors" ,
                fontWeight: FontWeight.w500,
                color: Get.isDarkMode?Colors.white:Colors.black,

            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        SensorItems(),

      ],
    )
    );
  }
}
