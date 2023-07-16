import 'dart:io';

import 'package:ledgex_client/ledgex_client.dart' as ledgex_client;
import 'package:graphql/client.dart';

import 'package:ledgex_client/__generated__/latest_commit.graphql.dart';

void main(List<String> arguments) async {
  final result = await _client.query$LatestCommit(Options$Query$LatestCommit(
      variables: Variables$Query$LatestCommit(
          repo: "nixos-config", owner: "nobbz", branch: "main")));

  if (result.hasException) {
    print(result.exception.toString());
  }

  print(result.data);
  exit(0);
}

final _httpLink = HttpLink(
  'https://api.github.com/graphql',
  defaultHeaders: {
    'Authorization': 'Bearer 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',
  },
);

final _client = GraphQLClient(
  cache: GraphQLCache(),
  link: _httpLink,
);
