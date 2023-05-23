import 'package:appwrite/appwrite.dart';
import 'package:customer_identity/src/core/routes/auth_router.dart';
import 'package:customer_identity/src/features/auth/register/data/datasource/remote/appwrite_register_datasource.dart';
import 'package:customer_identity/src/features/auth/register/domain/repositories/register_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

class AppwriteRegisterRepositoryImplement extends RegisterRepository{
  String endpoint;
  String project;

  AppwriteRegisterRepositoryImplement(this.endpoint, this.project);

  @override
  AppwriteRegisterDataSource get remoteDataSource => AppwriteRegisterDataSource(endpoint, project);

  Future<Either<Unit, Unit>> registerNewUserWithEmailAndPassword(String email, String password) async{
    try{
      await remoteDataSource.registerWithEmailAndPassword(email, password);
      Get.offNamed(AuthRouter.landing);
      return const Right(unit);
    }on AppwriteException catch (e){
      return const Left(unit);
    }
  }

}
