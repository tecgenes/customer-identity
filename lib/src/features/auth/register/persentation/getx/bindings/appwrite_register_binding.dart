import 'package:customer_identity/src/features/auth/register/persentation/getx/controllers/appwrite_register_with_email_and_password_controller.dart';
import 'package:get/get.dart';

class AppwriteRegisterBinding extends Bindings{
  String endpoint;
  String project;

  AppwriteRegisterBinding(this.endpoint, this.project);

  @override
  void dependencies() {
    Get.lazyPut<AppwriteRegisterWithEmailAndPasswordController>(() => AppwriteRegisterWithEmailAndPasswordController(endpoint, project));
  }
}