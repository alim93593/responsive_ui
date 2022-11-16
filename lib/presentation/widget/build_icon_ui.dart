// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BuildIconUi extends StatelessWidget {
  BuildIconUi({Key? key,required this.iconData,required this.textName}) : super(key: key);
  IconData iconData;
  String textName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CircleAvatar(
        radius: 55,
        child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(80),
            ),
            child: SingleChildScrollView(
              child: Column(
                children:  [
                  Icon(
                    iconData,
                    size: 50,
                    color: Colors.blue,
                  ),
                  Text(
                    textName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
