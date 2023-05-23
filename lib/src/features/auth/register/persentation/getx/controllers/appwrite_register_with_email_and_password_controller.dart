import 'package:customer_identity/src/core/contracts/core_controller.dart';
import 'package:customer_identity/src/core/contracts/core_usecase.dart';
import 'package:customer_identity/src/features/auth/register/domain/usecases/appwrite_register_user_with_email_and_password_usecase.dart';
import 'package:flutter/material.dart';

class AppwriteRegisterWithEmailAndPasswordController extends CoreController{

  String endpoint;
  String project;

  AppwriteRegisterWithEmailAndPasswordController(this.endpoint, this.project);

  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  @override
  AppwriteRegisterUserWithEmailAndPasswordUsecase get coreUsecase => AppwriteRegisterUserWithEmailAndPasswordUsecase(endpoint, project);

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }


  register() async{
    if(registerFormKey.currentState!.validate()){
      await coreUsecase.register(emailController.text, passwordController.text);
      dismissKeyboard();
    }
  }


}