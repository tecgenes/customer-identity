import 'package:appwrite/appwrite.dart';
import 'package:customer_identity/src/core/contracts/core_remote_data_source.dart';

class AppwriteResetPasswordDataSource extends CoreRemoteDataSource{
  String endpoint;
  String project;

  AppwriteResetPasswordDataSource(this.endpoint, this.project);

  Future<void> resetPassword(String email, String url) async{
    Client client = Client();
    Account account = Account(client);
    client
        .setEndpoint(endpoint)
        .setProject(project);
    await account.createRecovery(
        email: email,
        url: url
    );
  }
}