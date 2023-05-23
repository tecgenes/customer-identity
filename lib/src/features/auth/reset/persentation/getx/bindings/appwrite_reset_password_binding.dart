import 'package:customer_identity/src/features/auth/reset/persentation/getx/controllers/appwite_reset_password_controller.dart';
import 'package:get/get.dart';

class AppwriteResetPasswordBinding extends Bindings{
  String endpoint;
  String project;

  AppwriteResetPasswordBinding(this.endpoint, this.project);

  @override
  void dependencies() {
    Get.lazyPut<AppwriteResetPasswordController>(() => AppwriteResetPasswordController(endpoint, project));
  }
}