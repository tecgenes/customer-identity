import 'package:customer_identity/src/features/auth/register/persentation/components/register_form_component.dart';
import 'package:customer_identity/src/features/auth/register/persentation/getx/controllers/appwrite_register_with_email_and_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends GetResponsiveView<AppwriteRegisterWithEmailAndPasswordController>{
  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
          onTap: () => controller.dismissKeyboard(),
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                  'register'.tr,
                style: context.textTheme.bodyMedium,
              ),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.05,
                ),
                child: Column(
                  children: const [
                    RegisterFormComponent(),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}