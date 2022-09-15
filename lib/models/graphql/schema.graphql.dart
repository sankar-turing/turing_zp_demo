import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class InputMarkRead {
  InputMarkRead({required this.id});

  @override
  factory InputMarkRead.fromJson(Map<String, dynamic> json) =>
      _$InputMarkReadFromJson(json);

  final int id;

  Map<String, dynamic> toJson() => _$InputMarkReadToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputMarkRead) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }

  CopyWith$InputMarkRead<InputMarkRead> get copyWith =>
      CopyWith$InputMarkRead(this, (i) => i);
}

abstract class CopyWith$InputMarkRead<TRes> {
  factory CopyWith$InputMarkRead(
          InputMarkRead instance, TRes Function(InputMarkRead) then) =
      _CopyWithImpl$InputMarkRead;

  factory CopyWith$InputMarkRead.stub(TRes res) =
      _CopyWithStubImpl$InputMarkRead;

  TRes call({int? id});
}

class _CopyWithImpl$InputMarkRead<TRes>
    implements CopyWith$InputMarkRead<TRes> {
  _CopyWithImpl$InputMarkRead(this._instance, this._then);

  final InputMarkRead _instance;

  final TRes Function(InputMarkRead) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) => _then(InputMarkRead(
      id: id == _undefined || id == null ? _instance.id : (id as int)));
}

class _CopyWithStubImpl$InputMarkRead<TRes>
    implements CopyWith$InputMarkRead<TRes> {
  _CopyWithStubImpl$InputMarkRead(this._res);

  TRes _res;

  call({int? id}) => _res;
}

@JsonSerializable(explicitToJson: true)
class InputNewNotification {
  InputNewNotification(
      {required this.body,
      required this.id,
      required this.title,
      required this.userId});

  @override
  factory InputNewNotification.fromJson(Map<String, dynamic> json) =>
      _$InputNewNotificationFromJson(json);

  final String body;

  final String id;

  final String title;

  final int userId;

  Map<String, dynamic> toJson() => _$InputNewNotificationToJson(this);
  int get hashCode {
    final l$body = body;
    final l$id = id;
    final l$title = title;
    final l$userId = userId;
    return Object.hashAll([l$body, l$id, l$title, l$userId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputNewNotification) || runtimeType != other.runtimeType)
      return false;
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    return true;
  }

  CopyWith$InputNewNotification<InputNewNotification> get copyWith =>
      CopyWith$InputNewNotification(this, (i) => i);
}

abstract class CopyWith$InputNewNotification<TRes> {
  factory CopyWith$InputNewNotification(InputNewNotification instance,
          TRes Function(InputNewNotification) then) =
      _CopyWithImpl$InputNewNotification;

  factory CopyWith$InputNewNotification.stub(TRes res) =
      _CopyWithStubImpl$InputNewNotification;

  TRes call({String? body, String? id, String? title, int? userId});
}

class _CopyWithImpl$InputNewNotification<TRes>
    implements CopyWith$InputNewNotification<TRes> {
  _CopyWithImpl$InputNewNotification(this._instance, this._then);

  final InputNewNotification _instance;

  final TRes Function(InputNewNotification) _then;

  static const _undefined = {};

  TRes call(
          {Object? body = _undefined,
          Object? id = _undefined,
          Object? title = _undefined,
          Object? userId = _undefined}) =>
      _then(InputNewNotification(
          body: body == _undefined || body == null
              ? _instance.body
              : (body as String),
          id: id == _undefined || id == null ? _instance.id : (id as String),
          title: title == _undefined || title == null
              ? _instance.title
              : (title as String),
          userId: userId == _undefined || userId == null
              ? _instance.userId
              : (userId as int)));
}

class _CopyWithStubImpl$InputNewNotification<TRes>
    implements CopyWith$InputNewNotification<TRes> {
  _CopyWithStubImpl$InputNewNotification(this._res);

  TRes _res;

  call({String? body, String? id, String? title, int? userId}) => _res;
}

@JsonSerializable(explicitToJson: true)
class InputNewSimpleNotification {
  InputNewSimpleNotification(
      {required this.hyperLink,
      required this.langCode,
      required this.orderDescription,
      required this.orderId,
      required this.orderType,
      required this.userId});

  @override
  factory InputNewSimpleNotification.fromJson(Map<String, dynamic> json) =>
      _$InputNewSimpleNotificationFromJson(json);

  final String hyperLink;

  final String langCode;

  final String orderDescription;

  final int orderId;

  final String orderType;

  final int userId;

  Map<String, dynamic> toJson() => _$InputNewSimpleNotificationToJson(this);
  int get hashCode {
    final l$hyperLink = hyperLink;
    final l$langCode = langCode;
    final l$orderDescription = orderDescription;
    final l$orderId = orderId;
    final l$orderType = orderType;
    final l$userId = userId;
    return Object.hashAll([
      l$hyperLink,
      l$langCode,
      l$orderDescription,
      l$orderId,
      l$orderType,
      l$userId
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputNewSimpleNotification) ||
        runtimeType != other.runtimeType) return false;
    final l$hyperLink = hyperLink;
    final lOther$hyperLink = other.hyperLink;
    if (l$hyperLink != lOther$hyperLink) return false;
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
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    return true;
  }

  CopyWith$InputNewSimpleNotification<InputNewSimpleNotification>
      get copyWith => CopyWith$InputNewSimpleNotification(this, (i) => i);
}

abstract class CopyWith$InputNewSimpleNotification<TRes> {
  factory CopyWith$InputNewSimpleNotification(
          InputNewSimpleNotification instance,
          TRes Function(InputNewSimpleNotification) then) =
      _CopyWithImpl$InputNewSimpleNotification;

  factory CopyWith$InputNewSimpleNotification.stub(TRes res) =
      _CopyWithStubImpl$InputNewSimpleNotification;

  TRes call(
      {String? hyperLink,
      String? langCode,
      String? orderDescription,
      int? orderId,
      String? orderType,
      int? userId});
}

class _CopyWithImpl$InputNewSimpleNotification<TRes>
    implements CopyWith$InputNewSimpleNotification<TRes> {
  _CopyWithImpl$InputNewSimpleNotification(this._instance, this._then);

  final InputNewSimpleNotification _instance;

  final TRes Function(InputNewSimpleNotification) _then;

  static const _undefined = {};

  TRes call(
          {Object? hyperLink = _undefined,
          Object? langCode = _undefined,
          Object? orderDescription = _undefined,
          Object? orderId = _undefined,
          Object? orderType = _undefined,
          Object? userId = _undefined}) =>
      _then(InputNewSimpleNotification(
          hyperLink: hyperLink == _undefined || hyperLink == null
              ? _instance.hyperLink
              : (hyperLink as String),
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
          userId: userId == _undefined || userId == null
              ? _instance.userId
              : (userId as int)));
}

class _CopyWithStubImpl$InputNewSimpleNotification<TRes>
    implements CopyWith$InputNewSimpleNotification<TRes> {
  _CopyWithStubImpl$InputNewSimpleNotification(this._res);

  TRes _res;

  call(
          {String? hyperLink,
          String? langCode,
          String? orderDescription,
          int? orderId,
          String? orderType,
          int? userId}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class InputNotificationList {
  InputNotificationList({this.count, this.langCode, this.offset});

  @override
  factory InputNotificationList.fromJson(Map<String, dynamic> json) =>
      _$InputNotificationListFromJson(json);

  final int? count;

  final String? langCode;

  final int? offset;

  Map<String, dynamic> toJson() => _$InputNotificationListToJson(this);
  int get hashCode {
    final l$count = count;
    final l$langCode = langCode;
    final l$offset = offset;
    return Object.hashAll([l$count, l$langCode, l$offset]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputNotificationList) || runtimeType != other.runtimeType)
      return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$langCode = langCode;
    final lOther$langCode = other.langCode;
    if (l$langCode != lOther$langCode) return false;
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (l$offset != lOther$offset) return false;
    return true;
  }

  CopyWith$InputNotificationList<InputNotificationList> get copyWith =>
      CopyWith$InputNotificationList(this, (i) => i);
}

abstract class CopyWith$InputNotificationList<TRes> {
  factory CopyWith$InputNotificationList(InputNotificationList instance,
          TRes Function(InputNotificationList) then) =
      _CopyWithImpl$InputNotificationList;

  factory CopyWith$InputNotificationList.stub(TRes res) =
      _CopyWithStubImpl$InputNotificationList;

  TRes call({int? count, String? langCode, int? offset});
}

class _CopyWithImpl$InputNotificationList<TRes>
    implements CopyWith$InputNotificationList<TRes> {
  _CopyWithImpl$InputNotificationList(this._instance, this._then);

  final InputNotificationList _instance;

  final TRes Function(InputNotificationList) _then;

  static const _undefined = {};

  TRes call(
          {Object? count = _undefined,
          Object? langCode = _undefined,
          Object? offset = _undefined}) =>
      _then(InputNotificationList(
          count: count == _undefined ? _instance.count : (count as int?),
          langCode: langCode == _undefined
              ? _instance.langCode
              : (langCode as String?),
          offset: offset == _undefined ? _instance.offset : (offset as int?)));
}

class _CopyWithStubImpl$InputNotificationList<TRes>
    implements CopyWith$InputNotificationList<TRes> {
  _CopyWithStubImpl$InputNotificationList(this._res);

  TRes _res;

  call({int? count, String? langCode, int? offset}) => _res;
}

@JsonSerializable(explicitToJson: true)
class InputRegisterToken {
  InputRegisterToken({required this.token, required this.userId});

  @override
  factory InputRegisterToken.fromJson(Map<String, dynamic> json) =>
      _$InputRegisterTokenFromJson(json);

  final String token;

  final int userId;

  Map<String, dynamic> toJson() => _$InputRegisterTokenToJson(this);
  int get hashCode {
    final l$token = token;
    final l$userId = userId;
    return Object.hashAll([l$token, l$userId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputRegisterToken) || runtimeType != other.runtimeType)
      return false;
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    return true;
  }

  CopyWith$InputRegisterToken<InputRegisterToken> get copyWith =>
      CopyWith$InputRegisterToken(this, (i) => i);
}

abstract class CopyWith$InputRegisterToken<TRes> {
  factory CopyWith$InputRegisterToken(
          InputRegisterToken instance, TRes Function(InputRegisterToken) then) =
      _CopyWithImpl$InputRegisterToken;

  factory CopyWith$InputRegisterToken.stub(TRes res) =
      _CopyWithStubImpl$InputRegisterToken;

  TRes call({String? token, int? userId});
}

class _CopyWithImpl$InputRegisterToken<TRes>
    implements CopyWith$InputRegisterToken<TRes> {
  _CopyWithImpl$InputRegisterToken(this._instance, this._then);

  final InputRegisterToken _instance;

  final TRes Function(InputRegisterToken) _then;

  static const _undefined = {};

  TRes call({Object? token = _undefined, Object? userId = _undefined}) =>
      _then(InputRegisterToken(
          token: token == _undefined || token == null
              ? _instance.token
              : (token as String),
          userId: userId == _undefined || userId == null
              ? _instance.userId
              : (userId as int)));
}

class _CopyWithStubImpl$InputRegisterToken<TRes>
    implements CopyWith$InputRegisterToken<TRes> {
  _CopyWithStubImpl$InputRegisterToken(this._res);

  TRes _res;

  call({String? token, int? userId}) => _res;
}

const possibleTypesMap = {};
