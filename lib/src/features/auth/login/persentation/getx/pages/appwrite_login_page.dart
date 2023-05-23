import 'package:customer_identity/src/core/routes/auth_router.dart';
import 'package:customer_identity/src/features/auth/login/persentation/getx/bindings/appwrite_login_binding.dart';
import 'package:customer_identity/src/features/auth/login/persentation/screens/login_screen.dart';
import 'package:customer_identity/src/middlewares/authenticator_middleware.dart';
import 'package:get/get.dart';

class AppwriteLoginPage extends GetPage{
  final String endpoint;
  final String projectId;

  AppwriteLoginPage({required this.endpoint, required this.projectId}):super(
    name: AuthRouter.login,
    page: () => LoginScreen(),
    binding: AppwiteLoginBinding(endpoint, projectId),
    transition: Transition.cupertino,
    // middlewares: [
    //   AuthenticatorMiddleware(),
    // ],
  );
}