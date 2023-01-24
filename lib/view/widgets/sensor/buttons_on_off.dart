import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helath/view/widgets/text_utils.dart';

class button_on_off extends StatelessWidget {
  final double fontsize;
  final String text;
  final FontWeight fontWeight;
  final Color color;
  final Color colorbtn;
  final Function ?onpress;


  const button_on_off({Key? key,
    required this.fontsize,
    required this.text,
    required this.fontWeight,
    required this.color, required this.colorbtn,  this.onpress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(

        child:  ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary:colorbtn,
              minimumSize: Size(5, 50),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
            onPressed: () {

            },
      child:
      TextUtils(fontSize: fontsize,
        text: text, fontWeight: fontWeight,
        color: color,),


        ));
  }
}
