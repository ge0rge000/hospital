import 'package:get/get.dart';
import 'package:helath/logic/bindings/main_binding.dart';

import '../logic/bindings/auth_binding.dart';
import '../view/screens/auth/login_screen.dart';
import '../view/screens/auth/signup_Screen.dart';
import '../view/screens/main_screen.dart';
import '../view/screens/sesnors/sensor_detail.dart';
import '../view/screens/welcome_screen.dart';

class AppRoutes{

  static const welcome =Routes.welcomeScreen;
  static const loginscreen =Routes.loginscreen;
  static const signupscreen =Routes.signupscreen;
  static const detailsensor =Routes.detailsensor;
  static const mainscreen =Routes.mainscreen;

  static final routes=[
    GetPage(name: Routes.welcomeScreen, page:()=> const WelcomeScreen()),
    GetPage(name: Routes.loginscreen, page:()=> LoginScreen(),binding: AuthBinding()),
    GetPage(name: Routes.signupscreen, page:()=>  SignUpScreen(),bindings: [AuthBinding()]),
    GetPage(name: Routes.detailsensor, page:()=>  Sensor_detail()),
    GetPage(name: Routes.mainscreen, page:()=>  MainScreen(),bindings: [MainBinding()]),

  ];
}

class Routes{
  static const  welcomeScreen='/welcomeScreen';
  static const loginscreen='/loginscreen';
  static const signupscreen='/signupscreen';
  static const detailsensor='/detailsensor';
  static const mainscreen='/mainscreen';

}