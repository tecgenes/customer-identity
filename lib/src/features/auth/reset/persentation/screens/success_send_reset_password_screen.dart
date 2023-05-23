import 'package:customer_identity/src/core/routes/auth_router.dart';
import 'package:customer_identity/src/widgets/app_elevated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SuccessSendResetPasswordScreen extends GetView{
  const SuccessSendResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.05,
                vertical: Get.height * 0.05
            ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: double.infinity,
                height: Get.height * 0.40,
                child: Get.isDarkMode
                    ? SvgPicture.asset("assets/icons/success_dark.svg" , fit: BoxFit.contain)
                    : SvgPicture.asset("assets/icons/success_light.svg" , fit: BoxFit.contain),
              ),
              Text("Success Sending", style: context.textTheme.displaySmall,),
              Text(
                "We just send a link to your email, you can check your inbox to reset password and back here to login in"
                , style: context.textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
              AppElevatedButtonWidget(
                  onPressed: () => Get.offNamed(AuthRouter.login),
                  title: "Back to Login",
              )
            ],
          ),
          ),
        )
    );
  }
}