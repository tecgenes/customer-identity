import 'package:customer_identity/src/core/contracts/core_usecase.dart';
import 'package:customer_identity/src/features/auth/login/data/repositories/appwrite_login_repository_impl.dart';


class AppwriteLoginUserWithEmailAndPasswordUsecase extends CoreUsecase{

  String endpoint;
  String project;

  AppwriteLoginUserWithEmailAndPasswordUsecase(this.endpoint, this.project);

  @override
  AppwriteLoginRepositoryImplement get repository => AppwriteLoginRepositoryImplement(endpoint, project);

  login(String email, String password) async{
    await repository.loginUserByEmailAndPassword(email, password);
  }
}