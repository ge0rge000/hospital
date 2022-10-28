import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helath/view/widgets/text_utils.dart';
import '../../../logic/apis/registercontroller.dart';
import '../../../logic/controllers/auth_controller.dart';
import '../../../routes/routes.dart';
import '../../../utils/my_string.dart';
import '../../../utils/theme.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/auth_text_from_field.dart';
import '../../widgets/auth/check_widget.dart';
import '../../widgets/auth/container_under.dart';
class SignUpScreen extends StatelessWidget {
   SignUpScreen({Key? key}) : super(key: key);
   final fromKey=GlobalKey<FormState>();
   final controller=Get.find<AuthController>();

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
              child: Form(
                key: fromKey,
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
                          TextUtils(fontSize: 28, text: 'SIGN', fontWeight: FontWeight.w500, color:mainColor,),
                          TextUtils(fontSize: 28, text: ' UP', fontWeight: FontWeight.w500, color:  Colors.black,)
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      AuthTextFromFiled(
                        controller: RegisterController.namecontroller,
                        obscureText: false,
                        type_keyboard: TextInputType.text
                        , validator: (value){
                            if(value.toString().length<=2|| !RegExp(validationName).hasMatch(value)){
                              return 'Enter valid Name';
                            }else{
                              return null;
                            }
                      },
                        prefixIcon: Icon(Icons.drive_file_rename_outline,color:mainColor,), hintText: 'name',),
                      SizedBox(height: 25,),
                      AuthTextFromFiled(
                        controller: RegisterController.mobilephone,
                        obscureText: false,
                        type_keyboard: TextInputType.number
                        , validator: (value){
                       if (value.length == 0) {
                       return 'Please enter mobile number';
                       }
                       else if (!RegExp(mobile_phone).hasMatch(value)) {
                       return 'Please enter valid mobile number';
                       }  else{
                         return null;
                       }
                         },
                        prefixIcon: Icon(Icons.mobile_friendly_sharp,color:mainColor,), hintText: 'mobile phone',),
                      SizedBox(height: 25,),
                  AuthTextFromFiled(
                  controller: RegisterController.address,
                  obscureText: false,
                  type_keyboard: TextInputType.text
                    , validator: (value){
              if(value.toString().length<=2|| !RegExp(validationName).hasMatch(value)){
              return 'Enter valid Name';
              }else{
              return null;
              }
              },
                    prefixIcon: Icon(Icons.home,color:mainColor,),
                    hintText: 'address',),
                      SizedBox(height: 35),
                      CheckWidget(),
                      SizedBox(height: 35,),

                            controller.isLoading==false?
                            AuthButton(onPressed:  RegisterController.registerwithmobile, text: 'sign',):
                            CircularProgressIndicator(),






                    ],
                  ) ,
                ),
              ),
            ),
            ContainerUnder(text: 'Already have an account', textenter: 'Log In',onPressed: (){
              Get.offNamed(Routes.loginscreen);
            },)

          ],
        ),
      ),
    ));
  }
}
