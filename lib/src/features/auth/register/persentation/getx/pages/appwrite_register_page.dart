import 'package:customer_identity/src/core/routes/auth_router.dart';
import 'package:customer_identity/src/features/auth/register/persentation/getx/bindings/appwrite_register_binding.dart';
import 'package:customer_identity/src/features/auth/register/persentation/screens/register_screen.dart';
import 'package:customer_identity/src/middlewares/authenticator_middleware.dart';
import 'package:get/get.dart';


class AppwriteRegisterPage extends GetPage{
  final String endpoint;
  final String projectId;

  AppwriteRegisterPage({required this.endpoint, required this.projectId}) : super(
    name: AuthRouter.register,
    page: () => RegisterScreen(),
    binding: AppwriteRegisterBinding(endpoint, projectId),
    transition: Transition.cupertino,
    // middlewares: [
    //   AuthenticatorMiddleware(),
    // ],
  );
}