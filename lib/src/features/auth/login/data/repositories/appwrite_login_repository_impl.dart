import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:customer_identity/src/core/routes/auth_router.dart';
import 'package:customer_identity/src/features/auth/login/data/datasource/remote/appwrite_login_datasource.dart';
import 'package:customer_identity/src/features/auth/login/domain/repositories/login_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';


class AppwriteLoginRepositoryImplement extends LoginRepository{
  String endpoint;
  String project;

  AppwriteLoginRepositoryImplement(this.endpoint, this.project);

  @override
  AppwriteLoginDataSource get remoteDataSource => AppwriteLoginDataSource(endpoint, project);

  Future<Either<Unit, Unit>>loginUserByEmailAndPassword(String email, String password) async{
    try{
      await remoteDataSource.loginWithEmailSession(email, password);
      Get.offNamed(AuthRouter.landing);
      return const Right(unit);
    } on AppwriteException catch (e){
      return const Left(unit);
    }
  }
}