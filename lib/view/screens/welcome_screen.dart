import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/routes.dart';
import '../../utils/theme.dart';
import '../widgets/text_utils.dart';
import 'auth/login_screen.dart';
import 'auth/signup_Screen.dart';
import 'sesnors/sensor_detail.dart';

class WelcomeScreen extends StatelessWidget {

  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor:Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset('assets/images/logobegin.jpg',
              fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              height: 60,
           width: 240,
           decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.8),
          borderRadius: BorderRadius.circular(5)
              ),
              child: Center(
                child: TextUtils(
                  text: "welcome",
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 240,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Center(
                child: TextUtils(
                  text: "Hospital",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: logOutSettings,
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 12
                    )),
                onPressed: (){
                  Get.offNamed(Routes.loginscreen);
            }, child: TextUtils(
              text: "Get Start",
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextUtils(fontSize: 15, text: "Donn't have an account", fontWeight: FontWeight.normal, color: Colors.black,decoration: TextDecoration.underline),
              TextButton(onPressed: (){
                Get.offNamed(Routes.signupscreen);
              }, child: TextUtils(text: 'Sign Up',color: Colors.black,
                fontWeight: FontWeight.normal,fontSize: 15,decoration: TextDecoration.underline,))
            ],
          )
          ],
        ),
      ),
    ));
  }
}
