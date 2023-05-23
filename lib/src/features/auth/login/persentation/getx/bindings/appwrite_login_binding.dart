import 'package:customer_identity/src/features/auth/login/persentation/getx/controllers/appwrite_login_with_email_and_password_controller.dart';
import 'package:get/get.dart';

class AppwiteLoginBinding extends Bindings{
  String endpoint;
  String project;

  AppwiteLoginBinding(this.endpoint, this.project);

  @override
  void dependencies() {
   Get.lazyPut<AppwriteLoginWithEmailAndPasswordController>(() => AppwriteLoginWithEmailAndPasswordController(endpoint, project));
  }
}