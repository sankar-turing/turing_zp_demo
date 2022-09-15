import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'create_notification.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$MutationCreateNotification {
  Variables$MutationCreateNotification({required this.input});

  @override
  factory Variables$MutationCreateNotification.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$MutationCreateNotificationFromJson(json);

  final InputNewNotification input;

  Map<String, dynamic> toJson() =>
      _$Variables$MutationCreateNotificationToJson(this);
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$MutationCreateNotification) ||
        runtimeType != other.runtimeType) return false;
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) return false;
    return true;
  }

  CopyWith$Variables$MutationCreateNotification<
          Variables$MutationCreateNotification>
      get copyWith =>
          CopyWith$Variables$MutationCreateNotification(this, (i) => i);
}

abstract class CopyWith$Variables$MutationCreateNotification<TRes> {
  factory CopyWith$Variables$MutationCreateNotification(
          Variables$MutationCreateNotification instance,
          TRes Function(Variables$MutationCreateNotification) then) =
      _CopyWithImpl$Variables$MutationCreateNotification;

  factory CopyWith$Variables$MutationCreateNotification.stub(TRes res) =
      _CopyWithStubImpl$Variables$MutationCreateNotification;

  TRes call({InputNewNotification? input});
}

class _CopyWithImpl$Variables$MutationCreateNotification<TRes>
    implements CopyWith$Variables$MutationCreateNotification<TRes> {
  _CopyWithImpl$Variables$MutationCreateNotification(
      this._instance, this._then);

  final Variables$MutationCreateNotification _instance;

  final TRes Function(Variables$MutationCreateNotification) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$MutationCreateNotification(
          input: input == _undefined || input == null
              ? _instance.input
              : (input as InputNewNotification)));
}

class _CopyWithStubImpl$Variables$MutationCreateNotification<TRes>
    implements CopyWith$Variables$MutationCreateNotification<TRes> {
  _CopyWithStubImpl$Variables$MutationCreateNotification(this._res);

  TRes _res;

  call({InputNewNotification? input}) => _res;
}

@JsonSerializable(explicitToJson: true)
class MutationCreateNotification {
  MutationCreateNotification(
      {required this.createNotification, required this.$__typename});

  @override
  factory MutationCreateNotification.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateNotificationFromJson(json);

  final MutationCreateNotificationcreateNotification createNotification;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationCreateNotificationToJson(this);
  int get hashCode {
    final l$createNotification = createNotification;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createNotification, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationCreateNotification) ||
        runtimeType != other.runtimeType) return false;
    final l$createNotification = createNotification;
    final lOther$createNotification = other.createNotification;
    if (l$createNotification != lOther$createNotification) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$MutationCreateNotification
    on MutationCreateNotification {
  CopyWith$MutationCreateNotification<MutationCreateNotification>
      get copyWith => CopyWith$MutationCreateNotification(this, (i) => i);
}

abstract class CopyWith$MutationCreateNotification<TRes> {
  factory CopyWith$MutationCreateNotification(
          MutationCreateNotification instance,
          TRes Function(MutationCreateNotification) then) =
      _CopyWithImpl$MutationCreateNotification;

  factory CopyWith$MutationCreateNotification.stub(TRes res) =
      _CopyWithStubImpl$MutationCreateNotification;

  TRes call(
      {MutationCreateNotificationcreateNotification? createNotification,
      String? $__typename});
  CopyWith$MutationCreateNotificationcreateNotification<TRes>
      get createNotification;
}

class _CopyWithImpl$MutationCreateNotification<TRes>
    implements CopyWith$MutationCreateNotification<TRes> {
  _CopyWithImpl$MutationCreateNotification(this._instance, this._then);

  final MutationCreateNotification _instance;

  final TRes Function(MutationCreateNotification) _then;

  static const _undefined = {};

  TRes call(
          {Object? createNotification = _undefined,
          Object? $__typename = _undefined}) =>
      _then(MutationCreateNotification(
          createNotification:
              createNotification == _undefined || createNotification == null
                  ? _instance.createNotification
                  : (createNotification
                      as MutationCreateNotificationcreateNotification),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$MutationCreateNotificationcreateNotification<TRes>
      get createNotification {
    final local$createNotification = _instance.createNotification;
    return CopyWith$MutationCreateNotificationcreateNotification(
        local$createNotification, (e) => call(createNotification: e));
  }
}

class _CopyWithStubImpl$MutationCreateNotification<TRes>
    implements CopyWith$MutationCreateNotification<TRes> {
  _CopyWithStubImpl$MutationCreateNotification(this._res);

  TRes _res;

  call(
          {MutationCreateNotificationcreateNotification? createNotification,
          String? $__typename}) =>
      _res;
  CopyWith$MutationCreateNotificationcreateNotification<TRes>
      get createNotification =>
          CopyWith$MutationCreateNotificationcreateNotification.stub(_res);
}

const documentNodeMutationCreateNotification = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateNotification'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type: NamedTypeNode(
                name: NameNode(value: 'NewNotification'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'createNotification'),
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
MutationCreateNotification _parserFn$MutationCreateNotification(
        Map<String, dynamic> data) =>
    MutationCreateNotification.fromJson(data);
typedef OnMutationCompleted$MutationCreateNotification = FutureOr<void>
    Function(dynamic, MutationCreateNotification?);

class Options$MutationCreateNotification
    extends graphql.MutationOptions<MutationCreateNotification> {
  Options$MutationCreateNotification(
      {String? operationName,
      required Variables$MutationCreateNotification variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$MutationCreateNotification? onCompleted,
      graphql.OnMutationUpdate<MutationCreateNotification>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables.toJson(),
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
                        : _parserFn$MutationCreateNotification(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationCreateNotification,
            parserFn: _parserFn$MutationCreateNotification);

  final OnMutationCompleted$MutationCreateNotification? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$MutationCreateNotification
    extends graphql.WatchQueryOptions<MutationCreateNotification> {
  WatchOptions$MutationCreateNotification(
      {String? operationName,
      required Variables$MutationCreateNotification variables,
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
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeMutationCreateNotification,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$MutationCreateNotification);
}

extension ClientExtension$MutationCreateNotification on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationCreateNotification>>
      mutateCreateNotification(
              Options$MutationCreateNotification options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<MutationCreateNotification>
      watchMutationCreateNotification(
              WatchOptions$MutationCreateNotification options) =>
          this.watchMutation(options);
}

@JsonSerializable(explicitToJson: true)
class MutationCreateNotificationcreateNotification {
  MutationCreateNotificationcreateNotification(
      {required this.$__typename,
      required this.id,
      required this.title,
      required this.body,
      required this.userId,
      required this.read});

  @override
  factory MutationCreateNotificationcreateNotification.fromJson(
          Map<String, dynamic> json) =>
      _$MutationCreateNotificationcreateNotificationFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String id;

  final String title;

  final String body;

  final int userId;

  final bool read;

  Map<String, dynamic> toJson() =>
      _$MutationCreateNotificationcreateNotificationToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$title = title;
    final l$body = body;
    final l$userId = userId;
    final l$read = read;
    return Object.hashAll(
        [l$$__typename, l$id, l$title, l$body, l$userId, l$read]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationCreateNotificationcreateNotification) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
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
    return true;
  }
}

extension UtilityExtension$MutationCreateNotificationcreateNotification
    on MutationCreateNotificationcreateNotification {
  CopyWith$MutationCreateNotificationcreateNotification<
          MutationCreateNotificationcreateNotification>
      get copyWith =>
          CopyWith$MutationCreateNotificationcreateNotification(this, (i) => i);
}

abstract class CopyWith$MutationCreateNotificationcreateNotification<TRes> {
  factory CopyWith$MutationCreateNotificationcreateNotification(
          MutationCreateNotificationcreateNotification instance,
          TRes Function(MutationCreateNotificationcreateNotification) then) =
      _CopyWithImpl$MutationCreateNotificationcreateNotification;

  factory CopyWith$MutationCreateNotificationcreateNotification.stub(TRes res) =
      _CopyWithStubImpl$MutationCreateNotificationcreateNotification;

  TRes call(
      {String? $__typename,
      String? id,
      String? title,
      String? body,
      int? userId,
      bool? read});
}

class _CopyWithImpl$MutationCreateNotificationcreateNotification<TRes>
    implements CopyWith$MutationCreateNotificationcreateNotification<TRes> {
  _CopyWithImpl$MutationCreateNotificationcreateNotification(
      this._instance, this._then);

  final MutationCreateNotificationcreateNotification _instance;

  final TRes Function(MutationCreateNotificationcreateNotification) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? id = _undefined,
          Object? title = _undefined,
          Object? body = _undefined,
          Object? userId = _undefined,
          Object? read = _undefined}) =>
      _then(MutationCreateNotificationcreateNotification(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
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
              : (read as bool)));
}

class _CopyWithStubImpl$MutationCreateNotificationcreateNotification<TRes>
    implements CopyWith$MutationCreateNotificationcreateNotification<TRes> {
  _CopyWithStubImpl$MutationCreateNotificationcreateNotification(this._res);

  TRes _res;

  call(
          {String? $__typename,
          String? id,
          String? title,
          String? body,
          int? userId,
          bool? read}) =>
      _res;
}
