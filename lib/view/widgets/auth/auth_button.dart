import 'package:flutter/material.dart';
import 'package:helath/view/widgets/text_utils.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const AuthButton ({required this.onPressed,required this.text,Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.lightBlueAccent,
        minimumSize: const Size(360,50)
      ),
        onPressed: onPressed,
        child: TextUtils(
       color: Colors.white,
          text: "Sign Up",
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ));
  }
}
