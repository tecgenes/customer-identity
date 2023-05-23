import 'package:customer_identity/src/core/contracts/core_remote_data_source.dart';
import 'package:get/get.dart';

abstract class CoreRepository<T> implements GetxService{
  CoreRemoteDataSource get remoteDataSource;
}