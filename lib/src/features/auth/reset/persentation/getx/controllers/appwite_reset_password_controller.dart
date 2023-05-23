import 'package:customer_identity/src/core/contracts/core_controller.dart';
import 'package:customer_identity/src/core/contracts/core_usecase.dart';
import 'package:customer_identity/src/features/auth/reset/domain/usecases/appwrite_send_reset_password_request_usecase.dart';
import 'package:flutter/material.dart';

class AppwriteResetPasswordController extends CoreController{

  String endpoint;
  String project;


  AppwriteResetPasswordController(this.endpoint, this.project);

  GlobalKey<FormState> resetPasswordFormKey = GlobalKey<FormState>();
  late TextEditingController emailController;

  @override
  AppwriteSendResetPasswordRequestUsecase get coreUsecase => AppwriteSendResetPasswordRequestUsecase(endpoint, project);

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }

  resetPassword() async{
    if(resetPasswordFormKey.currentState!.validate()){
      await coreUsecase.requestResetPassword(emailController.text, "redirectUrl");

    }
  }
}