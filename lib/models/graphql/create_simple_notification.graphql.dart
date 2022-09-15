import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'create_simple_notification.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$MutationCreateSimpleNotification {
  Variables$MutationCreateSimpleNotification({this.input});

  @override
  factory Variables$MutationCreateSimpleNotification.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$MutationCreateSimpleNotificationFromJson(json);

  final InputNewSimpleNotification? input;

  Map<String, dynamic> toJson() =>
      _$Variables$MutationCreateSimpleNotificationToJson(this);
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$MutationCreateSimpleNotification) ||
        runtimeType != other.runtimeType) return false;
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) return false;
    return true;
  }

  CopyWith$Variables$MutationCreateSimpleNotification<
          Variables$MutationCreateSimpleNotification>
      get copyWith =>
          CopyWith$Variables$MutationCreateSimpleNotification(this, (i) => i);
}

abstract class CopyWith$Variables$MutationCreateSimpleNotification<TRes> {
  factory CopyWith$Variables$MutationCreateSimpleNotification(
          Variables$MutationCreateSimpleNotification instance,
          TRes Function(Variables$MutationCreateSimpleNotification) then) =
      _CopyWithImpl$Variables$MutationCreateSimpleNotification;

  factory CopyWith$Variables$MutationCreateSimpleNotification.stub(TRes res) =
      _CopyWithStubImpl$Variables$MutationCreateSimpleNotification;

  TRes call({InputNewSimpleNotification? input});
}

class _CopyWithImpl$Variables$MutationCreateSimpleNotification<TRes>
    implements CopyWith$Variables$MutationCreateSimpleNotification<TRes> {
  _CopyWithImpl$Variables$MutationCreateSimpleNotification(
      this._instance, this._then);

  final Variables$MutationCreateSimpleNotification _instance;

  final TRes Function(Variables$MutationCreateSimpleNotification) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$MutationCreateSimpleNotification(
          input: input == _undefined
              ? _instance.input
              : (input as InputNewSimpleNotification?)));
}

class _CopyWithStubImpl$Variables$MutationCreateSimpleNotification<TRes>
    implements CopyWith$Variables$MutationCreateSimpleNotification<TRes> {
  _CopyWithStubImpl$Variables$MutationCreateSimpleNotification(this._res);

  TRes _res;

  call({InputNewSimpleNotification? input}) => _res;
}

@JsonSerializable(explicitToJson: true)
class MutationCreateSimpleNotification {
  MutationCreateSimpleNotification(
      {required this.createSimpleNotification, required this.$__typename});

  @override
  factory MutationCreateSimpleNotification.fromJson(
          Map<String, dynamic> json) =>
      _$MutationCreateSimpleNotificationFromJson(json);

  final MutationCreateSimpleNotificationcreateSimpleNotification
      createSimpleNotification;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$MutationCreateSimpleNotificationToJson(this);
  int get hashCode {
    final l$createSimpleNotification = createSimpleNotification;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createSimpleNotification, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationCreateSimpleNotification) ||
        runtimeType != other.runtimeType) return false;
    final l$createSimpleNotification = createSimpleNotification;
    final lOther$createSimpleNotification = other.createSimpleNotification;
    if (l$createSimpleNotification != lOther$createSimpleNotification)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$MutationCreateSimpleNotification
    on MutationCreateSimpleNotification {
  CopyWith$MutationCreateSimpleNotification<MutationCreateSimpleNotification>
      get copyWith => CopyWith$MutationCreateSimpleNotification(this, (i) => i);
}

abstract class CopyWith$MutationCreateSimpleNotification<TRes> {
  factory CopyWith$MutationCreateSimpleNotification(
          MutationCreateSimpleNotification instance,
          TRes Function(MutationCreateSimpleNotification) then) =
      _CopyWithImpl$MutationCreateSimpleNotification;

  factory CopyWith$MutationCreateSimpleNotification.stub(TRes res) =
      _CopyWithStubImpl$MutationCreateSimpleNotification;

  TRes call(
      {MutationCreateSimpleNotificationcreateSimpleNotification?
          createSimpleNotification,
      String? $__typename});
  CopyWith$MutationCreateSimpleNotificationcreateSimpleNotification<TRes>
      get createSimpleNotification;
}

class _CopyWithImpl$MutationCreateSimpleNotification<TRes>
    implements CopyWith$MutationCreateSimpleNotification<TRes> {
  _CopyWithImpl$MutationCreateSimpleNotification(this._instance, this._then);

  final MutationCreateSimpleNotification _instance;

  final TRes Function(MutationCreateSimpleNotification) _then;

  static const _undefined = {};

  TRes call(
          {Object? createSimpleNotification = _undefined,
          Object? $__typename = _undefined}) =>
      _then(MutationCreateSimpleNotification(
          createSimpleNotification: createSimpleNotification == _undefined ||
                  createSimpleNotification == null
              ? _instance.createSimpleNotification
              : (createSimpleNotification
                  as MutationCreateSimpleNotificationcreateSimpleNotification),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$MutationCreateSimpleNotificationcreateSimpleNotification<TRes>
      get createSimpleNotification {
    final local$createSimpleNotification = _instance.createSimpleNotification;
    return CopyWith$MutationCreateSimpleNotificationcreateSimpleNotification(
        local$createSimpleNotification,
        (e) => call(createSimpleNotification: e));
  }
}

class _CopyWithStubImpl$MutationCreateSimpleNotification<TRes>
    implements CopyWith$MutationCreateSimpleNotification<TRes> {
  _CopyWithStubImpl$MutationCreateSimpleNotification(this._res);

  TRes _res;

  call(
          {MutationCreateSimpleNotificationcreateSimpleNotification?
              createSimpleNotification,
          String? $__typename}) =>
      _res;
  CopyWith$MutationCreateSimpleNotificationcreateSimpleNotification<TRes>
      get createSimpleNotification =>
          CopyWith$MutationCreateSimpleNotificationcreateSimpleNotification
              .stub(_res);
}

const documentNodeMutationCreateSimpleNotification = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateSimpleNotification'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type: NamedTypeNode(
                name: NameNode(value: 'NewSimpleNotification'),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'createSimpleNotification'),
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
MutationCreateSimpleNotification _parserFn$MutationCreateSimpleNotification(
        Map<String, dynamic> data) =>
    MutationCreateSimpleNotification.fromJson(data);
typedef OnMutationCompleted$MutationCreateSimpleNotification = FutureOr<void>
    Function(dynamic, MutationCreateSimpleNotification?);

class Options$MutationCreateSimpleNotification
    extends graphql.MutationOptions<MutationCreateSimpleNotification> {
  Options$MutationCreateSimpleNotification(
      {String? operationName,
      Variables$MutationCreateSimpleNotification? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$MutationCreateSimpleNotification? onCompleted,
      graphql.OnMutationUpdate<MutationCreateSimpleNotification>? update,
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
                        : _parserFn$MutationCreateSimpleNotification(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationCreateSimpleNotification,
            parserFn: _parserFn$MutationCreateSimpleNotification);

  final OnMutationCompleted$MutationCreateSimpleNotification?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$MutationCreateSimpleNotification
    extends graphql.WatchQueryOptions<MutationCreateSimpleNotification> {
  WatchOptions$MutationCreateSimpleNotification(
      {String? operationName,
      Variables$MutationCreateSimpleNotification? variables,
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
            document: documentNodeMutationCreateSimpleNotification,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$MutationCreateSimpleNotification);
}

extension ClientExtension$MutationCreateSimpleNotification
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationCreateSimpleNotification>>
      mutateCreateSimpleNotification(
              [Options$MutationCreateSimpleNotification? options]) async =>
          await this
              .mutate(options ?? Options$MutationCreateSimpleNotification());
  graphql.ObservableQuery<MutationCreateSimpleNotification>
      watchMutationCreateSimpleNotification(
              [WatchOptions$MutationCreateSimpleNotification? options]) =>
          this.watchMutation(
              options ?? WatchOptions$MutationCreateSimpleNotification());
}

@JsonSerializable(explicitToJson: true)
class MutationCreateSimpleNotificationcreateSimpleNotification {
  MutationCreateSimpleNotificationcreateSimpleNotification(
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
  factory MutationCreateSimpleNotificationcreateSimpleNotification.fromJson(
          Map<String, dynamic> json) =>
      _$MutationCreateSimpleNotificationcreateSimpleNotificationFromJson(json);

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
      _$MutationCreateSimpleNotificationcreateSimpleNotificationToJson(this);
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
    if (!(other is MutationCreateSimpleNotificationcreateSimpleNotification) ||
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

extension UtilityExtension$MutationCreateSimpleNotificationcreateSimpleNotification
    on MutationCreateSimpleNotificationcreateSimpleNotification {
  CopyWith$MutationCreateSimpleNotificationcreateSimpleNotification<
          MutationCreateSimpleNotificationcreateSimpleNotification>
      get copyWith =>
          CopyWith$MutationCreateSimpleNotificationcreateSimpleNotification(
              this, (i) => i);
}

abstract class CopyWith$MutationCreateSimpleNotificationcreateSimpleNotification<
    TRes> {
  factory CopyWith$MutationCreateSimpleNotificationcreateSimpleNotification(
          MutationCreateSimpleNotificationcreateSimpleNotification instance,
          TRes Function(
                  MutationCreateSimpleNotificationcreateSimpleNotification)
              then) =
      _CopyWithImpl$MutationCreateSimpleNotificationcreateSimpleNotification;

  factory CopyWith$MutationCreateSimpleNotificationcreateSimpleNotification.stub(
          TRes res) =
      _CopyWithStubImpl$MutationCreateSimpleNotificationcreateSimpleNotification;

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

class _CopyWithImpl$MutationCreateSimpleNotificationcreateSimpleNotification<
        TRes>
    implements
        CopyWith$MutationCreateSimpleNotificationcreateSimpleNotification<
            TRes> {
  _CopyWithImpl$MutationCreateSimpleNotificationcreateSimpleNotification(
      this._instance, this._then);

  final MutationCreateSimpleNotificationcreateSimpleNotification _instance;

  final TRes Function(MutationCreateSimpleNotificationcreateSimpleNotification)
      _then;

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
      _then(MutationCreateSimpleNotificationcreateSimpleNotification(
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

class _CopyWithStubImpl$MutationCreateSimpleNotificationcreateSimpleNotification<
        TRes>
    implements
        CopyWith$MutationCreateSimpleNotificationcreateSimpleNotification<
            TRes> {
  _CopyWithStubImpl$MutationCreateSimpleNotificationcreateSimpleNotification(
      this._res);

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
