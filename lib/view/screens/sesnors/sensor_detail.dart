
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helath/logic/controllers/SensorDetailController.dart';
import 'package:helath/view/widgets/text_utils.dart';

import '../../../utils/theme.dart';
import '../../widgets/sensor/buttons_on_off.dart';

class Sensor_detail extends StatelessWidget {
 Sensor_detail({ Key? key,}) : super(key: key);

 SensorDetailController controller=Get.put(SensorDetailController());
 var url_photo="https://hospital.lechefhany.com/sensors/sensorsimages/";
 @override
 Widget build(BuildContext context) {
   return Scaffold(
        body: Obx(
              ()
          {
          if(controller.isloading.value){
            return const Center(
              child: CircularProgressIndicator(
                color: mainColor,
              ),
            );
          }else{
            return ListView.builder(
                itemCount:controller.sensor_detail.length,
                itemBuilder: (context,index){
                  return  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Container(
                            width:MediaQuery.of(context).size.width ,
                          child: Image.network(
                            "$url_photo"+controller.sensor_detail[index].imageSensor,
                            width: MediaQuery.of(context).size.width,height:MediaQuery.of(context).size.height/2 ,),
                        ),
                        SizedBox(height: 10,),
                        ListTile(
                          title: Row(
                            children: <Widget>[
                              button_on_off(fontsize: 25, text: 'ON',
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlueAccent,
                                colorbtn: Colors.white,),
                              SizedBox(width: 10,),
                              button_on_off(fontsize: 25,
                                text: 'OFF',
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                colorbtn: Colors.white,),

                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                       Padding(
                         padding: const EdgeInsets.all(14.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             TextUtils(fontSize: 16, text: "About sensor",
                               fontWeight: FontWeight.w300,
                               color: Colors.black,),
                             SizedBox(height: 10,),

                             TextUtils(fontSize: 12, text: controller.sensor_detail[index].detailSensor,
                               fontWeight: FontWeight.normal,
                               color: Colors.black,)
                           ],
                         ),
                       ),
                        SizedBox(height: 10,),

                        Container(
                           width: 2*MediaQuery.of(context).size.width/5,
                          height: MediaQuery.of(context).size.height/15,
                          decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(padding: EdgeInsets.only(left: 3,right: 2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextUtils(
                                    fontSize: 18,
                                    text: "2526",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),

                              ],
                            ),

                          ),
                        ),
                    ]
                  );
                }
            );
          }
        }

            ,)
   );
 }
}


