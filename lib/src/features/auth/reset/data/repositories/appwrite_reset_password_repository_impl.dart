import 'package:appwrite/appwrite.dart';
import 'package:customer_identity/src/features/auth/reset/data/datasource/remote/appwrite_reset_password_datasource.dart';
import 'package:customer_identity/src/features/auth/reset/domain/repositories/reset_password_repository.dart';
import 'package:dartz/dartz.dart';

class AppwriteResetPasswordRepositoryImplement extends ResetPasswordRepository{
  String endpoint;
  String project;

  AppwriteResetPasswordRepositoryImplement(this.endpoint, this.project);

  @override
  AppwriteResetPasswordDataSource get remoteDataSource => AppwriteResetPasswordDataSource(endpoint, project);

  Future<Either<Unit, Unit>> resetPassword(String email, String url) async{
    try{
      await remoteDataSource.resetPassword(email, url);
      return const Right(unit);
    }on AppwriteException catch (e){
      return const Left(unit);
    }
  }
}