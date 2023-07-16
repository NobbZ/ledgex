import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$LatestCommit {
  factory Variables$Query$LatestCommit({
    required String repo,
    required String owner,
    required String branch,
  }) =>
      Variables$Query$LatestCommit._({
        r'repo': repo,
        r'owner': owner,
        r'branch': branch,
      });

  Variables$Query$LatestCommit._(this._$data);

  factory Variables$Query$LatestCommit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$repo = data['repo'];
    result$data['repo'] = (l$repo as String);
    final l$owner = data['owner'];
    result$data['owner'] = (l$owner as String);
    final l$branch = data['branch'];
    result$data['branch'] = (l$branch as String);
    return Variables$Query$LatestCommit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get repo => (_$data['repo'] as String);
  String get owner => (_$data['owner'] as String);
  String get branch => (_$data['branch'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$repo = repo;
    result$data['repo'] = l$repo;
    final l$owner = owner;
    result$data['owner'] = l$owner;
    final l$branch = branch;
    result$data['branch'] = l$branch;
    return result$data;
  }

  CopyWith$Variables$Query$LatestCommit<Variables$Query$LatestCommit>
      get copyWith => CopyWith$Variables$Query$LatestCommit(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$LatestCommit) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$repo = repo;
    final lOther$repo = other.repo;
    if (l$repo != lOther$repo) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$branch = branch;
    final lOther$branch = other.branch;
    if (l$branch != lOther$branch) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$repo = repo;
    final l$owner = owner;
    final l$branch = branch;
    return Object.hashAll([
      l$repo,
      l$owner,
      l$branch,
    ]);
  }
}

abstract class CopyWith$Variables$Query$LatestCommit<TRes> {
  factory CopyWith$Variables$Query$LatestCommit(
    Variables$Query$LatestCommit instance,
    TRes Function(Variables$Query$LatestCommit) then,
  ) = _CopyWithImpl$Variables$Query$LatestCommit;

  factory CopyWith$Variables$Query$LatestCommit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$LatestCommit;

  TRes call({
    String? repo,
    String? owner,
    String? branch,
  });
}

class _CopyWithImpl$Variables$Query$LatestCommit<TRes>
    implements CopyWith$Variables$Query$LatestCommit<TRes> {
  _CopyWithImpl$Variables$Query$LatestCommit(
    this._instance,
    this._then,
  );

  final Variables$Query$LatestCommit _instance;

  final TRes Function(Variables$Query$LatestCommit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? repo = _undefined,
    Object? owner = _undefined,
    Object? branch = _undefined,
  }) =>
      _then(Variables$Query$LatestCommit._({
        ..._instance._$data,
        if (repo != _undefined && repo != null) 'repo': (repo as String),
        if (owner != _undefined && owner != null) 'owner': (owner as String),
        if (branch != _undefined && branch != null)
          'branch': (branch as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$LatestCommit<TRes>
    implements CopyWith$Variables$Query$LatestCommit<TRes> {
  _CopyWithStubImpl$Variables$Query$LatestCommit(this._res);

  TRes _res;

  call({
    String? repo,
    String? owner,
    String? branch,
  }) =>
      _res;
}

class Query$LatestCommit {
  Query$LatestCommit({
    this.repository,
    this.$__typename = 'Query',
  });

  factory Query$LatestCommit.fromJson(Map<String, dynamic> json) {
    final l$repository = json['repository'];
    final l$$__typename = json['__typename'];
    return Query$LatestCommit(
      repository: l$repository == null
          ? null
          : Query$LatestCommit$repository.fromJson(
              (l$repository as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$LatestCommit$repository? repository;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$repository = repository;
    _resultData['repository'] = l$repository?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$repository = repository;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$repository,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LatestCommit) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$repository = repository;
    final lOther$repository = other.repository;
    if (l$repository != lOther$repository) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LatestCommit on Query$LatestCommit {
  CopyWith$Query$LatestCommit<Query$LatestCommit> get copyWith =>
      CopyWith$Query$LatestCommit(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LatestCommit<TRes> {
  factory CopyWith$Query$LatestCommit(
    Query$LatestCommit instance,
    TRes Function(Query$LatestCommit) then,
  ) = _CopyWithImpl$Query$LatestCommit;

  factory CopyWith$Query$LatestCommit.stub(TRes res) =
      _CopyWithStubImpl$Query$LatestCommit;

  TRes call({
    Query$LatestCommit$repository? repository,
    String? $__typename,
  });
  CopyWith$Query$LatestCommit$repository<TRes> get repository;
}

class _CopyWithImpl$Query$LatestCommit<TRes>
    implements CopyWith$Query$LatestCommit<TRes> {
  _CopyWithImpl$Query$LatestCommit(
    this._instance,
    this._then,
  );

  final Query$LatestCommit _instance;

  final TRes Function(Query$LatestCommit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? repository = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LatestCommit(
        repository: repository == _undefined
            ? _instance.repository
            : (repository as Query$LatestCommit$repository?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$LatestCommit$repository<TRes> get repository {
    final local$repository = _instance.repository;
    return local$repository == null
        ? CopyWith$Query$LatestCommit$repository.stub(_then(_instance))
        : CopyWith$Query$LatestCommit$repository(
            local$repository, (e) => call(repository: e));
  }
}

class _CopyWithStubImpl$Query$LatestCommit<TRes>
    implements CopyWith$Query$LatestCommit<TRes> {
  _CopyWithStubImpl$Query$LatestCommit(this._res);

  TRes _res;

  call({
    Query$LatestCommit$repository? repository,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$LatestCommit$repository<TRes> get repository =>
      CopyWith$Query$LatestCommit$repository.stub(_res);
}

const documentNodeQueryLatestCommit = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'LatestCommit'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'repo')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'owner')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'branch')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'repository'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'repo')),
          ),
          ArgumentNode(
            name: NameNode(value: 'owner'),
            value: VariableNode(name: NameNode(value: 'owner')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'ref'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'qualifiedName'),
                value: VariableNode(name: NameNode(value: 'branch')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'target'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  InlineFragmentNode(
                    typeCondition: TypeConditionNode(
                        on: NamedTypeNode(
                      name: NameNode(value: 'Commit'),
                      isNonNull: false,
                    )),
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'oid'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$LatestCommit _parserFn$Query$LatestCommit(Map<String, dynamic> data) =>
    Query$LatestCommit.fromJson(data);
typedef OnQueryComplete$Query$LatestCommit = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$LatestCommit?,
);

class Options$Query$LatestCommit
    extends graphql.QueryOptions<Query$LatestCommit> {
  Options$Query$LatestCommit({
    String? operationName,
    required Variables$Query$LatestCommit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$LatestCommit? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$LatestCommit? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$LatestCommit(data),
                  ),
          onError: onError,
          document: documentNodeQueryLatestCommit,
          parserFn: _parserFn$Query$LatestCommit,
        );

  final OnQueryComplete$Query$LatestCommit? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$LatestCommit
    extends graphql.WatchQueryOptions<Query$LatestCommit> {
  WatchOptions$Query$LatestCommit({
    String? operationName,
    required Variables$Query$LatestCommit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$LatestCommit? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryLatestCommit,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$LatestCommit,
        );
}

class FetchMoreOptions$Query$LatestCommit extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$LatestCommit({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$LatestCommit variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryLatestCommit,
        );
}

extension ClientExtension$Query$LatestCommit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$LatestCommit>> query$LatestCommit(
          Options$Query$LatestCommit options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$LatestCommit> watchQuery$LatestCommit(
          WatchOptions$Query$LatestCommit options) =>
      this.watchQuery(options);
  void writeQuery$LatestCommit({
    required Query$LatestCommit data,
    required Variables$Query$LatestCommit variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryLatestCommit),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$LatestCommit? readQuery$LatestCommit({
    required Variables$Query$LatestCommit variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryLatestCommit),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$LatestCommit.fromJson(result);
  }
}

class Query$LatestCommit$repository {
  Query$LatestCommit$repository({
    this.ref,
    this.$__typename = 'Repository',
  });

  factory Query$LatestCommit$repository.fromJson(Map<String, dynamic> json) {
    final l$ref = json['ref'];
    final l$$__typename = json['__typename'];
    return Query$LatestCommit$repository(
      ref: l$ref == null
          ? null
          : Query$LatestCommit$repository$ref.fromJson(
              (l$ref as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$LatestCommit$repository$ref? ref;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ref = ref;
    _resultData['ref'] = l$ref?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ref = ref;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ref,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LatestCommit$repository) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ref = ref;
    final lOther$ref = other.ref;
    if (l$ref != lOther$ref) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LatestCommit$repository
    on Query$LatestCommit$repository {
  CopyWith$Query$LatestCommit$repository<Query$LatestCommit$repository>
      get copyWith => CopyWith$Query$LatestCommit$repository(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LatestCommit$repository<TRes> {
  factory CopyWith$Query$LatestCommit$repository(
    Query$LatestCommit$repository instance,
    TRes Function(Query$LatestCommit$repository) then,
  ) = _CopyWithImpl$Query$LatestCommit$repository;

  factory CopyWith$Query$LatestCommit$repository.stub(TRes res) =
      _CopyWithStubImpl$Query$LatestCommit$repository;

  TRes call({
    Query$LatestCommit$repository$ref? ref,
    String? $__typename,
  });
  CopyWith$Query$LatestCommit$repository$ref<TRes> get ref;
}

class _CopyWithImpl$Query$LatestCommit$repository<TRes>
    implements CopyWith$Query$LatestCommit$repository<TRes> {
  _CopyWithImpl$Query$LatestCommit$repository(
    this._instance,
    this._then,
  );

  final Query$LatestCommit$repository _instance;

  final TRes Function(Query$LatestCommit$repository) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ref = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LatestCommit$repository(
        ref: ref == _undefined
            ? _instance.ref
            : (ref as Query$LatestCommit$repository$ref?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$LatestCommit$repository$ref<TRes> get ref {
    final local$ref = _instance.ref;
    return local$ref == null
        ? CopyWith$Query$LatestCommit$repository$ref.stub(_then(_instance))
        : CopyWith$Query$LatestCommit$repository$ref(
            local$ref, (e) => call(ref: e));
  }
}

class _CopyWithStubImpl$Query$LatestCommit$repository<TRes>
    implements CopyWith$Query$LatestCommit$repository<TRes> {
  _CopyWithStubImpl$Query$LatestCommit$repository(this._res);

  TRes _res;

  call({
    Query$LatestCommit$repository$ref? ref,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$LatestCommit$repository$ref<TRes> get ref =>
      CopyWith$Query$LatestCommit$repository$ref.stub(_res);
}

class Query$LatestCommit$repository$ref {
  Query$LatestCommit$repository$ref({
    required this.id,
    this.target,
    this.$__typename = 'Ref',
  });

  factory Query$LatestCommit$repository$ref.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$target = json['target'];
    final l$$__typename = json['__typename'];
    return Query$LatestCommit$repository$ref(
      id: (l$id as String),
      target: l$target == null
          ? null
          : Query$LatestCommit$repository$ref$target.fromJson(
              (l$target as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Query$LatestCommit$repository$ref$target? target;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$target = target;
    _resultData['target'] = l$target?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$target = target;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$target,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LatestCommit$repository$ref) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$target = target;
    final lOther$target = other.target;
    if (l$target != lOther$target) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LatestCommit$repository$ref
    on Query$LatestCommit$repository$ref {
  CopyWith$Query$LatestCommit$repository$ref<Query$LatestCommit$repository$ref>
      get copyWith => CopyWith$Query$LatestCommit$repository$ref(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LatestCommit$repository$ref<TRes> {
  factory CopyWith$Query$LatestCommit$repository$ref(
    Query$LatestCommit$repository$ref instance,
    TRes Function(Query$LatestCommit$repository$ref) then,
  ) = _CopyWithImpl$Query$LatestCommit$repository$ref;

  factory CopyWith$Query$LatestCommit$repository$ref.stub(TRes res) =
      _CopyWithStubImpl$Query$LatestCommit$repository$ref;

  TRes call({
    String? id,
    Query$LatestCommit$repository$ref$target? target,
    String? $__typename,
  });
  CopyWith$Query$LatestCommit$repository$ref$target<TRes> get target;
}

class _CopyWithImpl$Query$LatestCommit$repository$ref<TRes>
    implements CopyWith$Query$LatestCommit$repository$ref<TRes> {
  _CopyWithImpl$Query$LatestCommit$repository$ref(
    this._instance,
    this._then,
  );

  final Query$LatestCommit$repository$ref _instance;

  final TRes Function(Query$LatestCommit$repository$ref) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? target = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LatestCommit$repository$ref(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        target: target == _undefined
            ? _instance.target
            : (target as Query$LatestCommit$repository$ref$target?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$LatestCommit$repository$ref$target<TRes> get target {
    final local$target = _instance.target;
    return local$target == null
        ? CopyWith$Query$LatestCommit$repository$ref$target.stub(
            _then(_instance))
        : CopyWith$Query$LatestCommit$repository$ref$target(
            local$target, (e) => call(target: e));
  }
}

class _CopyWithStubImpl$Query$LatestCommit$repository$ref<TRes>
    implements CopyWith$Query$LatestCommit$repository$ref<TRes> {
  _CopyWithStubImpl$Query$LatestCommit$repository$ref(this._res);

  TRes _res;

  call({
    String? id,
    Query$LatestCommit$repository$ref$target? target,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$LatestCommit$repository$ref$target<TRes> get target =>
      CopyWith$Query$LatestCommit$repository$ref$target.stub(_res);
}

class Query$LatestCommit$repository$ref$target {
  Query$LatestCommit$repository$ref$target({required this.$__typename});

  factory Query$LatestCommit$repository$ref$target.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Commit":
        return Query$LatestCommit$repository$ref$target$$Commit.fromJson(json);

      case "Blob":
        return Query$LatestCommit$repository$ref$target$$Blob.fromJson(json);

      case "Tag":
        return Query$LatestCommit$repository$ref$target$$Tag.fromJson(json);

      case "Tree":
        return Query$LatestCommit$repository$ref$target$$Tree.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$LatestCommit$repository$ref$target(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LatestCommit$repository$ref$target) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LatestCommit$repository$ref$target
    on Query$LatestCommit$repository$ref$target {
  CopyWith$Query$LatestCommit$repository$ref$target<
          Query$LatestCommit$repository$ref$target>
      get copyWith => CopyWith$Query$LatestCommit$repository$ref$target(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$LatestCommit$repository$ref$target$$Commit)
        commit,
    required _T Function(Query$LatestCommit$repository$ref$target$$Blob) blob,
    required _T Function(Query$LatestCommit$repository$ref$target$$Tag) tag,
    required _T Function(Query$LatestCommit$repository$ref$target$$Tree) tree,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Commit":
        return commit(this as Query$LatestCommit$repository$ref$target$$Commit);

      case "Blob":
        return blob(this as Query$LatestCommit$repository$ref$target$$Blob);

      case "Tag":
        return tag(this as Query$LatestCommit$repository$ref$target$$Tag);

      case "Tree":
        return tree(this as Query$LatestCommit$repository$ref$target$$Tree);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$LatestCommit$repository$ref$target$$Commit)? commit,
    _T Function(Query$LatestCommit$repository$ref$target$$Blob)? blob,
    _T Function(Query$LatestCommit$repository$ref$target$$Tag)? tag,
    _T Function(Query$LatestCommit$repository$ref$target$$Tree)? tree,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Commit":
        if (commit != null) {
          return commit(
              this as Query$LatestCommit$repository$ref$target$$Commit);
        } else {
          return orElse();
        }

      case "Blob":
        if (blob != null) {
          return blob(this as Query$LatestCommit$repository$ref$target$$Blob);
        } else {
          return orElse();
        }

      case "Tag":
        if (tag != null) {
          return tag(this as Query$LatestCommit$repository$ref$target$$Tag);
        } else {
          return orElse();
        }

      case "Tree":
        if (tree != null) {
          return tree(this as Query$LatestCommit$repository$ref$target$$Tree);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$LatestCommit$repository$ref$target<TRes> {
  factory CopyWith$Query$LatestCommit$repository$ref$target(
    Query$LatestCommit$repository$ref$target instance,
    TRes Function(Query$LatestCommit$repository$ref$target) then,
  ) = _CopyWithImpl$Query$LatestCommit$repository$ref$target;

  factory CopyWith$Query$LatestCommit$repository$ref$target.stub(TRes res) =
      _CopyWithStubImpl$Query$LatestCommit$repository$ref$target;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$LatestCommit$repository$ref$target<TRes>
    implements CopyWith$Query$LatestCommit$repository$ref$target<TRes> {
  _CopyWithImpl$Query$LatestCommit$repository$ref$target(
    this._instance,
    this._then,
  );

  final Query$LatestCommit$repository$ref$target _instance;

  final TRes Function(Query$LatestCommit$repository$ref$target) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$LatestCommit$repository$ref$target(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$LatestCommit$repository$ref$target<TRes>
    implements CopyWith$Query$LatestCommit$repository$ref$target<TRes> {
  _CopyWithStubImpl$Query$LatestCommit$repository$ref$target(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$LatestCommit$repository$ref$target$$Commit
    implements Query$LatestCommit$repository$ref$target {
  Query$LatestCommit$repository$ref$target$$Commit({
    required this.oid,
    this.$__typename = 'Commit',
  });

  factory Query$LatestCommit$repository$ref$target$$Commit.fromJson(
      Map<String, dynamic> json) {
    final l$oid = json['oid'];
    final l$$__typename = json['__typename'];
    return Query$LatestCommit$repository$ref$target$$Commit(
      oid: (l$oid as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String oid;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$oid = oid;
    _resultData['oid'] = l$oid;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$oid = oid;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$oid,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LatestCommit$repository$ref$target$$Commit) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$oid = oid;
    final lOther$oid = other.oid;
    if (l$oid != lOther$oid) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LatestCommit$repository$ref$target$$Commit
    on Query$LatestCommit$repository$ref$target$$Commit {
  CopyWith$Query$LatestCommit$repository$ref$target$$Commit<
          Query$LatestCommit$repository$ref$target$$Commit>
      get copyWith => CopyWith$Query$LatestCommit$repository$ref$target$$Commit(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LatestCommit$repository$ref$target$$Commit<TRes> {
  factory CopyWith$Query$LatestCommit$repository$ref$target$$Commit(
    Query$LatestCommit$repository$ref$target$$Commit instance,
    TRes Function(Query$LatestCommit$repository$ref$target$$Commit) then,
  ) = _CopyWithImpl$Query$LatestCommit$repository$ref$target$$Commit;

  factory CopyWith$Query$LatestCommit$repository$ref$target$$Commit.stub(
          TRes res) =
      _CopyWithStubImpl$Query$LatestCommit$repository$ref$target$$Commit;

  TRes call({
    String? oid,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LatestCommit$repository$ref$target$$Commit<TRes>
    implements CopyWith$Query$LatestCommit$repository$ref$target$$Commit<TRes> {
  _CopyWithImpl$Query$LatestCommit$repository$ref$target$$Commit(
    this._instance,
    this._then,
  );

  final Query$LatestCommit$repository$ref$target$$Commit _instance;

  final TRes Function(Query$LatestCommit$repository$ref$target$$Commit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? oid = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LatestCommit$repository$ref$target$$Commit(
        oid: oid == _undefined || oid == null ? _instance.oid : (oid as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$LatestCommit$repository$ref$target$$Commit<TRes>
    implements CopyWith$Query$LatestCommit$repository$ref$target$$Commit<TRes> {
  _CopyWithStubImpl$Query$LatestCommit$repository$ref$target$$Commit(this._res);

  TRes _res;

  call({
    String? oid,
    String? $__typename,
  }) =>
      _res;
}

class Query$LatestCommit$repository$ref$target$$Blob
    implements Query$LatestCommit$repository$ref$target {
  Query$LatestCommit$repository$ref$target$$Blob({this.$__typename = 'Blob'});

  factory Query$LatestCommit$repository$ref$target$$Blob.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$LatestCommit$repository$ref$target$$Blob(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LatestCommit$repository$ref$target$$Blob) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LatestCommit$repository$ref$target$$Blob
    on Query$LatestCommit$repository$ref$target$$Blob {
  CopyWith$Query$LatestCommit$repository$ref$target$$Blob<
          Query$LatestCommit$repository$ref$target$$Blob>
      get copyWith => CopyWith$Query$LatestCommit$repository$ref$target$$Blob(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LatestCommit$repository$ref$target$$Blob<TRes> {
  factory CopyWith$Query$LatestCommit$repository$ref$target$$Blob(
    Query$LatestCommit$repository$ref$target$$Blob instance,
    TRes Function(Query$LatestCommit$repository$ref$target$$Blob) then,
  ) = _CopyWithImpl$Query$LatestCommit$repository$ref$target$$Blob;

  factory CopyWith$Query$LatestCommit$repository$ref$target$$Blob.stub(
          TRes res) =
      _CopyWithStubImpl$Query$LatestCommit$repository$ref$target$$Blob;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$LatestCommit$repository$ref$target$$Blob<TRes>
    implements CopyWith$Query$LatestCommit$repository$ref$target$$Blob<TRes> {
  _CopyWithImpl$Query$LatestCommit$repository$ref$target$$Blob(
    this._instance,
    this._then,
  );

  final Query$LatestCommit$repository$ref$target$$Blob _instance;

  final TRes Function(Query$LatestCommit$repository$ref$target$$Blob) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$LatestCommit$repository$ref$target$$Blob(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$LatestCommit$repository$ref$target$$Blob<TRes>
    implements CopyWith$Query$LatestCommit$repository$ref$target$$Blob<TRes> {
  _CopyWithStubImpl$Query$LatestCommit$repository$ref$target$$Blob(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$LatestCommit$repository$ref$target$$Tag
    implements Query$LatestCommit$repository$ref$target {
  Query$LatestCommit$repository$ref$target$$Tag({this.$__typename = 'Tag'});

  factory Query$LatestCommit$repository$ref$target$$Tag.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$LatestCommit$repository$ref$target$$Tag(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LatestCommit$repository$ref$target$$Tag) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LatestCommit$repository$ref$target$$Tag
    on Query$LatestCommit$repository$ref$target$$Tag {
  CopyWith$Query$LatestCommit$repository$ref$target$$Tag<
          Query$LatestCommit$repository$ref$target$$Tag>
      get copyWith => CopyWith$Query$LatestCommit$repository$ref$target$$Tag(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LatestCommit$repository$ref$target$$Tag<TRes> {
  factory CopyWith$Query$LatestCommit$repository$ref$target$$Tag(
    Query$LatestCommit$repository$ref$target$$Tag instance,
    TRes Function(Query$LatestCommit$repository$ref$target$$Tag) then,
  ) = _CopyWithImpl$Query$LatestCommit$repository$ref$target$$Tag;

  factory CopyWith$Query$LatestCommit$repository$ref$target$$Tag.stub(
          TRes res) =
      _CopyWithStubImpl$Query$LatestCommit$repository$ref$target$$Tag;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$LatestCommit$repository$ref$target$$Tag<TRes>
    implements CopyWith$Query$LatestCommit$repository$ref$target$$Tag<TRes> {
  _CopyWithImpl$Query$LatestCommit$repository$ref$target$$Tag(
    this._instance,
    this._then,
  );

  final Query$LatestCommit$repository$ref$target$$Tag _instance;

  final TRes Function(Query$LatestCommit$repository$ref$target$$Tag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$LatestCommit$repository$ref$target$$Tag(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$LatestCommit$repository$ref$target$$Tag<TRes>
    implements CopyWith$Query$LatestCommit$repository$ref$target$$Tag<TRes> {
  _CopyWithStubImpl$Query$LatestCommit$repository$ref$target$$Tag(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$LatestCommit$repository$ref$target$$Tree
    implements Query$LatestCommit$repository$ref$target {
  Query$LatestCommit$repository$ref$target$$Tree({this.$__typename = 'Tree'});

  factory Query$LatestCommit$repository$ref$target$$Tree.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$LatestCommit$repository$ref$target$$Tree(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LatestCommit$repository$ref$target$$Tree) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LatestCommit$repository$ref$target$$Tree
    on Query$LatestCommit$repository$ref$target$$Tree {
  CopyWith$Query$LatestCommit$repository$ref$target$$Tree<
          Query$LatestCommit$repository$ref$target$$Tree>
      get copyWith => CopyWith$Query$LatestCommit$repository$ref$target$$Tree(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LatestCommit$repository$ref$target$$Tree<TRes> {
  factory CopyWith$Query$LatestCommit$repository$ref$target$$Tree(
    Query$LatestCommit$repository$ref$target$$Tree instance,
    TRes Function(Query$LatestCommit$repository$ref$target$$Tree) then,
  ) = _CopyWithImpl$Query$LatestCommit$repository$ref$target$$Tree;

  factory CopyWith$Query$LatestCommit$repository$ref$target$$Tree.stub(
          TRes res) =
      _CopyWithStubImpl$Query$LatestCommit$repository$ref$target$$Tree;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$LatestCommit$repository$ref$target$$Tree<TRes>
    implements CopyWith$Query$LatestCommit$repository$ref$target$$Tree<TRes> {
  _CopyWithImpl$Query$LatestCommit$repository$ref$target$$Tree(
    this._instance,
    this._then,
  );

  final Query$LatestCommit$repository$ref$target$$Tree _instance;

  final TRes Function(Query$LatestCommit$repository$ref$target$$Tree) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$LatestCommit$repository$ref$target$$Tree(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$LatestCommit$repository$ref$target$$Tree<TRes>
    implements CopyWith$Query$LatestCommit$repository$ref$target$$Tree<TRes> {
  _CopyWithStubImpl$Query$LatestCommit$repository$ref$target$$Tree(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
