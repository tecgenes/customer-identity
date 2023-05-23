import 'package:customer_identity/src/core/routes/auth_router.dart';
import 'package:customer_identity/src/features/auth/reset/persentation/getx/controllers/appwite_reset_password_controller.dart';
import 'package:customer_identity/src/widgets/app_elevated_button_widget.dart';
import 'package:customer_identity/src/widgets/custom_rich_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ResetPasswordFormComponent extends GetView<AppwriteResetPasswordController>{
  const ResetPasswordFormComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.resetPasswordFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: Get.height * 0.04),
          Text(
            'reset_password'.tr,
            style: Get.theme.textTheme.headlineSmall,
          ),
          Text(
            'reset_password_request'.tr,
            style: Get.theme.textTheme.bodyMedium,
          ),
          SizedBox(height: Get.height * 0.08),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.emailAddress,
            // controller: controller.emailController,
            validator: controller.emailValidator,
            decoration: const InputDecoration().copyWith(
              hintText: 'enter_email'.tr,
              label: Text(
                'email'.tr,
                style: context.isLargeTablet ? context.textTheme.titleLarge : context.textTheme.titleMedium,
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.all(Get.width * 0.04),
                child: SvgPicture.asset("assets/icons/mail.svg"),
              ),
            ),
          ),

          SizedBox(
            height: Get.height * 0.08,
          ),
          AppElevatedButtonWidget(
            onPressed: () => Get.toNamed(AuthRouter.successSendRestPassword) ,
            title: 'continue'.tr,
          ),

          SizedBox(height: Get.height * 0.08),
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