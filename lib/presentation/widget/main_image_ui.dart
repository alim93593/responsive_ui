// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ImageUi extends StatelessWidget {
  ImageUi({Key? key, required this.image}) : super(key: key);
  String image;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(image),
      fit: BoxFit.cover,
      width: double.infinity,
    );
  }
}
