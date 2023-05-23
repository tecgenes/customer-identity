import 'package:customer_identity/src/core/routes/auth_router.dart';
import 'package:customer_identity/src/features/auth/register/persentation/getx/controllers/appwrite_register_with_email_and_password_controller.dart';
import 'package:customer_identity/src/widgets/app_elevated_button_widget.dart';
import 'package:customer_identity/src/widgets/custom_rich_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class RegisterFormComponent extends GetView<AppwriteRegisterWithEmailAndPasswordController>{
  const RegisterFormComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.registerFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Get.height * 0.02,
          ),
          Text(
            'welcome'.tr,
            style: Get.theme.textTheme.headlineSmall,
          ),
          Text(
            'register_title'.tr,
            style: Get.theme.textTheme.titleMedium,
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),

          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.emailAddress,
            controller: controller.emailController,
            validator: controller.emailValidator,
            decoration: const InputDecoration().copyWith(
                hintText: 'email'.tr,
                label: Text(
                  'email'.tr,
                  style: context.isLargeTablet ? context.textTheme.titleLarge : context.textTheme.titleMedium,
                ),
              suffixIcon: Padding(
                padding: EdgeInsets.all(Get.width * 0.04),
                child: SvgPicture.asset("packages/customer_identity/assets/icons/field/mail.svg"),
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.04,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.text,
            controller: controller.passwordController,
            validator: controller.passwordValidator,
            obscureText: true,
            decoration: const InputDecoration().copyWith(
                hintText: 'password'.tr,
                label: Text(
                  'password'.tr,
                  style: context.isLargeTablet ? context.textTheme.titleLarge : context.textTheme.titleMedium,
                ),
              suffixIcon: Padding(
                padding: EdgeInsets.all(Get.width * 0.04),
                child: SvgPicture.asset("packages/customer_identity/assets/icons/field/phone.svg"),
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.04,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.text,
            controller: controller.confirmPasswordController,
            validator: (value){
              if(value != controller.passwordController.text){
                return 'password_not_match'.tr;
              }
              return null;
            },
            decoration: const InputDecoration().copyWith(
                hintText: 'confirm_password'.tr,
                label: Text(
                  're_enter_password'.tr,
                  style: context.isLargeTablet ? context.textTheme.titleLarge : context.textTheme.titleMedium,
                ),
              suffixIcon: Padding(
                padding: EdgeInsets.all(Get.width * 0.04),
                child: SvgPicture.asset("packages/customer_identity/assets/icons/field/phone.svg"),
              ),
            ),
          ),

          SizedBox(height: Get.height * 0.04),

          AppElevatedButtonWidget(
              onPressed: () => controller.register(),
              title: 'register'.tr,
          ),
          SizedBox(height: Get.height * 0.04),

          CustomRichTextWidget(
            firstText: 'have_account'.tr,
            secondText: 'login'.tr,
            onTap: () => Get.offNamed(AuthRouter.login),
          ),
        ],
      ),
    );
  }
}