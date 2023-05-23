import 'package:customer_identity/src/core/contracts/core_repository.dart';

abstract class CoreUsecase{
  CoreRepository get repository;
}