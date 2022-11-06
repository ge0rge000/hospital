import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helath/routes/routes.dart';
import 'package:helath/view/screens/welcome_screen.dart';

import 'view/screens/sesnors/sensor_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'one-health',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(),
      initialRoute: AppRoutes.welcome,
      getPages:
        AppRoutes.routes
      ,
    );
  }
}

