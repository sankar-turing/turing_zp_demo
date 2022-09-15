import 'package:graphql/client.dart';
import 'package:turing_zp_demo/data/services/api_constants.dart';

class ApiServices {
  static GraphQLClient getGraphQLClient() {
    final Link link = HttpLink(
      ApiConstants.graphQLClientEndPoint,
    );

    return GraphQLClient(
      cache: GraphQLCache(),
      link: link,
    );
  }
}
