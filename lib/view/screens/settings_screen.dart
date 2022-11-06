import 'package:flutter/material.dart';
<<<<<<< Updated upstream
import 'package:helath/utils/theme.dart';
import 'package:helath/view/widgets/text_utils.dart';

import '../widgets/settings/logout_widget.dart';

=======
>>>>>>> Stashed changes
class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
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
=======
    return Center(
      child: Text('SettingScreen',style: TextStyle(color: Colors.white),),
>>>>>>> Stashed changes
    );
  }
}
