import 'package:appwrite/appwrite.dart';
import 'package:customer_identity/src/core/contracts/core_remote_data_source.dart';

class AppwriteRegisterDataSource extends CoreRemoteDataSource{
  String endpoint;
  String project;

  AppwriteRegisterDataSource(this.endpoint, this.project);

  Future<void> registerWithEmailAndPassword(String email, String password) async{
    Client client = Client();
    Account account = Account(client);
    client
      .setEndpoint(endpoint)
      .setProject(project);
    await account.create(
        userId: ID.unique(),
        email: email,
        password: password
    );
  }


}