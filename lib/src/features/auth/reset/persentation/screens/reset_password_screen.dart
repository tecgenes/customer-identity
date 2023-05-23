import 'package:customer_identity/src/features/auth/reset/persentation/components/reset_password_form_component.dart';
import 'package:customer_identity/src/features/auth/reset/persentation/getx/controllers/appwite_reset_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends GetView<AppwriteResetPasswordController>{
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
          onTap: () => controller.dismissKeyboard(),
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                'reset_password'.tr,
                style: context.textTheme.bodyMedium,
              ),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              physics: const ScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.05,
                  vertical: Get.height * 0.05
                ),
                child: const ResetPasswordFormComponent(),
              ),
            ),
          ),
        )
    );
  }
}