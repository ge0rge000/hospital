

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helath/utils/theme.dart';
import 'package:helath/view/screens/sesnors/sensor_detail.dart';
import 'package:helath/view/widgets/text_utils.dart';

import '../../../logic/controllers/SensorController.dart';


class SensorItems extends StatelessWidget {
   SensorItems({Key? key}) : super(key: key);
  final controller =Get.find<SensorController>();
  @override
  Widget build(BuildContext context) {
    return   Obx(
            (){
          if(controller.isloading.value){
            return Center(
              child: CircularProgressIndicator(
                color: mainColor,
              ),
            );
          }else{
            return  Expanded(
              child: GridView.builder(
                itemCount: controller.sensorslists.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent:200,
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 9.0,
                  crossAxisSpacing: 6.0,

                ),
                itemBuilder: (BuildContext context,  index) {
                  return buildSensorItems(image: controller.sensorslists[index].imageSensor, name: controller.sensorslists[index].nameSensor,
                      id_sensor: controller.sensorslists[index].id.toString());
                },
              ),
            );
          }
        }
    );

  }

}
Widget buildSensorItems(

{
  required String image,required String name,required String id_sensor
}){
  return GestureDetector(
    onTap: (){
    Get.to(Sensor_detail(),arguments:  id_sensor);
    },

    child: Padding(
      padding: EdgeInsets.all(5.0),
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 3.0,
              blurRadius: 5.0,
            ),
          ],
        ),
        child:  SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceAround,


              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){},
                      icon: Icon(Icons.favorite_border_outlined,
                        color: Colors.black,
                      ),),
                    IconButton(onPressed: (){},
                      icon: Icon(Icons.add,
                        color: Colors.black,
                      ),),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.network('https://hospital.lechefhany.com/sensors/sensorsimages/'+image,
                  fit: BoxFit.cover,
                    height: 40,
                  ),
                ),
                SizedBox(height: 5,),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(padding: EdgeInsets.only(left: 3,right: 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextUtils(
                                  fontSize: 13,
                                  text: name,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),

                            ],
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
        ),
        ),
      ),
    
  );
}



