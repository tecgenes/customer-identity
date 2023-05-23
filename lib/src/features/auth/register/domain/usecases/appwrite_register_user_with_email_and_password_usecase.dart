import 'package:customer_identity/src/core/contracts/core_usecase.dart';
import 'package:customer_identity/src/features/auth/register/data/repositories/appwrite_register_repository_impl.dart';


class AppwriteRegisterUserWithEmailAndPasswordUsecase extends CoreUsecase{

  String endpoint;
  String project;

  AppwriteRegisterUserWithEmailAndPasswordUsecase(this.endpoint, this.project);

  @override
  AppwriteRegisterRepositoryImplement get repository => AppwriteRegisterRepositoryImplement(endpoint, project);

  register(String email, String password) async{
    await repository.registerNewUserWithEmailAndPassword(email, password);
  }
}