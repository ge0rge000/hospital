import 'package:get/get.dart';

import '../logic/bindings/auth_binding.dart';
import '../view/screens/auth/login_screen.dart';
import '../view/screens/auth/signup_Screen.dart';
import '../view/screens/welcome_screen.dart';

class AppRoutes{

  static const welcome =Routes.welcomeScreen;
  static const loginscreen =Routes.loginscreen;
  static const signupscreen =Routes.signupscreen;
  static final routes=[
    GetPage(name: Routes.welcomeScreen, page:()=> const WelcomeScreen()),
    GetPage(name: Routes.loginscreen, page:()=> LoginScreen(),binding: AuthBinding()),
    GetPage(name: Routes.signupscreen, page:()=>  SignUpScreen(),binding: AuthBinding()),

  ];
}

class Routes{
  static const  welcomeScreen='/welcomeScreen';
  static const loginscreen='/loginscreen';
  static const signupscreen='/signupscreen';

}