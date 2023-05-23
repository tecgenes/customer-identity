import 'package:appwrite/appwrite.dart';
import 'package:customer_identity/src/core/contracts/core_endpoint.dart';

class AppwriteEndpoint extends CoreEndpoint{
  String endpoint;
  String project;

  AppwriteEndpoint(this.endpoint, this.project);


  static final  Client client = Client();
  final Account account = Account(client);

  setupProject(){
    client
        .setEndpoint(endpoint)
        .setProject(project);
  }
}