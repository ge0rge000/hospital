import 'package:flutter/material.dart';
import 'package:helath/utils/theme.dart';
import 'package:helath/view/widgets/text_utils.dart';

class ContainerUnder extends StatelessWidget {
  final String text;
  final String textenter;
  final Function()? onPressed  ;

  const ContainerUnder({Key? key, required this.text,  required this.textenter, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextUtils(fontSize: 18, text: text, fontWeight: FontWeight.bold, color: Colors.white),
          TextButton(onPressed: onPressed,
            child:   TextUtils(fontSize: 18, text: textenter, fontWeight: FontWeight.bold, color: Colors.white,decoration: TextDecoration.underline,),
          )
        ],
      ),
    );
  }
}
