

import 'package:flutter/material.dart';

class AuthTextFromFiled extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType type_keyboard;
  final Function validator;
  final Widget prefixIcon;
  final Widget ? suffixIcon;
  final String hintText;
  const AuthTextFromFiled(
      {required this.controller,
    required this.obscureText ,
    required this.type_keyboard ,Key? key,
    required this.validator,
    required this.prefixIcon,
     this.suffixIcon,
    required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      cursorColor: Colors.black,
      keyboardType: type_keyboard,
      validator: (value)=>validator(value),
       decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        prefixIcon:prefixIcon,
        suffixIcon:suffixIcon,
        hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.black45,
              fontSize: 16,
              fontWeight: FontWeight.w500,
      ),
    filled: true,
         enabledBorder: OutlineInputBorder(
           borderSide: BorderSide(
             color: Colors.white,
           ),
           borderRadius: BorderRadius.circular(10)
         ),
           focusedBorder: OutlineInputBorder(
               borderSide: BorderSide(
                 color: Colors.white,
               ),
               borderRadius: BorderRadius.circular(10)
           ),
           errorBorder: OutlineInputBorder(
               borderSide: BorderSide(
                 color: Colors.white,
               ),
               borderRadius: BorderRadius.circular(10)
           )
    ));
  }
}
