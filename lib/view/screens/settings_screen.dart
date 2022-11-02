import 'package:flutter/material.dart';
import 'package:helath/utils/theme.dart';
import 'package:helath/view/widgets/text_utils.dart';

import '../widgets/settings/logout_widget.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        padding: const EdgeInsets.all(24),
        children: [
          //ProfileImage()
      const SizedBox(height: 10,),
          Divider(color: Colors.grey,thickness: 2,),
          const SizedBox(height: 20,),
          TextUtils(fontSize: 18, text: "General", fontWeight: FontWeight.bold, color: mainColor,),
          const SizedBox(height: 20,),
          //Language Widget()
          const SizedBox(height: 20,),
          LogoutWidget()
        ],
      ) ,
    );
  }
}
