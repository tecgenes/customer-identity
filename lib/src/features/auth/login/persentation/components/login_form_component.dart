import 'package:customer_identity/src/core/routes/auth_router.dart';
import 'package:customer_identity/src/features/auth/login/persentation/getx/controllers/appwrite_login_with_email_and_password_controller.dart';
import 'package:customer_identity/src/widgets/app_elevated_button_widget.dart';
import 'package:customer_identity/src/widgets/custom_rich_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginFormComponent extends GetView<AppwriteLoginWithEmailAndPasswordController>{
  const LoginFormComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.loginFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: Get.height * 0.04),
          Text(
            'welcome'.tr,
            style: Get.theme.textTheme.headlineSmall,
          ),
          Text(
            'login_title'.tr,
            style: Get.theme.textTheme.bodyMedium,
          ),
          SizedBox(height: Get.height * 0.04),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.emailAddress,
            controller: controller.emailController,
            validator: controller.emailValidator,
            decoration: const InputDecoration().copyWith(
                hintText: 'enter_email'.tr,
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
          SizedBox(height: Get.height * 0.04),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.text,
            controller: controller.passwordController,
            validator: controller.passwordValidator,
            obscureText: true,
            decoration: const InputDecoration().copyWith(
                hintText: 'enter_password'.tr,
                label: Text(
                  'password'.tr,
                  style: context.isLargeTablet ? context.textTheme.titleLarge : context.textTheme.titleMedium,
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.all(Get.width * 0.04),
                  child: SvgPicture.asset("packages/customer_identity/assets/icons/field/phone.svg"),
                )
            ),
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          TextButton(
              onPressed: () => Get.toNamed(AuthRouter.resetPassword),
              child: Text(
                'forgot_password'.tr,
                style: context.isLargeTablet ? context.textTheme.titleLarge : context.textTheme.titleMedium,
              )),
          SizedBox(
            height: Get.height * 0.02,
          ),
          AppElevatedButtonWidget(
              onPressed: controller.login,
              title: 'login'.tr,
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          AppElevatedButtonWidget(
              onPressed: (){},
              title: 'continue_with_google'.tr,
            isOutlined: true,
            hasIcon: true,
            iconAsset: 'packages/customer_identity/assets/icons/social/google.png',
          ),
          SizedBox(height: Get.height * 0.06),
          CustomRichTextWidget(
            firstText: 'no_account'.tr,
            secondText: 'register'.tr,
            onTap: () => Get.offNamed(AuthRouter.register),
          ),
        ],
      ),
    );
  }
}