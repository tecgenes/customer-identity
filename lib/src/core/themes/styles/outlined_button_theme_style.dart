import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OutlinedButtonThemeStyle{
  static outlinedButtonStyle(Color color){
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        maximumSize: MaterialStateProperty.all<Size>(
          Size(Get.width * 0.90, Get.height * 0.07),
        ),
        minimumSize: MaterialStateProperty.all<Size>(
          Size(Get.width * 0.90, Get.height * 0.07),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Get.width * 0.04),
            side: BorderSide(
              style: BorderStyle.solid,
              color: color,
              width: 1
            )
          ),
        ),

      )
    );
  }
}