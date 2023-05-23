import 'package:customer_identity/src/core/routes/auth_router.dart';
import 'package:customer_identity/src/features/auth/reset/persentation/screens/success_send_reset_password_screen.dart';
import 'package:customer_identity/src/middlewares/authenticator_middleware.dart';
import 'package:get/get.dart';

class CIAMSuccessSendResetPasswordPage extends GetPage{
  CIAMSuccessSendResetPasswordPage(): super(
    name: AuthRouter.successSendRestPassword,
    page: () => SuccessSendResetPasswordScreen(),
    transition: Transition.cupertino,
    middlewares: [
      AuthenticatorMiddleware(),
    ],
  );

}