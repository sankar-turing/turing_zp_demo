import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'notifications.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$QueryNotifications {
  Variables$QueryNotifications({this.count, this.offset});

  @override
  factory Variables$QueryNotifications.fromJson(Map<String, dynamic> json) =>
      _$Variables$QueryNotificationsFromJson(json);

  final int? count;

  final int? offset;

  Map<String, dynamic> toJson() => _$Variables$QueryNotificationsToJson(this);
  int get hashCode {
    final l$count = count;
    final l$offset = offset;
    return Object.hashAll([l$count, l$offset]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$QueryNotifications) ||
        runtimeType != other.runtimeType) return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (l$offset != lOther$offset) return false;
    return true;
  }

  CopyWith$Variables$QueryNotifications<Variables$QueryNotifications>
      get copyWith => CopyWith$Variables$QueryNotifications(this, (i) => i);
}

abstract class CopyWith$Variables$QueryNotifications<TRes> {
  factory CopyWith$Variables$QueryNotifications(
          Variables$QueryNotifications instance,
          TRes Function(Variables$QueryNotifications) then) =
      _CopyWithImpl$Variables$QueryNotifications;

  factory CopyWith$Variables$QueryNotifications.stub(TRes res) =
      _CopyWithStubImpl$Variables$QueryNotifications;

  TRes call({int? count, int? offset});
}

class _CopyWithImpl$Variables$QueryNotifications<TRes>
    implements CopyWith$Variables$QueryNotifications<TRes> {
  _CopyWithImpl$Variables$QueryNotifications(this._instance, this._then);

  final Variables$QueryNotifications _instance;

  final TRes Function(Variables$QueryNotifications) _then;

  static const _undefined = {};

  TRes call({Object? count = _undefined, Object? offset = _undefined}) =>
      _then(Variables$QueryNotifications(
          count: count == _undefined ? _instance.count : (count as int?),
          offset: offset == _undefined ? _instance.offset : (offset as int?)));
}

class _CopyWithStubImpl$Variables$QueryNotifications<TRes>
    implements CopyWith$Variables$QueryNotifications<TRes> {
  _CopyWithStubImpl$Variables$QueryNotifications(this._res);

  TRes _res;

  call({int? count, int? offset}) => _res;
}

@JsonSerializable(explicitToJson: true)
class QueryNotifications {
  QueryNotifications({required this.notifications, required this.$__typename});

  @override
  factory QueryNotifications.fromJson(Map<String, dynamic> json) =>
      _$QueryNotificationsFromJson(json);

  final QueryNotificationsnotifications notifications;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryNotificationsToJson(this);
  int get hashCode {
    final l$notifications = notifications;
    final l$$__typename = $__typename;
    return Object.hashAll([l$notifications, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryNotifications) || runtimeType != other.runtimeType)
      return false;
    final l$notifications = notifications;
    final lOther$notifications = other.notifications;
    if (l$notifications != lOther$notifications) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$QueryNotifications on QueryNotifications {
  CopyWith$QueryNotifications<QueryNotifications> get copyWith =>
      CopyWith$QueryNotifications(this, (i) => i);
}

abstract class CopyWith$QueryNotifications<TRes> {
  factory CopyWith$QueryNotifications(
          QueryNotifications instance, TRes Function(QueryNotifications) then) =
      _CopyWithImpl$QueryNotifications;

  factory CopyWith$QueryNotifications.stub(TRes res) =
      _CopyWithStubImpl$QueryNotifications;

  TRes call(
      {QueryNotificationsnotifications? notifications, String? $__typename});
  CopyWith$QueryNotificationsnotifications<TRes> get notifications;
}

class _CopyWithImpl$QueryNotifications<TRes>
    implements CopyWith$QueryNotifications<TRes> {
  _CopyWithImpl$QueryNotifications(this._instance, this._then);

  final QueryNotifications _instance;

  final TRes Function(QueryNotifications) _then;

  static const _undefined = {};

  TRes call(
          {Object? notifications = _undefined,
          Object? $__typename = _undefined}) =>
      _then(QueryNotifications(
          notifications: notifications == _undefined || notifications == null
              ? _instance.notifications
              : (notifications as QueryNotificationsnotifications),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$QueryNotificationsnotifications<TRes> get notifications {
    final local$notifications = _instance.notifications;
    return CopyWith$QueryNotificationsnotifications(
        local$notifications, (e) => call(notifications: e));
  }
}

class _CopyWithStubImpl$QueryNotifications<TRes>
    implements CopyWith$QueryNotifications<TRes> {
  _CopyWithStubImpl$QueryNotifications(this._res);

  TRes _res;

  call({QueryNotificationsnotifications? notifications, String? $__typename}) =>
      _res;
  CopyWith$QueryNotificationsnotifications<TRes> get notifications =>
      CopyWith$QueryNotificationsnotifications.stub(_res);
}

const documentNodeQueryNotifications = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Notifications'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'count')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'offset')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'notifications'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'count'),
                  value: VariableNode(name: NameNode(value: 'count'))),
              ArgumentNode(
                  name: NameNode(value: 'offset'),
                  value: VariableNode(name: NameNode(value: 'offset')))
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
                  name: NameNode(value: 'notifications'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'body'),
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
                        name: NameNode(value: 'read'),
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
                  ])),
              FieldNode(
                  name: NameNode(value: 'nextOffset'),
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
QueryNotifications _parserFn$QueryNotifications(Map<String, dynamic> data) =>
    QueryNotifications.fromJson(data);

class Options$QueryNotifications
    extends graphql.QueryOptions<QueryNotifications> {
  Options$QueryNotifications(
      {String? operationName,
      Variables$QueryNotifications? variables,
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
            document: documentNodeQueryNotifications,
            parserFn: _parserFn$QueryNotifications);
}

class WatchOptions$QueryNotifications
    extends graphql.WatchQueryOptions<QueryNotifications> {
  WatchOptions$QueryNotifications(
      {String? operationName,
      Variables$QueryNotifications? variables,
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
            document: documentNodeQueryNotifications,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$QueryNotifications);
}

class FetchMoreOptions$QueryNotifications extends graphql.FetchMoreOptions {
  FetchMoreOptions$QueryNotifications(
      {required graphql.UpdateQuery updateQuery,
      Variables$QueryNotifications? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQueryNotifications);
}

extension ClientExtension$QueryNotifications on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryNotifications>> queryNotifications(
          [Options$QueryNotifications? options]) async =>
      await this.query(options ?? Options$QueryNotifications());
  graphql.ObservableQuery<QueryNotifications> watchQueryNotifications(
          [WatchOptions$QueryNotifications? options]) =>
      this.watchQuery(options ?? WatchOptions$QueryNotifications());
  void writeQueryNotifications(
          {required QueryNotifications data,
          Variables$QueryNotifications? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryNotifications),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  QueryNotifications? readQueryNotifications(
      {Variables$QueryNotifications? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryNotifications),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : QueryNotifications.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class QueryNotificationsnotifications {
  QueryNotificationsnotifications(
      {required this.$__typename,
      this.notifications,
      required this.nextOffset});

  @override
  factory QueryNotificationsnotifications.fromJson(Map<String, dynamic> json) =>
      _$QueryNotificationsnotificationsFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final List<QueryNotificationsnotificationsnotifications>? notifications;

  final int nextOffset;

  Map<String, dynamic> toJson() =>
      _$QueryNotificationsnotificationsToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$notifications = notifications;
    final l$nextOffset = nextOffset;
    return Object.hashAll([
      l$$__typename,
      l$notifications == null
          ? null
          : Object.hashAll(l$notifications.map((v) => v)),
      l$nextOffset
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryNotificationsnotifications) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
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

    final l$nextOffset = nextOffset;
    final lOther$nextOffset = other.nextOffset;
    if (l$nextOffset != lOther$nextOffset) return false;
    return true;
  }
}

extension UtilityExtension$QueryNotificationsnotifications
    on QueryNotificationsnotifications {
  CopyWith$QueryNotificationsnotifications<QueryNotificationsnotifications>
      get copyWith => CopyWith$QueryNotificationsnotifications(this, (i) => i);
}

abstract class CopyWith$QueryNotificationsnotifications<TRes> {
  factory CopyWith$QueryNotificationsnotifications(
          QueryNotificationsnotifications instance,
          TRes Function(QueryNotificationsnotifications) then) =
      _CopyWithImpl$QueryNotificationsnotifications;

  factory CopyWith$QueryNotificationsnotifications.stub(TRes res) =
      _CopyWithStubImpl$QueryNotificationsnotifications;

  TRes call(
      {String? $__typename,
      List<QueryNotificationsnotificationsnotifications>? notifications,
      int? nextOffset});
  TRes notifications(
      Iterable<QueryNotificationsnotificationsnotifications>? Function(
              Iterable<
                  CopyWith$QueryNotificationsnotificationsnotifications<
                      QueryNotificationsnotificationsnotifications>>?)
          _fn);
}

class _CopyWithImpl$QueryNotificationsnotifications<TRes>
    implements CopyWith$QueryNotificationsnotifications<TRes> {
  _CopyWithImpl$QueryNotificationsnotifications(this._instance, this._then);

  final QueryNotificationsnotifications _instance;

  final TRes Function(QueryNotificationsnotifications) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? notifications = _undefined,
          Object? nextOffset = _undefined}) =>
      _then(QueryNotificationsnotifications(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          notifications: notifications == _undefined
              ? _instance.notifications
              : (notifications
                  as List<QueryNotificationsnotificationsnotifications>?),
          nextOffset: nextOffset == _undefined || nextOffset == null
              ? _instance.nextOffset
              : (nextOffset as int)));
  TRes notifications(
          Iterable<QueryNotificationsnotificationsnotifications>? Function(
                  Iterable<
                      CopyWith$QueryNotificationsnotificationsnotifications<
                          QueryNotificationsnotificationsnotifications>>?)
              _fn) =>
      call(
          notifications: _fn(_instance.notifications?.map((e) =>
              CopyWith$QueryNotificationsnotificationsnotifications(
                  e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$QueryNotificationsnotifications<TRes>
    implements CopyWith$QueryNotificationsnotifications<TRes> {
  _CopyWithStubImpl$QueryNotificationsnotifications(this._res);

  TRes _res;

  call(
          {String? $__typename,
          List<QueryNotificationsnotificationsnotifications>? notifications,
          int? nextOffset}) =>
      _res;
  notifications(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class QueryNotificationsnotificationsnotifications {
  QueryNotificationsnotificationsnotifications(
      {required this.id,
      required this.title,
      required this.body,
      required this.userId,
      required this.read,
      required this.$__typename});

  @override
  factory QueryNotificationsnotificationsnotifications.fromJson(
          Map<String, dynamic> json) =>
      _$QueryNotificationsnotificationsnotificationsFromJson(json);

  final String id;

  final String title;

  final String body;

  final int userId;

  final bool read;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryNotificationsnotificationsnotificationsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$body = body;
    final l$userId = userId;
    final l$read = read;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$id, l$title, l$body, l$userId, l$read, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryNotificationsnotificationsnotifications) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    final l$read = read;
    final lOther$read = other.read;
    if (l$read != lOther$read) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$QueryNotificationsnotificationsnotifications
    on QueryNotificationsnotificationsnotifications {
  CopyWith$QueryNotificationsnotificationsnotifications<
          QueryNotificationsnotificationsnotifications>
      get copyWith =>
          CopyWith$QueryNotificationsnotificationsnotifications(this, (i) => i);
}

abstract class CopyWith$QueryNotificationsnotificationsnotifications<TRes> {
  factory CopyWith$QueryNotificationsnotificationsnotifications(
          QueryNotificationsnotificationsnotifications instance,
          TRes Function(QueryNotificationsnotificationsnotifications) then) =
      _CopyWithImpl$QueryNotificationsnotificationsnotifications;

  factory CopyWith$QueryNotificationsnotificationsnotifications.stub(TRes res) =
      _CopyWithStubImpl$QueryNotificationsnotificationsnotifications;

  TRes call(
      {String? id,
      String? title,
      String? body,
      int? userId,
      bool? read,
      String? $__typename});
}

class _CopyWithImpl$QueryNotificationsnotificationsnotifications<TRes>
    implements CopyWith$QueryNotificationsnotificationsnotifications<TRes> {
  _CopyWithImpl$QueryNotificationsnotificationsnotifications(
      this._instance, this._then);

  final QueryNotificationsnotificationsnotifications _instance;

  final TRes Function(QueryNotificationsnotificationsnotifications) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? title = _undefined,
          Object? body = _undefined,
          Object? userId = _undefined,
          Object? read = _undefined,
          Object? $__typename = _undefined}) =>
      _then(QueryNotificationsnotificationsnotifications(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String),
          body: body == _undefined || body == null
              ? _instance.body
              : (body as String),
          userId: userId == _undefined || userId == null
              ? _instance.userId
              : (userId as int),
          read: read == _undefined || read == null
              ? _instance.read
              : (read as bool),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$QueryNotificationsnotificationsnotifications<TRes>
    implements CopyWith$QueryNotificationsnotificationsnotifications<TRes> {
  _CopyWithStubImpl$QueryNotificationsnotificationsnotifications(this._res);

  TRes _res;

  call(
          {String? id,
          String? title,
          String? body,
          int? userId,
          bool? read,
          String? $__typename}) =>
      _res;
}
