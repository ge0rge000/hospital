import 'package:get/get.dart';

import '../view/screens/welcome_screen.dart';

class AppRoutes{

  static const welcome =Routes.welcomeScreen;
  static final routes=[
    GetPage(name: '/welcomescreen', page:()=> const WelcomeScreen()),

  ];
}

class Routes{
  static const  welcomeScreen='/welcomeScreen';

}