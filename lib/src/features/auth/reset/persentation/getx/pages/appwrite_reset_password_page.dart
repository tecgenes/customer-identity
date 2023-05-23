import 'package:customer_identity/src/core/routes/auth_router.dart';
import 'package:customer_identity/src/features/auth/reset/persentation/getx/bindings/appwrite_reset_password_binding.dart';
import 'package:customer_identity/src/features/auth/reset/persentation/screens/reset_password_screen.dart';
import 'package:customer_identity/src/middlewares/authenticator_middleware.dart';
import 'package:get/get.dart';

class AppwriteResetPasswordPage extends GetPage {
  final String endpoint;
  final String projectId;

  AppwriteResetPasswordPage({required this.endpoint, required this.projectId})
      : super(
            name: AuthRouter.resetPassword,
            page: () => const ResetPasswordScreen(),
            binding: AppwriteResetPasswordBinding(endpoint, projectId),
            transition: Transition.cupertino,
            middlewares: [
              AuthenticatorMiddleware(),
            ],
  );
}
