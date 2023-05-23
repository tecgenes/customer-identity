

import 'package:customer_identity/src/core/contracts/core_usecase.dart';
import 'package:customer_identity/src/features/auth/reset/data/repositories/appwrite_reset_password_repository_impl.dart';

class AppwriteSendResetPasswordRequestUsecase extends CoreUsecase{

  String endpoint;
  String project;

  AppwriteSendResetPasswordRequestUsecase(this.endpoint, this.project);

  @override
  AppwriteResetPasswordRepositoryImplement get repository => AppwriteResetPasswordRepositoryImplement(endpoint, project);

  requestResetPassword(String email, String redirectUrl) async{
    await repository.resetPassword(email, redirectUrl);
  }
}