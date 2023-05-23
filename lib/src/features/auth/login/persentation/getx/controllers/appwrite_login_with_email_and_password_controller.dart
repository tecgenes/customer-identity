import 'package:customer_identity/src/core/contracts/core_controller.dart';
import 'package:customer_identity/src/features/auth/login/domain/usecases/appwrite_login_user_with_email_and_password_usecase.dart';
import 'package:flutter/material.dart';

class AppwriteLoginWithEmailAndPasswordController extends CoreController{

  String endpoint;
  String project;

  AppwriteLoginWithEmailAndPasswordController(this.endpoint, this.project);

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;


  @override
  AppwriteLoginUserWithEmailAndPasswordUsecase get coreUsecase => AppwriteLoginUserWithEmailAndPasswordUsecase(endpoint, project);

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  login() async{
    if(loginFormKey.currentState!.validate()){
      await coreUsecase.login(emailController.text, passwordController.text);
      dismissKeyboard();
    }
  }

}