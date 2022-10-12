import 'package:flutter/material.dart';

import '../text_utils.dart';


class CheckWidget extends StatelessWidget {
  const CheckWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: (){

          },
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color:Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),

          ),
        ),
        SizedBox(
          width: 10,
        ),
        Row(
          children: [
            TextUtils(fontSize: 16, text: 'I accept ', fontWeight: FontWeight.normal, color: Colors.black.withOpacity(0.6)
              ),
            TextUtils(fontSize: 16, text: 'terms & conditions', fontWeight: FontWeight.normal, color: Colors.black.withOpacity(0.6)
              ,decoration: TextDecoration.underline,),
          ],
        )
      ],
    );
  }
}
