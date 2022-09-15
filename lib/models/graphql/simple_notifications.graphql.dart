import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'simple_notifications.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$QuerySimpleNotifications {
  Variables$QuerySimpleNotifications({this.input});

  @override
  factory Variables$QuerySimpleNotifications.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$QuerySimpleNotificationsFromJson(json);

  final InputNotificationList? input;

  Map<String, dynamic> toJson() =>
      _$Variables$QuerySimpleNotificationsToJson(this);
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$QuerySimpleNotifications) ||
        runtimeType != other.runtimeType) return false;
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) return false;
    return true;
  }

  CopyWith$Variables$QuerySimpleNotifications<
          Variables$QuerySimpleNotifications>
      get copyWith =>
          CopyWith$Variables$QuerySimpleNotifications(this, (i) => i);
}

abstract class CopyWith$Variables$QuerySimpleNotifications<TRes> {
  factory CopyWith$Variables$QuerySimpleNotifications(
          Variables$QuerySimpleNotifications instance,
          TRes Function(Variables$QuerySimpleNotifications) then) =
      _CopyWithImpl$Variables$QuerySimpleNotifications;

  factory CopyWith$Variables$QuerySimpleNotifications.stub(TRes res) =
      _CopyWithStubImpl$Variables$QuerySimpleNotifications;

  TRes call({InputNotificationList? input});
}

class _CopyWithImpl$Variables$QuerySimpleNotifications<TRes>
    implements CopyWith$Variables$QuerySimpleNotifications<TRes> {
  _CopyWithImpl$Variables$QuerySimpleNotifications(this._instance, this._then);

  final Variables$QuerySimpleNotifications _instance;

  final TRes Function(Variables$QuerySimpleNotifications) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$QuerySimpleNotifications(
          input: input == _undefined
              ? _instance.input
              : (input as InputNotificationList?)));
}

class _CopyWithStubImpl$Variables$QuerySimpleNotifications<TRes>
    implements CopyWith$Variables$QuerySimpleNotifications<TRes> {
  _CopyWithStubImpl$Variables$QuerySimpleNotifications(this._res);

  TRes _res;

  call({InputNotificationList? input}) => _res;
}

@JsonSerializable(explicitToJson: true)
class QuerySimpleNotifications {
  QuerySimpleNotifications(
      {required this.simpleNotifications, required this.$__typename});

  @override
  factory QuerySimpleNotifications.fromJson(Map<String, dynamic> json) =>
      _$QuerySimpleNotificationsFromJson(json);

  final QuerySimpleNotificationssimpleNotifications simpleNotifications;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QuerySimpleNotificationsToJson(this);
  int get hashCode {
    final l$simpleNotifications = simpleNotifications;
    final l$$__typename = $__typename;
    return Object.hashAll([l$simpleNotifications, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QuerySimpleNotifications) ||
        runtimeType != other.runtimeType) return false;
    final l$simpleNotifications = simpleNotifications;
    final lOther$simpleNotifications = other.simpleNotifications;
    if (l$simpleNotifications != lOther$simpleNotifications) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$QuerySimpleNotifications
    on QuerySimpleNotifications {
  CopyWith$QuerySimpleNotifications<QuerySimpleNotifications> get copyWith =>
      CopyWith$QuerySimpleNotifications(this, (i) => i);
}

abstract class CopyWith$QuerySimpleNotifications<TRes> {
  factory CopyWith$QuerySimpleNotifications(QuerySimpleNotifications instance,
          TRes Function(QuerySimpleNotifications) then) =
      _CopyWithImpl$QuerySimpleNotifications;

  factory CopyWith$QuerySimpleNotifications.stub(TRes res) =
      _CopyWithStubImpl$QuerySimpleNotifications;

  TRes call(
      {QuerySimpleNotificationssimpleNotifications? simpleNotifications,
      String? $__typename});
  CopyWith$QuerySimpleNotificationssimpleNotifications<TRes>
      get simpleNotifications;
}

class _CopyWithImpl$QuerySimpleNotifications<TRes>
    implements CopyWith$QuerySimpleNotifications<TRes> {
  _CopyWithImpl$QuerySimpleNotifications(this._instance, this._then);

  final QuerySimpleNotifications _instance;

  final TRes Function(QuerySimpleNotifications) _then;

  static const _undefined = {};

  TRes call(
          {Object? simpleNotifications = _undefined,
          Object? $__typename = _undefined}) =>
      _then(QuerySimpleNotifications(
          simpleNotifications:
              simpleNotifications == _undefined || simpleNotifications == null
                  ? _instance.simpleNotifications
                  : (simpleNotifications
                      as QuerySimpleNotificationssimpleNotifications),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$QuerySimpleNotificationssimpleNotifications<TRes>
      get simpleNotifications {
    final local$simpleNotifications = _instance.simpleNotifications;
    return CopyWith$QuerySimpleNotificationssimpleNotifications(
        local$simpleNotifications, (e) => call(simpleNotifications: e));
  }
}

class _CopyWithStubImpl$QuerySimpleNotifications<TRes>
    implements CopyWith$QuerySimpleNotifications<TRes> {
  _CopyWithStubImpl$QuerySimpleNotifications(this._res);

  TRes _res;

  call(
          {QuerySimpleNotificationssimpleNotifications? simpleNotifications,
          String? $__typename}) =>
      _res;
  CopyWith$QuerySimpleNotificationssimpleNotifications<TRes>
      get simpleNotifications =>
          CopyWith$QuerySimpleNotificationssimpleNotifications.stub(_res);
}

const documentNodeQuerySimpleNotifications = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SimpleNotifications'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type: NamedTypeNode(
                name: NameNode(value: 'NotificationList'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'simpleNotifications'),
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
                  name: NameNode(value: 'nextOffset'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'notifications'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'createdTime'),
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
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'langCode'),
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
                        name: NameNode(value: 'userId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
QuerySimpleNotifications _parserFn$QuerySimpleNotifications(
        Map<String, dynamic> data) =>
    QuerySimpleNotifications.fromJson(data);

class Options$QuerySimpleNotifications
    extends graphql.QueryOptions<QuerySimpleNotifications> {
  Options$QuerySimpleNotifications(
      {String? operationName,
      Variables$QuerySimpleNotifications? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: documentNodeQuerySimpleNotifications,
            parserFn: _parserFn$QuerySimpleNotifications);
}

class WatchOptions$QuerySimpleNotifications
    extends graphql.WatchQueryOptions<QuerySimpleNotifications> {
  WatchOptions$QuerySimpleNotifications(
      {String? operationName,
      Variables$QuerySimpleNotifications? variables,
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
            document: documentNodeQuerySimpleNotifications,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$QuerySimpleNotifications);
}

class FetchMoreOptions$QuerySimpleNotifications
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$QuerySimpleNotifications(
      {required graphql.UpdateQuery updateQuery,
      Variables$QuerySimpleNotifications? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQuerySimpleNotifications);
}

extension ClientExtension$QuerySimpleNotifications on graphql.GraphQLClient {
  Future<graphql.QueryResult<QuerySimpleNotifications>>
      querySimpleNotifications(
              [Options$QuerySimpleNotifications? options]) async =>
          await this.query(options ?? Options$QuerySimpleNotifications());
  graphql.ObservableQuery<QuerySimpleNotifications>
      watchQuerySimpleNotifications(
              [WatchOptions$QuerySimpleNotifications? options]) =>
          this.watchQuery(options ?? WatchOptions$QuerySimpleNotifications());
  void writeQuerySimpleNotifications(
          {required QuerySimpleNotifications data,
          Variables$QuerySimpleNotifications? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQuerySimpleNotifications),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  QuerySimpleNotifications? readQuerySimpleNotifications(
      {Variables$QuerySimpleNotifications? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQuerySimpleNotifications),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : QuerySimpleNotifications.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class QuerySimpleNotificationssimpleNotifications {
  QuerySimpleNotificationssimpleNotifications(
      {required this.$__typename,
      required this.nextOffset,
      this.notifications});

  @override
  factory QuerySimpleNotificationssimpleNotifications.fromJson(
          Map<String, dynamic> json) =>
      _$QuerySimpleNotificationssimpleNotificationsFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final int nextOffset;

  final List<QuerySimpleNotificationssimpleNotificationsnotifications>?
      notifications;

  Map<String, dynamic> toJson() =>
      _$QuerySimpleNotificationssimpleNotificationsToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$nextOffset = nextOffset;
    final l$notifications = notifications;
    return Object.hashAll([
      l$$__typename,
      l$nextOffset,
      l$notifications == null
          ? null
          : Object.hashAll(l$notifications.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QuerySimpleNotificationssimpleNotifications) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$nextOffset = nextOffset;
    final lOther$nextOffset = other.nextOffset;
    if (l$nextOffset != lOther$nextOffset) return false;
    final l$notifications = notifications;
    final lOther$notifications = other.notifications;
    if (l$notifications != null && lOther$notifications != null) {
      if (l$notifications.length != lOther$notifications.length) return false;
      for (int i = 0; i < l$notifications.length; i++) {
        final l$notifications$entry = l$notifications[i];
        final lOther$notifications$entry = lOther$notifications[i];
        if (l$notifications$entry != lOther$notifications$entry) return false;
      }
    } else if (l$notifications != lOther$notifications) {
      return false;
    }

    return true;
  }
}

extension UtilityExtension$QuerySimpleNotificationssimpleNotifications
    on QuerySimpleNotificationssimpleNotifications {
  CopyWith$QuerySimpleNotificationssimpleNotifications<
          QuerySimpleNotificationssimpleNotifications>
      get copyWith =>
          CopyWith$QuerySimpleNotificationssimpleNotifications(this, (i) => i);
}

abstract class CopyWith$QuerySimpleNotificationssimpleNotifications<TRes> {
  factory CopyWith$QuerySimpleNotificationssimpleNotifications(
          QuerySimpleNotificationssimpleNotifications instance,
          TRes Function(QuerySimpleNotificationssimpleNotifications) then) =
      _CopyWithImpl$QuerySimpleNotificationssimpleNotifications;

  factory CopyWith$QuerySimpleNotificationssimpleNotifications.stub(TRes res) =
      _CopyWithStubImpl$QuerySimpleNotificationssimpleNotifications;

  TRes call(
      {String? $__typename,
      int? nextOffset,
      List<QuerySimpleNotificationssimpleNotificationsnotifications>?
          notifications});
  TRes notifications(
      Iterable<QuerySimpleNotificationssimpleNotificationsnotifications>? Function(
              Iterable<
                  CopyWith$QuerySimpleNotificationssimpleNotificationsnotifications<
                      QuerySimpleNotificationssimpleNotificationsnotifications>>?)
          _fn);
}

class _CopyWithImpl$QuerySimpleNotificationssimpleNotifications<TRes>
    implements CopyWith$QuerySimpleNotificationssimpleNotifications<TRes> {
  _CopyWithImpl$QuerySimpleNotificationssimpleNotifications(
      this._instance, this._then);

  final QuerySimpleNotificationssimpleNotifications _instance;

  final TRes Function(QuerySimpleNotificationssimpleNotifications) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? nextOffset = _undefined,
          Object? notifications = _undefined}) =>
      _then(QuerySimpleNotificationssimpleNotifications(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          nextOffset: nextOffset == _undefined || nextOffset == null
              ? _instance.nextOffset
              : (nextOffset as int),
          notifications: notifications == _undefined
              ? _instance.notifications
              : (notifications as List<
                  QuerySimpleNotificationssimpleNotificationsnotifications>?)));
  TRes notifications(
          Iterable<QuerySimpleNotificationssimpleNotificationsnotifications>? Function(
                  Iterable<
                      CopyWith$QuerySimpleNotificationssimpleNotificationsnotifications<
                          QuerySimpleNotificationssimpleNotificationsnotifications>>?)
              _fn) =>
      call(
          notifications: _fn(_instance.notifications?.map((e) =>
              CopyWith$QuerySimpleNotificationssimpleNotificationsnotifications(
                  e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$QuerySimpleNotificationssimpleNotifications<TRes>
    implements CopyWith$QuerySimpleNotificationssimpleNotifications<TRes> {
  _CopyWithStubImpl$QuerySimpleNotificationssimpleNotifications(this._res);

  TRes _res;

  call(
          {String? $__typename,
          int? nextOffset,
          List<QuerySimpleNotificationssimpleNotificationsnotifications>?
              notifications}) =>
      _res;
  notifications(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class QuerySimpleNotificationssimpleNotificationsnotifications {
  QuerySimpleNotificationssimpleNotificationsnotifications(
      {required this.createdTime,
      required this.hyperLink,
      required this.id,
      required this.langCode,
      required this.orderDescription,
      required this.orderId,
      required this.orderType,
      required this.status,
      required this.userId,
      required this.$__typename});

  @override
  factory QuerySimpleNotificationssimpleNotificationsnotifications.fromJson(
          Map<String, dynamic> json) =>
      _$QuerySimpleNotificationssimpleNotificationsnotificationsFromJson(json);

  final String createdTime;

  final String hyperLink;

  final int id;

  final String langCode;

  final String orderDescription;

  final int orderId;

  final String orderType;

  final bool status;

  final int userId;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QuerySimpleNotificationssimpleNotificationsnotificationsToJson(this);
  int get hashCode {
    final l$createdTime = createdTime;
    final l$hyperLink = hyperLink;
    final l$id = id;
    final l$langCode = langCode;
    final l$orderDescription = orderDescription;
    final l$orderId = orderId;
    final l$orderType = orderType;
    final l$status = status;
    final l$userId = userId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createdTime,
      l$hyperLink,
      l$id,
      l$langCode,
      l$orderDescription,
      l$orderId,
      l$orderType,
      l$status,
      l$userId,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QuerySimpleNotificationssimpleNotificationsnotifications) ||
        runtimeType != other.runtimeType) return false;
    final l$createdTime = createdTime;
    final lOther$createdTime = other.createdTime;
    if (l$createdTime != lOther$createdTime) return false;
    final l$hyperLink = hyperLink;
    final lOther$hyperLink = other.hyperLink;
    if (l$hyperLink != lOther$hyperLink) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$langCode = langCode;
    final lOther$langCode = other.langCode;
    if (l$langCode != lOther$langCode) return false;
    final l$orderDescription = orderDescription;
    final lOther$orderDescription = other.orderDescription;
    if (l$orderDescription != lOther$orderDescription) return false;
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) return false;
    final l$orderType = orderType;
    final lOther$orderType = other.orderType;
    if (l$orderType != lOther$orderType) return false;
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$QuerySimpleNotificationssimpleNotificationsnotifications
    on QuerySimpleNotificationssimpleNotificationsnotifications {
  CopyWith$QuerySimpleNotificationssimpleNotificationsnotifications<
          QuerySimpleNotificationssimpleNotificationsnotifications>
      get copyWith =>
          CopyWith$QuerySimpleNotificationssimpleNotificationsnotifications(
              this, (i) => i);
}

abstract class CopyWith$QuerySimpleNotificationssimpleNotificationsnotifications<
    TRes> {
  factory CopyWith$QuerySimpleNotificationssimpleNotificationsnotifications(
          QuerySimpleNotificationssimpleNotificationsnotifications instance,
          TRes Function(
                  QuerySimpleNotificationssimpleNotificationsnotifications)
              then) =
      _CopyWithImpl$QuerySimpleNotificationssimpleNotificationsnotifications;

  factory CopyWith$QuerySimpleNotificationssimpleNotificationsnotifications.stub(
          TRes res) =
      _CopyWithStubImpl$QuerySimpleNotificationssimpleNotificationsnotifications;

  TRes call(
      {String? createdTime,
      String? hyperLink,
      int? id,
      String? langCode,
      String? orderDescription,
      int? orderId,
      String? orderType,
      bool? status,
      int? userId,
      String? $__typename});
}

class _CopyWithImpl$QuerySimpleNotificationssimpleNotificationsnotifications<
        TRes>
    implements
        CopyWith$QuerySimpleNotificationssimpleNotificationsnotifications<
            TRes> {
  _CopyWithImpl$QuerySimpleNotificationssimpleNotificationsnotifications(
      this._instance, this._then);

  final QuerySimpleNotificationssimpleNotificationsnotifications _instance;

  final TRes Function(QuerySimpleNotificationssimpleNotificationsnotifications)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? createdTime = _undefined,
          Object? hyperLink = _undefined,
          Object? id = _undefined,
          Object? langCode = _undefined,
          Object? orderDescription = _undefined,
          Object? orderId = _undefined,
          Object? orderType = _undefined,
          Object? status = _undefined,
          Object? userId = _undefined,
          Object? $__typename = _undefined}) =>
      _then(QuerySimpleNotificationssimpleNotificationsnotifications(
          createdTime: createdTime == _undefined || createdTime == null
              ? _instance.createdTime
              : (createdTime as String),
          hyperLink: hyperLink == _undefined || hyperLink == null
              ? _instance.hyperLink
              : (hyperLink as String),
          id: id == _undefined || id == null ? _instance.id : (id as int),
          langCode: langCode == _undefined || langCode == null
              ? _instance.langCode
              : (langCode as String),
          orderDescription:
              orderDescription == _undefined || orderDescription == null
                  ? _instance.orderDescription
                  : (orderDescription as String),
          orderId: orderId == _undefined || orderId == null
              ? _instance.orderId
              : (orderId as int),
          orderType: orderType == _undefined || orderType == null
              ? _instance.orderType
              : (orderType as String),
          status: status == _undefined || status == null
              ? _instance.status
              : (status as bool),
          userId: userId == _undefined || userId == null
              ? _instance.userId
              : (userId as int),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$QuerySimpleNotificationssimpleNotificationsnotifications<
        TRes>
    implements
        CopyWith$QuerySimpleNotificationssimpleNotificationsnotifications<
            TRes> {
  _CopyWithStubImpl$QuerySimpleNotificationssimpleNotificationsnotifications(
      this._res);

  TRes _res;

  call(
          {String? createdTime,
          String? hyperLink,
          int? id,
          String? langCode,
          String? orderDescription,
          int? orderId,
          String? orderType,
          bool? status,
          int? userId,
          String? $__typename}) =>
      _res;
}
