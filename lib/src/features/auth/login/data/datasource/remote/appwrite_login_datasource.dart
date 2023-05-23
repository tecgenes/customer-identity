import 'package:appwrite/appwrite.dart';
import 'package:customer_identity/src/core/contracts/core_remote_data_source.dart';
class AppwriteLoginDataSource extends CoreRemoteDataSource{
  String endPoint;
  String project;

  AppwriteLoginDataSource(this.endPoint, this.project);

  Future<void> loginWithEmailSession(String email, String password) async{
    Client client = Client();
    Account account = Account(client);
    client
        .setEndpoint(endPoint)
        .setProject(project);
    await account.createEmailSession(email: email, password: password);
  }

}