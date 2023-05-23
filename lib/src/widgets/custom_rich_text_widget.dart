// ignore_for_file: must_be_immutable

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomRichTextWidget extends StatelessWidget {
  String firstText;
  String secondText;
  void Function()? onTap;

  CustomRichTextWidget({super.key, required this.firstText, required this.secondText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: firstText,
        style:  context.theme.textTheme.titleMedium,
        children: <TextSpan>[
          TextSpan(
              text: secondText,
              style: context.isLargeTablet ? context.textTheme.titleLarge : context.theme.textTheme.titleSmall,
              recognizer: TapGestureRecognizer()
                ..onTap = onTap
          ),
        ],
      ),
    );
  }
}