import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'mark_read.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$MutationMarkReadMutation {
  Variables$MutationMarkReadMutation({this.input});

  @override
  factory Variables$MutationMarkReadMutation.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$MutationMarkReadMutationFromJson(json);

  final InputMarkRead? input;

  Map<String, dynamic> toJson() =>
      _$Variables$MutationMarkReadMutationToJson(this);
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$MutationMarkReadMutation) ||
        runtimeType != other.runtimeType) return false;
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) return false;
    return true;
  }

  CopyWith$Variables$MutationMarkReadMutation<
          Variables$MutationMarkReadMutation>
      get copyWith =>
          CopyWith$Variables$MutationMarkReadMutation(this, (i) => i);
}

abstract class CopyWith$Variables$MutationMarkReadMutation<TRes> {
  factory CopyWith$Variables$MutationMarkReadMutation(
          Variables$MutationMarkReadMutation instance,
          TRes Function(Variables$MutationMarkReadMutation) then) =
      _CopyWithImpl$Variables$MutationMarkReadMutation;

  factory CopyWith$Variables$MutationMarkReadMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$MutationMarkReadMutation;

  TRes call({InputMarkRead? input});
}

class _CopyWithImpl$Variables$MutationMarkReadMutation<TRes>
    implements CopyWith$Variables$MutationMarkReadMutation<TRes> {
  _CopyWithImpl$Variables$MutationMarkReadMutation(this._instance, this._then);

  final Variables$MutationMarkReadMutation _instance;

  final TRes Function(Variables$MutationMarkReadMutation) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$MutationMarkReadMutation(
          input: input == _undefined
              ? _instance.input
              : (input as InputMarkRead?)));
}

class _CopyWithStubImpl$Variables$MutationMarkReadMutation<TRes>
    implements CopyWith$Variables$MutationMarkReadMutation<TRes> {
  _CopyWithStubImpl$Variables$MutationMarkReadMutation(this._res);

  TRes _res;

  call({InputMarkRead? input}) => _res;
}

@JsonSerializable(explicitToJson: true)
class MutationMarkReadMutation {
  MutationMarkReadMutation({required this.markRead, required this.$__typename});

  @override
  factory MutationMarkReadMutation.fromJson(Map<String, dynamic> json) =>
      _$MutationMarkReadMutationFromJson(json);

  final MutationMarkReadMutationmarkRead markRead;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationMarkReadMutationToJson(this);
  int get hashCode {
    final l$markRead = markRead;
    final l$$__typename = $__typename;
    return Object.hashAll([l$markRead, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationMarkReadMutation) ||
        runtimeType != other.runtimeType) return false;
    final l$markRead = markRead;
    final lOther$markRead = other.markRead;
    if (l$markRead != lOther$markRead) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$MutationMarkReadMutation
    on MutationMarkReadMutation {
  CopyWith$MutationMarkReadMutation<MutationMarkReadMutation> get copyWith =>
      CopyWith$MutationMarkReadMutation(this, (i) => i);
}

abstract class CopyWith$MutationMarkReadMutation<TRes> {
  factory CopyWith$MutationMarkReadMutation(MutationMarkReadMutation instance,
          TRes Function(MutationMarkReadMutation) then) =
      _CopyWithImpl$MutationMarkReadMutation;

  factory CopyWith$MutationMarkReadMutation.stub(TRes res) =
      _CopyWithStubImpl$MutationMarkReadMutation;

  TRes call({MutationMarkReadMutationmarkRead? markRead, String? $__typename});
  CopyWith$MutationMarkReadMutationmarkRead<TRes> get markRead;
}

class _CopyWithImpl$MutationMarkReadMutation<TRes>
    implements CopyWith$MutationMarkReadMutation<TRes> {
  _CopyWithImpl$MutationMarkReadMutation(this._instance, this._then);

  final MutationMarkReadMutation _instance;

  final TRes Function(MutationMarkReadMutation) _then;

  static const _undefined = {};

  TRes call(
          {Object? markRead = _undefined, Object? $__typename = _undefined}) =>
      _then(MutationMarkReadMutation(
          markRead: markRead == _undefined || markRead == null
              ? _instance.markRead
              : (markRead as MutationMarkReadMutationmarkRead),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$MutationMarkReadMutationmarkRead<TRes> get markRead {
    final local$markRead = _instance.markRead;
    return CopyWith$MutationMarkReadMutationmarkRead(
        local$markRead, (e) => call(markRead: e));
  }
}

class _CopyWithStubImpl$MutationMarkReadMutation<TRes>
    implements CopyWith$MutationMarkReadMutation<TRes> {
  _CopyWithStubImpl$MutationMarkReadMutation(this._res);

  TRes _res;

  call({MutationMarkReadMutationmarkRead? markRead, String? $__typename}) =>
      _res;
  CopyWith$MutationMarkReadMutationmarkRead<TRes> get markRead =>
      CopyWith$MutationMarkReadMutationmarkRead.stub(_res);
}

const documentNodeMutationMarkReadMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'MarkReadMutation'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type: NamedTypeNode(
                name: NameNode(value: 'MarkRead'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'markRead'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: VariableNode(name: NameNode(value: 'input')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'orderId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'orderType'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'status'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'orderDescription'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'hyperLink'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'createdTime'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'userId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
MutationMarkReadMutation _parserFn$MutationMarkReadMutation(
        Map<String, dynamic> data) =>
    MutationMarkReadMutation.fromJson(data);
typedef OnMutationCompleted$MutationMarkReadMutation = FutureOr<void> Function(
    dynamic, MutationMarkReadMutation?);

class Options$MutationMarkReadMutation
    extends graphql.MutationOptions<MutationMarkReadMutation> {
  Options$MutationMarkReadMutation(
      {String? operationName,
      Variables$MutationMarkReadMutation? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$MutationMarkReadMutation? onCompleted,
      graphql.OnMutationUpdate<MutationMarkReadMutation>? update,
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
                        : _parserFn$MutationMarkReadMutation(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationMarkReadMutation,
            parserFn: _parserFn$MutationMarkReadMutation);

  final OnMutationCompleted$MutationMarkReadMutation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$MutationMarkReadMutation
    extends graphql.WatchQueryOptions<MutationMarkReadMutation> {
  WatchOptions$MutationMarkReadMutation(
      {String? operationName,
      Variables$MutationMarkReadMutation? variables,
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
            document: documentNodeMutationMarkReadMutation,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$MutationMarkReadMutation);
}

extension ClientExtension$MutationMarkReadMutation on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationMarkReadMutation>> mutateMarkReadMutation(
          [Options$MutationMarkReadMutation? options]) async =>
      await this.mutate(options ?? Options$MutationMarkReadMutation());
  graphql
      .ObservableQuery<MutationMarkReadMutation> watchMutationMarkReadMutation(
          [WatchOptions$MutationMarkReadMutation? options]) =>
      this.watchMutation(options ?? WatchOptions$MutationMarkReadMutation());
}

@JsonSerializable(explicitToJson: true)
class MutationMarkReadMutationmarkRead {
  MutationMarkReadMutationmarkRead(
      {required this.$__typename,
      required this.id,
      required this.orderId,
      required this.orderType,
      required this.status,
      required this.orderDescription,
      required this.hyperLink,
      required this.createdTime,
      required this.userId});

  @override
  factory MutationMarkReadMutationmarkRead.fromJson(
          Map<String, dynamic> json) =>
      _$MutationMarkReadMutationmarkReadFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final int id;

  final int orderId;

  final String orderType;

  final bool status;

  final String orderDescription;

  final String hyperLink;

  final String createdTime;

  final int userId;

  Map<String, dynamic> toJson() =>
      _$MutationMarkReadMutationmarkReadToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$orderId = orderId;
    final l$orderType = orderType;
    final l$status = status;
    final l$orderDescription = orderDescription;
    final l$hyperLink = hyperLink;
    final l$createdTime = createdTime;
    final l$userId = userId;
    return Object.hashAll([
      l$$__typename,
      l$id,
      l$orderId,
      l$orderType,
      l$status,
      l$orderDescription,
      l$hyperLink,
      l$createdTime,
      l$userId
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationMarkReadMutationmarkRead) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) return false;
    final l$orderType = orderType;
    final lOther$orderType = other.orderType;
    if (l$orderType != lOther$orderType) return false;
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) return false;
    final l$orderDescription = orderDescription;
    final lOther$orderDescription = other.orderDescription;
    if (l$orderDescription != lOther$orderDescription) return false;
    final l$hyperLink = hyperLink;
    final lOther$hyperLink = other.hyperLink;
    if (l$hyperLink != lOther$hyperLink) return false;
    final l$createdTime = createdTime;
    final lOther$createdTime = other.createdTime;
    if (l$createdTime != lOther$createdTime) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    return true;
  }
}

extension UtilityExtension$MutationMarkReadMutationmarkRead
    on MutationMarkReadMutationmarkRead {
  CopyWith$MutationMarkReadMutationmarkRead<MutationMarkReadMutationmarkRead>
      get copyWith => CopyWith$MutationMarkReadMutationmarkRead(this, (i) => i);
}

abstract class CopyWith$MutationMarkReadMutationmarkRead<TRes> {
  factory CopyWith$MutationMarkReadMutationmarkRead(
          MutationMarkReadMutationmarkRead instance,
          TRes Function(MutationMarkReadMutationmarkRead) then) =
      _CopyWithImpl$MutationMarkReadMutationmarkRead;

  factory CopyWith$MutationMarkReadMutationmarkRead.stub(TRes res) =
      _CopyWithStubImpl$MutationMarkReadMutationmarkRead;

  TRes call(
      {String? $__typename,
      int? id,
      int? orderId,
      String? orderType,
      bool? status,
      String? orderDescription,
      String? hyperLink,
      String? createdTime,
      int? userId});
}

class _CopyWithImpl$MutationMarkReadMutationmarkRead<TRes>
    implements CopyWith$MutationMarkReadMutationmarkRead<TRes> {
  _CopyWithImpl$MutationMarkReadMutationmarkRead(this._instance, this._then);

  final MutationMarkReadMutationmarkRead _instance;

  final TRes Function(MutationMarkReadMutationmarkRead) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? id = _undefined,
          Object? orderId = _undefined,
          Object? orderType = _undefined,
          Object? status = _undefined,
          Object? orderDescription = _undefined,
          Object? hyperLink = _undefined,
          Object? createdTime = _undefined,
          Object? userId = _undefined}) =>
      _then(MutationMarkReadMutationmarkRead(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          id: id == _undefined || id == null ? _instance.id : (id as int),
          orderId: orderId == _undefined || orderId == null
              ? _instance.orderId
              : (orderId as int),
          orderType: orderType == _undefined || orderType == null
              ? _instance.orderType
              : (orderType as String),
          status: status == _undefined || status == null
              ? _instance.status
              : (status as bool),
          orderDescription:
              orderDescription == _undefined || orderDescription == null
                  ? _instance.orderDescription
                  : (orderDescription as String),
          hyperLink: hyperLink == _undefined || hyperLink == null
              ? _instance.hyperLink
              : (hyperLink as String),
          createdTime: createdTime == _undefined || createdTime == null
              ? _instance.createdTime
              : (createdTime as String),
          userId: userId == _undefined || userId == null
              ? _instance.userId
              : (userId as int)));
}

class _CopyWithStubImpl$MutationMarkReadMutationmarkRead<TRes>
    implements CopyWith$MutationMarkReadMutationmarkRead<TRes> {
  _CopyWithStubImpl$MutationMarkReadMutationmarkRead(this._res);

  TRes _res;

  call(
          {String? $__typename,
          int? id,
          int? orderId,
          String? orderType,
          bool? status,
          String? orderDescription,
          String? hyperLink,
          String? createdTime,
          int? userId}) =>
      _res;
}
