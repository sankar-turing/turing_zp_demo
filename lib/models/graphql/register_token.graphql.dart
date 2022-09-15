import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'register_token.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$MutationRegisterTokenMutation {
  Variables$MutationRegisterTokenMutation({this.input});

  @override
  factory Variables$MutationRegisterTokenMutation.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$MutationRegisterTokenMutationFromJson(json);

  final InputRegisterToken? input;

  Map<String, dynamic> toJson() =>
      _$Variables$MutationRegisterTokenMutationToJson(this);
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$MutationRegisterTokenMutation) ||
        runtimeType != other.runtimeType) return false;
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) return false;
    return true;
  }

  CopyWith$Variables$MutationRegisterTokenMutation<
          Variables$MutationRegisterTokenMutation>
      get copyWith =>
          CopyWith$Variables$MutationRegisterTokenMutation(this, (i) => i);
}

abstract class CopyWith$Variables$MutationRegisterTokenMutation<TRes> {
  factory CopyWith$Variables$MutationRegisterTokenMutation(
          Variables$MutationRegisterTokenMutation instance,
          TRes Function(Variables$MutationRegisterTokenMutation) then) =
      _CopyWithImpl$Variables$MutationRegisterTokenMutation;

  factory CopyWith$Variables$MutationRegisterTokenMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$MutationRegisterTokenMutation;

  TRes call({InputRegisterToken? input});
}

class _CopyWithImpl$Variables$MutationRegisterTokenMutation<TRes>
    implements CopyWith$Variables$MutationRegisterTokenMutation<TRes> {
  _CopyWithImpl$Variables$MutationRegisterTokenMutation(
      this._instance, this._then);

  final Variables$MutationRegisterTokenMutation _instance;

  final TRes Function(Variables$MutationRegisterTokenMutation) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$MutationRegisterTokenMutation(
          input: input == _undefined
              ? _instance.input
              : (input as InputRegisterToken?)));
}

class _CopyWithStubImpl$Variables$MutationRegisterTokenMutation<TRes>
    implements CopyWith$Variables$MutationRegisterTokenMutation<TRes> {
  _CopyWithStubImpl$Variables$MutationRegisterTokenMutation(this._res);

  TRes _res;

  call({InputRegisterToken? input}) => _res;
}

@JsonSerializable(explicitToJson: true)
class MutationRegisterTokenMutation {
  MutationRegisterTokenMutation(
      {required this.registerToken, required this.$__typename});

  @override
  factory MutationRegisterTokenMutation.fromJson(Map<String, dynamic> json) =>
      _$MutationRegisterTokenMutationFromJson(json);

  final bool registerToken;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationRegisterTokenMutationToJson(this);
  int get hashCode {
    final l$registerToken = registerToken;
    final l$$__typename = $__typename;
    return Object.hashAll([l$registerToken, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationRegisterTokenMutation) ||
        runtimeType != other.runtimeType) return false;
    final l$registerToken = registerToken;
    final lOther$registerToken = other.registerToken;
    if (l$registerToken != lOther$registerToken) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$MutationRegisterTokenMutation
    on MutationRegisterTokenMutation {
  CopyWith$MutationRegisterTokenMutation<MutationRegisterTokenMutation>
      get copyWith => CopyWith$MutationRegisterTokenMutation(this, (i) => i);
}

abstract class CopyWith$MutationRegisterTokenMutation<TRes> {
  factory CopyWith$MutationRegisterTokenMutation(
          MutationRegisterTokenMutation instance,
          TRes Function(MutationRegisterTokenMutation) then) =
      _CopyWithImpl$MutationRegisterTokenMutation;

  factory CopyWith$MutationRegisterTokenMutation.stub(TRes res) =
      _CopyWithStubImpl$MutationRegisterTokenMutation;

  TRes call({bool? registerToken, String? $__typename});
}

class _CopyWithImpl$MutationRegisterTokenMutation<TRes>
    implements CopyWith$MutationRegisterTokenMutation<TRes> {
  _CopyWithImpl$MutationRegisterTokenMutation(this._instance, this._then);

  final MutationRegisterTokenMutation _instance;

  final TRes Function(MutationRegisterTokenMutation) _then;

  static const _undefined = {};

  TRes call(
          {Object? registerToken = _undefined,
          Object? $__typename = _undefined}) =>
      _then(MutationRegisterTokenMutation(
          registerToken: registerToken == _undefined || registerToken == null
              ? _instance.registerToken
              : (registerToken as bool),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$MutationRegisterTokenMutation<TRes>
    implements CopyWith$MutationRegisterTokenMutation<TRes> {
  _CopyWithStubImpl$MutationRegisterTokenMutation(this._res);

  TRes _res;

  call({bool? registerToken, String? $__typename}) => _res;
}

const documentNodeMutationRegisterTokenMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'RegisterTokenMutation'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type: NamedTypeNode(
                name: NameNode(value: 'RegisterToken'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'registerToken'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: VariableNode(name: NameNode(value: 'input')))
            ],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
MutationRegisterTokenMutation _parserFn$MutationRegisterTokenMutation(
        Map<String, dynamic> data) =>
    MutationRegisterTokenMutation.fromJson(data);
typedef OnMutationCompleted$MutationRegisterTokenMutation = FutureOr<void>
    Function(dynamic, MutationRegisterTokenMutation?);

class Options$MutationRegisterTokenMutation
    extends graphql.MutationOptions<MutationRegisterTokenMutation> {
  Options$MutationRegisterTokenMutation(
      {String? operationName,
      Variables$MutationRegisterTokenMutation? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$MutationRegisterTokenMutation? onCompleted,
      graphql.OnMutationUpdate<MutationRegisterTokenMutation>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$MutationRegisterTokenMutation(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationRegisterTokenMutation,
            parserFn: _parserFn$MutationRegisterTokenMutation);

  final OnMutationCompleted$MutationRegisterTokenMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$MutationRegisterTokenMutation
    extends graphql.WatchQueryOptions<MutationRegisterTokenMutation> {
  WatchOptions$MutationRegisterTokenMutation(
      {String? operationName,
      Variables$MutationRegisterTokenMutation? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeMutationRegisterTokenMutation,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$MutationRegisterTokenMutation);
}

extension ClientExtension$MutationRegisterTokenMutation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationRegisterTokenMutation>>
      mutateRegisterTokenMutation(
              [Options$MutationRegisterTokenMutation? options]) async =>
          await this.mutate(options ?? Options$MutationRegisterTokenMutation());
  graphql.ObservableQuery<MutationRegisterTokenMutation>
      watchMutationRegisterTokenMutation(
              [WatchOptions$MutationRegisterTokenMutation? options]) =>
          this.watchMutation(
              options ?? WatchOptions$MutationRegisterTokenMutation());
}
