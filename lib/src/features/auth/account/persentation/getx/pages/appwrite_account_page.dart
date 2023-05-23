import 'package:customer_identity/src/core/routes/auth_router.dart';
import 'package:customer_identity/src/features/auth/account/persentation/getx/bindings/appwrite_account_binding.dart';
import 'package:customer_identity/src/features/auth/account/persentation/screens/account_screen.dart';
import 'package:get/get.dart';

class AppwriteAccountPage extends GetPageRoute{

  AppwriteAccountPage():super(
    routeName: AuthRouter.account,
    page: () => AccountScreen(),
    binding: AppwriteAccountBinding(),
    transition: Transition.cupertino,
  );
}