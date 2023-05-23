import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpInputDecoration{
  static InputDecoration otpDecoration =  InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 15),
    border:  OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: Get.theme.primaryColor),
    ),
    focusedBorder:  OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: Get.theme.primaryColor),
    ),
    enabledBorder:  OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: Get.theme.primaryColor),
    ),
  );
}