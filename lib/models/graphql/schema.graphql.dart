import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class InputClearNotificationIn {
  InputClearNotificationIn({this.userId});

  @override
  factory InputClearNotificationIn.fromJson(Map<String, dynamic> json) =>
      _$InputClearNotificationInFromJson(json);

  final int? userId;

  Map<String, dynamic> toJson() => _$InputClearNotificationInToJson(this);
  int get hashCode {
    final l$userId = userId;
    return Object.hashAll([l$userId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputClearNotificationIn) ||
        runtimeType != other.runtimeType) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    return true;
  }

  CopyWith$InputClearNotificationIn<InputClearNotificationIn> get copyWith =>
      CopyWith$InputClearNotificationIn(this, (i) => i);
}

abstract class CopyWith$InputClearNotificationIn<TRes> {
  factory CopyWith$InputClearNotificationIn(InputClearNotificationIn instance,
          TRes Function(InputClearNotificationIn) then) =
      _CopyWithImpl$InputClearNotificationIn;

  factory CopyWith$InputClearNotificationIn.stub(TRes res) =
      _CopyWithStubImpl$InputClearNotificationIn;

  TRes call({int? userId});
}

class _CopyWithImpl$InputClearNotificationIn<TRes>
    implements CopyWith$InputClearNotificationIn<TRes> {
  _CopyWithImpl$InputClearNotificationIn(this._instance, this._then);

  final InputClearNotificationIn _instance;

  final TRes Function(InputClearNotificationIn) _then;

  static const _undefined = {};

  TRes call({Object? userId = _undefined}) => _then(InputClearNotificationIn(
      userId: userId == _undefined ? _instance.userId : (userId as int?)));
}

class _CopyWithStubImpl$InputClearNotificationIn<TRes>
    implements CopyWith$InputClearNotificationIn<TRes> {
  _CopyWithStubImpl$InputClearNotificationIn(this._res);

  TRes _res;

  call({int? userId}) => _res;
}

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
class InputNewOrder {
  InputNewOrder(
      {required this.products,
      required this.status,
      required this.totalCost,
      required this.userId});

  @override
  factory InputNewOrder.fromJson(Map<String, dynamic> json) =>
      _$InputNewOrderFromJson(json);

  final List<InputProductDetailIn?> products;

  final String status;

  final double totalCost;

  final int userId;

  Map<String, dynamic> toJson() => _$InputNewOrderToJson(this);
  int get hashCode {
    final l$products = products;
    final l$status = status;
    final l$totalCost = totalCost;
    final l$userId = userId;
    return Object.hashAll([
      Object.hashAll(l$products.map((v) => v)),
      l$status,
      l$totalCost,
      l$userId
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputNewOrder) || runtimeType != other.runtimeType)
      return false;
    final l$products = products;
    final lOther$products = other.products;
    if (l$products.length != lOther$products.length) return false;
    for (int i = 0; i < l$products.length; i++) {
      final l$products$entry = l$products[i];
      final lOther$products$entry = lOther$products[i];
      if (l$products$entry != lOther$products$entry) return false;
    }

    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) return false;
    final l$totalCost = totalCost;
    final lOther$totalCost = other.totalCost;
    if (l$totalCost != lOther$totalCost) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    return true;
  }

  CopyWith$InputNewOrder<InputNewOrder> get copyWith =>
      CopyWith$InputNewOrder(this, (i) => i);
}

abstract class CopyWith$InputNewOrder<TRes> {
  factory CopyWith$InputNewOrder(
          InputNewOrder instance, TRes Function(InputNewOrder) then) =
      _CopyWithImpl$InputNewOrder;

  factory CopyWith$InputNewOrder.stub(TRes res) =
      _CopyWithStubImpl$InputNewOrder;

  TRes call(
      {List<InputProductDetailIn?>? products,
      String? status,
      double? totalCost,
      int? userId});
  TRes products(
      Iterable<InputProductDetailIn?> Function(
              Iterable<CopyWith$InputProductDetailIn<InputProductDetailIn>?>)
          _fn);
}

class _CopyWithImpl$InputNewOrder<TRes>
    implements CopyWith$InputNewOrder<TRes> {
  _CopyWithImpl$InputNewOrder(this._instance, this._then);

  final InputNewOrder _instance;

  final TRes Function(InputNewOrder) _then;

  static const _undefined = {};

  TRes call(
          {Object? products = _undefined,
          Object? status = _undefined,
          Object? totalCost = _undefined,
          Object? userId = _undefined}) =>
      _then(InputNewOrder(
          products: products == _undefined || products == null
              ? _instance.products
              : (products as List<InputProductDetailIn?>),
          status: status == _undefined || status == null
              ? _instance.status
              : (status as String),
          totalCost: totalCost == _undefined || totalCost == null
              ? _instance.totalCost
              : (totalCost as double),
          userId: userId == _undefined || userId == null
              ? _instance.userId
              : (userId as int)));
  TRes products(
          Iterable<InputProductDetailIn?> Function(
                  Iterable<
                      CopyWith$InputProductDetailIn<InputProductDetailIn>?>)
              _fn) =>
      call(
          products: _fn(_instance.products.map((e) => e == null
              ? null
              : CopyWith$InputProductDetailIn(e, (i) => i))).toList());
}

class _CopyWithStubImpl$InputNewOrder<TRes>
    implements CopyWith$InputNewOrder<TRes> {
  _CopyWithStubImpl$InputNewOrder(this._res);

  TRes _res;

  call(
          {List<InputProductDetailIn?>? products,
          String? status,
          double? totalCost,
          int? userId}) =>
      _res;
  products(_fn) => _res;
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
  InputNotificationList({this.count, this.langCode, this.offset, this.userId});

  @override
  factory InputNotificationList.fromJson(Map<String, dynamic> json) =>
      _$InputNotificationListFromJson(json);

  final int? count;

  final String? langCode;

  final int? offset;

  final int? userId;

  Map<String, dynamic> toJson() => _$InputNotificationListToJson(this);
  int get hashCode {
    final l$count = count;
    final l$langCode = langCode;
    final l$offset = offset;
    final l$userId = userId;
    return Object.hashAll([l$count, l$langCode, l$offset, l$userId]);
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
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
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

  TRes call({int? count, String? langCode, int? offset, int? userId});
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
          Object? offset = _undefined,
          Object? userId = _undefined}) =>
      _then(InputNotificationList(
          count: count == _undefined ? _instance.count : (count as int?),
          langCode: langCode == _undefined
              ? _instance.langCode
              : (langCode as String?),
          offset: offset == _undefined ? _instance.offset : (offset as int?),
          userId: userId == _undefined ? _instance.userId : (userId as int?)));
}

class _CopyWithStubImpl$InputNotificationList<TRes>
    implements CopyWith$InputNotificationList<TRes> {
  _CopyWithStubImpl$InputNotificationList(this._res);

  TRes _res;

  call({int? count, String? langCode, int? offset, int? userId}) => _res;
}

@JsonSerializable(explicitToJson: true)
class InputOrderListingQuery {
  InputOrderListingQuery({this.count, this.offset, this.userId});

  @override
  factory InputOrderListingQuery.fromJson(Map<String, dynamic> json) =>
      _$InputOrderListingQueryFromJson(json);

  final int? count;

  final int? offset;

  final int? userId;

  Map<String, dynamic> toJson() => _$InputOrderListingQueryToJson(this);
  int get hashCode {
    final l$count = count;
    final l$offset = offset;
    final l$userId = userId;
    return Object.hashAll([l$count, l$offset, l$userId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputOrderListingQuery) || runtimeType != other.runtimeType)
      return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (l$offset != lOther$offset) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    return true;
  }

  CopyWith$InputOrderListingQuery<InputOrderListingQuery> get copyWith =>
      CopyWith$InputOrderListingQuery(this, (i) => i);
}

abstract class CopyWith$InputOrderListingQuery<TRes> {
  factory CopyWith$InputOrderListingQuery(InputOrderListingQuery instance,
          TRes Function(InputOrderListingQuery) then) =
      _CopyWithImpl$InputOrderListingQuery;

  factory CopyWith$InputOrderListingQuery.stub(TRes res) =
      _CopyWithStubImpl$InputOrderListingQuery;

  TRes call({int? count, int? offset, int? userId});
}

class _CopyWithImpl$InputOrderListingQuery<TRes>
    implements CopyWith$InputOrderListingQuery<TRes> {
  _CopyWithImpl$InputOrderListingQuery(this._instance, this._then);

  final InputOrderListingQuery _instance;

  final TRes Function(InputOrderListingQuery) _then;

  static const _undefined = {};

  TRes call(
          {Object? count = _undefined,
          Object? offset = _undefined,
          Object? userId = _undefined}) =>
      _then(InputOrderListingQuery(
          count: count == _undefined ? _instance.count : (count as int?),
          offset: offset == _undefined ? _instance.offset : (offset as int?),
          userId: userId == _undefined ? _instance.userId : (userId as int?)));
}

class _CopyWithStubImpl$InputOrderListingQuery<TRes>
    implements CopyWith$InputOrderListingQuery<TRes> {
  _CopyWithStubImpl$InputOrderListingQuery(this._res);

  TRes _res;

  call({int? count, int? offset, int? userId}) => _res;
}

@JsonSerializable(explicitToJson: true)
class InputProductDetailIn {
  InputProductDetailIn(
      {required this.count, required this.name, required this.pricePerUnit});

  @override
  factory InputProductDetailIn.fromJson(Map<String, dynamic> json) =>
      _$InputProductDetailInFromJson(json);

  final int count;

  final String name;

  final double pricePerUnit;

  Map<String, dynamic> toJson() => _$InputProductDetailInToJson(this);
  int get hashCode {
    final l$count = count;
    final l$name = name;
    final l$pricePerUnit = pricePerUnit;
    return Object.hashAll([l$count, l$name, l$pricePerUnit]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputProductDetailIn) || runtimeType != other.runtimeType)
      return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$pricePerUnit = pricePerUnit;
    final lOther$pricePerUnit = other.pricePerUnit;
    if (l$pricePerUnit != lOther$pricePerUnit) return false;
    return true;
  }

  CopyWith$InputProductDetailIn<InputProductDetailIn> get copyWith =>
      CopyWith$InputProductDetailIn(this, (i) => i);
}

abstract class CopyWith$InputProductDetailIn<TRes> {
  factory CopyWith$InputProductDetailIn(InputProductDetailIn instance,
          TRes Function(InputProductDetailIn) then) =
      _CopyWithImpl$InputProductDetailIn;

  factory CopyWith$InputProductDetailIn.stub(TRes res) =
      _CopyWithStubImpl$InputProductDetailIn;

  TRes call({int? count, String? name, double? pricePerUnit});
}

class _CopyWithImpl$InputProductDetailIn<TRes>
    implements CopyWith$InputProductDetailIn<TRes> {
  _CopyWithImpl$InputProductDetailIn(this._instance, this._then);

  final InputProductDetailIn _instance;

  final TRes Function(InputProductDetailIn) _then;

  static const _undefined = {};

  TRes call(
          {Object? count = _undefined,
          Object? name = _undefined,
          Object? pricePerUnit = _undefined}) =>
      _then(InputProductDetailIn(
          count: count == _undefined || count == null
              ? _instance.count
              : (count as int),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          pricePerUnit: pricePerUnit == _undefined || pricePerUnit == null
              ? _instance.pricePerUnit
              : (pricePerUnit as double)));
}

class _CopyWithStubImpl$InputProductDetailIn<TRes>
    implements CopyWith$InputProductDetailIn<TRes> {
  _CopyWithStubImpl$InputProductDetailIn(this._res);

  TRes _res;

  call({int? count, String? name, double? pricePerUnit}) => _res;
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
