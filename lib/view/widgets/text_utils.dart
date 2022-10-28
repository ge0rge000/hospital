import 'package:flutter/material.dart';

class TextUtils extends StatelessWidget {
   final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
   final FontStyle? fontFamily;
   final TextDecoration? decoration;
  TextUtils({required this.fontSize,required this.text,required this.fontWeight,Key? key, required this.color,  this.decoration ,  this.fontFamily ,   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text( text,style:
    TextStyle(
      decoration: decoration,
    color: color,
        fontSize:fontSize,
        fontWeight: FontWeight.bold,
        fontStyle: fontFamily
    ));
  }
}
