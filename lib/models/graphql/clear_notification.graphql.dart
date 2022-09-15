import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'clear_notification.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class MutationClearNotification {
  MutationClearNotification(
      {required this.clearNotification, required this.$__typename});

  @override
  factory MutationClearNotification.fromJson(Map<String, dynamic> json) =>
      _$MutationClearNotificationFromJson(json);

  final bool clearNotification;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationClearNotificationToJson(this);
  int get hashCode {
    final l$clearNotification = clearNotification;
    final l$$__typename = $__typename;
    return Object.hashAll([l$clearNotification, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationClearNotification) ||
        runtimeType != other.runtimeType) return false;
    final l$clearNotification = clearNotification;
    final lOther$clearNotification = other.clearNotification;
    if (l$clearNotification != lOther$clearNotification) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$MutationClearNotification
    on MutationClearNotification {
  CopyWith$MutationClearNotification<MutationClearNotification> get copyWith =>
      CopyWith$MutationClearNotification(this, (i) => i);
}

abstract class CopyWith$MutationClearNotification<TRes> {
  factory CopyWith$MutationClearNotification(MutationClearNotification instance,
          TRes Function(MutationClearNotification) then) =
      _CopyWithImpl$MutationClearNotification;

  factory CopyWith$MutationClearNotification.stub(TRes res) =
      _CopyWithStubImpl$MutationClearNotification;

  TRes call({bool? clearNotification, String? $__typename});
}

class _CopyWithImpl$MutationClearNotification<TRes>
    implements CopyWith$MutationClearNotification<TRes> {
  _CopyWithImpl$MutationClearNotification(this._instance, this._then);

  final MutationClearNotification _instance;

  final TRes Function(MutationClearNotification) _then;

  static const _undefined = {};

  TRes call(
          {Object? clearNotification = _undefined,
          Object? $__typename = _undefined}) =>
      _then(MutationClearNotification(
          clearNotification:
              clearNotification == _undefined || clearNotification == null
                  ? _instance.clearNotification
                  : (clearNotification as bool),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$MutationClearNotification<TRes>
    implements CopyWith$MutationClearNotification<TRes> {
  _CopyWithStubImpl$MutationClearNotification(this._res);

  TRes _res;

  call({bool? clearNotification, String? $__typename}) => _res;
}

const documentNodeMutationClearNotification = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ClearNotification'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'clearNotification'),
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
]);
MutationClearNotification _parserFn$MutationClearNotification(
        Map<String, dynamic> data) =>
    MutationClearNotification.fromJson(data);
typedef OnMutationCompleted$MutationClearNotification = FutureOr<void> Function(
    dynamic, MutationClearNotification?);

class Options$MutationClearNotification
    extends graphql.MutationOptions<MutationClearNotification> {
  Options$MutationClearNotification(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$MutationClearNotification? onCompleted,
      graphql.OnMutationUpdate<MutationClearNotification>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
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
                        : _parserFn$MutationClearNotification(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationClearNotification,
            parserFn: _parserFn$MutationClearNotification);

  final OnMutationCompleted$MutationClearNotification? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$MutationClearNotification
    extends graphql.WatchQueryOptions<MutationClearNotification> {
  WatchOptions$MutationClearNotification(
      {String? operationName,
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
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeMutationClearNotification,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$MutationClearNotification);
}

extension ClientExtension$MutationClearNotification on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationClearNotification>>
      mutateClearNotification(
              [Options$MutationClearNotification? options]) async =>
          await this.mutate(options ?? Options$MutationClearNotification());
  graphql.ObservableQuery<
      MutationClearNotification> watchMutationClearNotification(
          [WatchOptions$MutationClearNotification? options]) =>
      this.watchMutation(options ?? WatchOptions$MutationClearNotification());
}
