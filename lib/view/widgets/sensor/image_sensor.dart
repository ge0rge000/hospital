import 'package:flutter/material.dart';


class ImageSensor extends StatelessWidget {
  final String ImageUrl;
  const ImageSensor({required this.ImageUrl,Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
      child:
      Image.network(
          ImageUrl)
    );
  }
}
