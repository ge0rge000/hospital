import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helath/view/widgets/text_utils.dart';

import '../../../logic/controllers/PatientReadController.dart';
import '../../../utils/theme.dart';

class SensorReading extends StatelessWidget {
   SensorReading({Key? key}) : super(key: key);
  PatientReadController controller=Get.put(PatientReadController());

  @override
  Widget build(BuildContext context) {
    return  Obx(
            (){
          if(controller.isloading.value){
            return Center(
              child: CircularProgressIndicator(
                color: mainColor,
              ),
            );
          }else {
            return
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        margin:EdgeInsets.only(top: 20.0),
                        child: TextUtils(fontSize: 20, text: Get.arguments[2]['namesensor'],
                          fontWeight: FontWeight.bold, color: mainColor,),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          itemExtent: 80.0,
                          shrinkWrap: true,
                          itemCount: controller.readinglist.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Table(
                                  border: TableBorder.symmetric(inside: BorderSide(width: 1, color: mainColor),
                                      outside: BorderSide(width: 1, color:mainColor)),

                                  children: [

                                    TableRow(children: [
                                      TableCell(child: Text("First Read")),
                                      TableCell(child: Text("Secound Read")),
                                      TableCell(child:  Text("Time and Date"))
                                    ])
                                  ],
                                ),
                                Table(
                                  border:TableBorder.symmetric(inside:
                                  BorderSide(width: 1, color: mainColor),
                                          outside: BorderSide(width: 1, color:mainColor)),

                                  children: [

                                TableRow(children: [
                                TableCell(child: Text(controller.readinglist[index].firstRead)),
                                  TableCell(child: Text(controller.readinglist[index].secoundRead)),
                                  TableCell(child: Text(controller.readinglist[index].createdAt.toString()))

                                ])
                                ],
                                ),
                              ],
                            );
                          },


                        ),
                      ),
                    ],
                  ),
                ),
              );


          }
            }

    );
  }
}
