import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:helath/view/widgets/text_utils.dart';
 import '../../../logic/controllers/auth_controller.dart';
import '../../../routes/routes.dart';
import '../../../services/apis/logincontroller.dart';
import '../../../utils/my_string.dart';
import '../../../utils/theme.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/auth_text_from_field.dart';
import '../../widgets/auth/container_under.dart';
class LoginScreen extends StatelessWidget {
    LoginScreen({Key? key}) : super(key: key);
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
                          TextUtils(fontSize: 28, text: 'LOG', fontWeight: FontWeight.w500, color:mainColor,),
                          TextUtils(fontSize: 28, text: ' IN', fontWeight: FontWeight.w500, color:  Colors.black,)
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),


                      AuthTextFromFiled(
                        controller: LoginController.mobilephone,
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

                      SizedBox(height: 35),

                      SizedBox(height: 35,),


                      controller.isLoading==false?
                      AuthButton(onPressed: LoginController.loginwithmobile, text: 'login',):
                      CircularProgressIndicator(),

                    ],
                  ) ,
                ),
              ),
            ),
            ContainerUnder(text: 'Donnot have an account?', textenter: 'Sign Up',onPressed: (){
              Get.offNamed(Routes.signupscreen);
            },)

          ],
        ),
      ),
    ));
  }
}
