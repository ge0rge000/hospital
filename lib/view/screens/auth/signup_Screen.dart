import 'package:flutter/material.dart';
import 'package:helath/view/widgets/text_utils.dart';

import '../../widgets/auth/auth_text_from_field.dart';
import '../../widgets/auth/check_widget.dart';
class SignUpScreen extends StatelessWidget {
   SignUpScreen({Key? key}) : super(key: key);
  final TextEditingController namecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height/1.3,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 25,
                  right: 25,
                  top: 40
                ),
                child:Column(
                  children: [
                    Row(
                      children: [
                        TextUtils(fontSize: 28, text: 'SIGN', fontWeight: FontWeight.w500, color: Colors.lightBlueAccent,),
                        TextUtils(fontSize: 28, text: ' UP', fontWeight: FontWeight.w500, color: Colors.black,)
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    AuthTextFromFiled(
                      controller: namecontroller,
                      obscureText: false,
                      type_keyboard: TextInputType.text
                      , validator: (){
                    },
                      prefixIcon: Icon(Icons.drive_file_rename_outline,color: Colors.lightBlueAccent,), hintText: 'name',),
                    SizedBox(height: 25,),
                    AuthTextFromFiled(
                      controller: namecontroller,
                      obscureText: false,
                      type_keyboard: TextInputType.number
                      , validator: (){
                    },
                      prefixIcon: Icon(Icons.mobile_friendly_sharp,color: Colors.lightBlueAccent,), hintText: 'mobile phone',),
                    SizedBox(height: 25,),
                    AuthTextFromFiled(
                      controller: namecontroller,
                      obscureText: false,
                      type_keyboard: TextInputType.text
                      , validator: (){
                    },
                      prefixIcon: Icon(Icons.home,color: Colors.lightBlueAccent,), hintText: 'address',),
                    SizedBox(height: 35,),
                    CheckWidget()

                  ],
                ) ,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
