// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppElevatedButtonWidget extends GetView {
  String title;
  void Function()? onPressed;
  bool? isOutlined;
  bool? hasIcon;
  String? iconAsset;
  Color? color;

  AppElevatedButtonWidget({
    super.key,
    required this.onPressed,
    required this.title,
    this.isOutlined = false,
    this.iconAsset = 'assets/icons/google.png',
    this.hasIcon = false,

    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return isOutlined == false
        ? ElevatedButton(
            onPressed: onPressed,
            style:
                ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
            child: Text(
              title,
              style:
                  context.textTheme.titleLarge!.copyWith(color: Colors.white),
            ),
          )
        : OutlinedButton(
            onPressed: onPressed,
            child: hasIcon == false
                ? Text(title, style: context.textTheme.titleLarge)
                : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(title, style: context.textTheme.titleLarge),
                Image.asset(iconAsset ?? '', width: Get.width * 0.09,)
              ],
            ),
          );
  }
}
