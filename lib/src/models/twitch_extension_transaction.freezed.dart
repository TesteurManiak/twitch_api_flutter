// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_extension_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Cost _$CostFromJson(Map<String, dynamic> json) {
  return _Cost.fromJson(json);
}

/// @nodoc
mixin _$Cost {
  /// Number of Bits required to acquire the product.
  int get amount => throw _privateConstructorUsedError;

  /// Always the string “Bits”.
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CostCopyWith<Cost> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostCopyWith<$Res> {
  factory $CostCopyWith(Cost value, $Res Function(Cost) then) =
      _$CostCopyWithImpl<$Res, Cost>;
  @useResult
  $Res call({int amount, String type});
}

/// @nodoc
class _$CostCopyWithImpl<$Res, $Val extends Cost>
    implements $CostCopyWith<$Res> {
  _$CostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CostImplCopyWith<$Res> implements $CostCopyWith<$Res> {
  factory _$$CostImplCopyWith(
          _$CostImpl value, $Res Function(_$CostImpl) then) =
      __$$CostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int amount, String type});
}

/// @nodoc
class __$$CostImplCopyWithImpl<$Res>
    extends _$CostCopyWithImpl<$Res, _$CostImpl>
    implements _$$CostImplCopyWith<$Res> {
  __$$CostImplCopyWithImpl(_$CostImpl _value, $Res Function(_$CostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? type = null,
  }) {
    return _then(_$CostImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CostImpl implements _Cost {
  const _$CostImpl({required this.amount, required this.type});

  factory _$CostImpl.fromJson(Map<String, dynamic> json) =>
      _$$CostImplFromJson(json);

  /// Number of Bits required to acquire the product.
  @override
  final int amount;

  /// Always the string “Bits”.
  @override
  final String type;

  @override
  String toString() {
    return 'Cost(amount: $amount, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CostImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CostImplCopyWith<_$CostImpl> get copyWith =>
      __$$CostImplCopyWithImpl<_$CostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CostImplToJson(
      this,
    );
  }
}

abstract class _Cost implements Cost {
  const factory _Cost({required final int amount, required final String type}) =
      _$CostImpl;

  factory _Cost.fromJson(Map<String, dynamic> json) = _$CostImpl.fromJson;

  @override

  /// Number of Bits required to acquire the product.
  int get amount;
  @override

  /// Always the string “Bits”.
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$CostImplCopyWith<_$CostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return _ProductData.fromJson(json);
}

/// @nodoc
mixin _$ProductData {
  /// Unique identifier for the product across the extension.
  String get sku => throw _privateConstructorUsedError;

  /// Object representing the cost to acquire the product.
  Cost get cost => throw _privateConstructorUsedError;

  /// Display Name of the product.
  String get displayName => throw _privateConstructorUsedError;

  /// Flag used to indicate if the product is in development.
  bool get inDevelopment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDataCopyWith<ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataCopyWith<$Res> {
  factory $ProductDataCopyWith(
          ProductData value, $Res Function(ProductData) then) =
      _$ProductDataCopyWithImpl<$Res, ProductData>;
  @useResult
  $Res call({String sku, Cost cost, String displayName, bool inDevelopment});

  $CostCopyWith<$Res> get cost;
}

/// @nodoc
class _$ProductDataCopyWithImpl<$Res, $Val extends ProductData>
    implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sku = null,
    Object? cost = null,
    Object? displayName = null,
    Object? inDevelopment = null,
  }) {
    return _then(_value.copyWith(
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as Cost,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      inDevelopment: null == inDevelopment
          ? _value.inDevelopment
          : inDevelopment // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CostCopyWith<$Res> get cost {
    return $CostCopyWith<$Res>(_value.cost, (value) {
      return _then(_value.copyWith(cost: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDataImplCopyWith<$Res>
    implements $ProductDataCopyWith<$Res> {
  factory _$$ProductDataImplCopyWith(
          _$ProductDataImpl value, $Res Function(_$ProductDataImpl) then) =
      __$$ProductDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sku, Cost cost, String displayName, bool inDevelopment});

  @override
  $CostCopyWith<$Res> get cost;
}

/// @nodoc
class __$$ProductDataImplCopyWithImpl<$Res>
    extends _$ProductDataCopyWithImpl<$Res, _$ProductDataImpl>
    implements _$$ProductDataImplCopyWith<$Res> {
  __$$ProductDataImplCopyWithImpl(
      _$ProductDataImpl _value, $Res Function(_$ProductDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sku = null,
    Object? cost = null,
    Object? displayName = null,
    Object? inDevelopment = null,
  }) {
    return _then(_$ProductDataImpl(
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as Cost,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      inDevelopment: null == inDevelopment
          ? _value.inDevelopment
          : inDevelopment // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDataImpl implements _ProductData {
  const _$ProductDataImpl(
      {required this.sku,
      required this.cost,
      required this.displayName,
      required this.inDevelopment});

  factory _$ProductDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDataImplFromJson(json);

  /// Unique identifier for the product across the extension.
  @override
  final String sku;

  /// Object representing the cost to acquire the product.
  @override
  final Cost cost;

  /// Display Name of the product.
  @override
  final String displayName;

  /// Flag used to indicate if the product is in development.
  @override
  final bool inDevelopment;

  @override
  String toString() {
    return 'ProductData(sku: $sku, cost: $cost, displayName: $displayName, inDevelopment: $inDevelopment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDataImpl &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.inDevelopment, inDevelopment) ||
                other.inDevelopment == inDevelopment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, sku, cost, displayName, inDevelopment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      __$$ProductDataImplCopyWithImpl<_$ProductDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDataImplToJson(
      this,
    );
  }
}

abstract class _ProductData implements ProductData {
  const factory _ProductData(
      {required final String sku,
      required final Cost cost,
      required final String displayName,
      required final bool inDevelopment}) = _$ProductDataImpl;

  factory _ProductData.fromJson(Map<String, dynamic> json) =
      _$ProductDataImpl.fromJson;

  @override

  /// Unique identifier for the product across the extension.
  String get sku;
  @override

  /// Object representing the cost to acquire the product.
  Cost get cost;
  @override

  /// Display Name of the product.
  String get displayName;
  @override

  /// Flag used to indicate if the product is in development.
  bool get inDevelopment;
  @override
  @JsonKey(ignore: true)
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TwitchExtensionTransaction _$TwitchExtensionTransactionFromJson(
    Map<String, dynamic> json) {
  return _TwitchExtensionTransaction.fromJson(json);
}

/// @nodoc
mixin _$TwitchExtensionTransaction {
  /// Unique identifier of the Bits in Extensions Transaction.
  String get id => throw _privateConstructorUsedError;

  /// UTC timestamp when this transaction occurred.
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Twitch User ID of the channel the transaction occurred on.
  @JsonKey(name: 'broadcaster_id')
  String get broadcasterId => throw _privateConstructorUsedError;

  /// Login name of the broadcaster.
  @JsonKey(name: 'broadcaster_login')
  String get broadcasterLogin => throw _privateConstructorUsedError;

  /// Twitch Display Name of the broadcaster.
  @JsonKey(name: 'broadcaster_name')
  String get broadcasterName => throw _privateConstructorUsedError;

  /// Twitch User ID of the user who generated the transaction.
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;

  /// Login name of the user who generated the transaction.
  @JsonKey(name: 'user_login')
  String get userLogin => throw _privateConstructorUsedError;

  /// Twitch Display Name of the user who generated the transaction.
  @JsonKey(name: 'user_name')
  String get userName => throw _privateConstructorUsedError;

  /// Enum of the product type. Currently only
  /// `TwitchExtensionTransactionProductType.bitsInExtension`.
  @JsonKey(name: 'product_type')
  TwitchExtensionTransactionProductType get productType =>
      throw _privateConstructorUsedError;

  /// Object representing the product acquired, as it looked at the time of the
  /// transaction.
  @JsonKey(name: 'product_data')
  ProductData get productData => throw _privateConstructorUsedError;

  /// Set this field to twitch.ext + your extension ID.
  String? get domain => throw _privateConstructorUsedError;

  /// Flag that denotes whether or not the data was sent over the extension
  /// pubsub to all instances of the extension.
  bool? get broadcast => throw _privateConstructorUsedError;

  /// Always empty since only unexpired products can be purchased.
  String? get expiration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchExtensionTransactionCopyWith<TwitchExtensionTransaction>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchExtensionTransactionCopyWith<$Res> {
  factory $TwitchExtensionTransactionCopyWith(TwitchExtensionTransaction value,
          $Res Function(TwitchExtensionTransaction) then) =
      _$TwitchExtensionTransactionCopyWithImpl<$Res,
          TwitchExtensionTransaction>;
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      @JsonKey(name: 'broadcaster_id') String broadcasterId,
      @JsonKey(name: 'broadcaster_login') String broadcasterLogin,
      @JsonKey(name: 'broadcaster_name') String broadcasterName,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'user_login') String userLogin,
      @JsonKey(name: 'user_name') String userName,
      @JsonKey(name: 'product_type')
      TwitchExtensionTransactionProductType productType,
      @JsonKey(name: 'product_data') ProductData productData,
      String? domain,
      bool? broadcast,
      String? expiration});

  $ProductDataCopyWith<$Res> get productData;
}

/// @nodoc
class _$TwitchExtensionTransactionCopyWithImpl<$Res,
        $Val extends TwitchExtensionTransaction>
    implements $TwitchExtensionTransactionCopyWith<$Res> {
  _$TwitchExtensionTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? broadcasterId = null,
    Object? broadcasterLogin = null,
    Object? broadcasterName = null,
    Object? userId = null,
    Object? userLogin = null,
    Object? userName = null,
    Object? productType = null,
    Object? productData = null,
    Object? domain = freezed,
    Object? broadcast = freezed,
    Object? expiration = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterLogin: null == broadcasterLogin
          ? _value.broadcasterLogin
          : broadcasterLogin // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterName: null == broadcasterName
          ? _value.broadcasterName
          : broadcasterName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as TwitchExtensionTransactionProductType,
      productData: null == productData
          ? _value.productData
          : productData // ignore: cast_nullable_to_non_nullable
              as ProductData,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcast: freezed == broadcast
          ? _value.broadcast
          : broadcast // ignore: cast_nullable_to_non_nullable
              as bool?,
      expiration: freezed == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDataCopyWith<$Res> get productData {
    return $ProductDataCopyWith<$Res>(_value.productData, (value) {
      return _then(_value.copyWith(productData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TwitchExtensionTransactionImplCopyWith<$Res>
    implements $TwitchExtensionTransactionCopyWith<$Res> {
  factory _$$TwitchExtensionTransactionImplCopyWith(
          _$TwitchExtensionTransactionImpl value,
          $Res Function(_$TwitchExtensionTransactionImpl) then) =
      __$$TwitchExtensionTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      @JsonKey(name: 'broadcaster_id') String broadcasterId,
      @JsonKey(name: 'broadcaster_login') String broadcasterLogin,
      @JsonKey(name: 'broadcaster_name') String broadcasterName,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'user_login') String userLogin,
      @JsonKey(name: 'user_name') String userName,
      @JsonKey(name: 'product_type')
      TwitchExtensionTransactionProductType productType,
      @JsonKey(name: 'product_data') ProductData productData,
      String? domain,
      bool? broadcast,
      String? expiration});

  @override
  $ProductDataCopyWith<$Res> get productData;
}

/// @nodoc
class __$$TwitchExtensionTransactionImplCopyWithImpl<$Res>
    extends _$TwitchExtensionTransactionCopyWithImpl<$Res,
        _$TwitchExtensionTransactionImpl>
    implements _$$TwitchExtensionTransactionImplCopyWith<$Res> {
  __$$TwitchExtensionTransactionImplCopyWithImpl(
      _$TwitchExtensionTransactionImpl _value,
      $Res Function(_$TwitchExtensionTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? broadcasterId = null,
    Object? broadcasterLogin = null,
    Object? broadcasterName = null,
    Object? userId = null,
    Object? userLogin = null,
    Object? userName = null,
    Object? productType = null,
    Object? productData = null,
    Object? domain = freezed,
    Object? broadcast = freezed,
    Object? expiration = freezed,
  }) {
    return _then(_$TwitchExtensionTransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterLogin: null == broadcasterLogin
          ? _value.broadcasterLogin
          : broadcasterLogin // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterName: null == broadcasterName
          ? _value.broadcasterName
          : broadcasterName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as TwitchExtensionTransactionProductType,
      productData: null == productData
          ? _value.productData
          : productData // ignore: cast_nullable_to_non_nullable
              as ProductData,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcast: freezed == broadcast
          ? _value.broadcast
          : broadcast // ignore: cast_nullable_to_non_nullable
              as bool?,
      expiration: freezed == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchExtensionTransactionImpl implements _TwitchExtensionTransaction {
  const _$TwitchExtensionTransactionImpl(
      {required this.id,
      required this.timestamp,
      @JsonKey(name: 'broadcaster_id') required this.broadcasterId,
      @JsonKey(name: 'broadcaster_login') required this.broadcasterLogin,
      @JsonKey(name: 'broadcaster_name') required this.broadcasterName,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'user_login') required this.userLogin,
      @JsonKey(name: 'user_name') required this.userName,
      @JsonKey(name: 'product_type') required this.productType,
      @JsonKey(name: 'product_data') required this.productData,
      this.domain,
      this.broadcast,
      this.expiration});

  factory _$TwitchExtensionTransactionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TwitchExtensionTransactionImplFromJson(json);

  /// Unique identifier of the Bits in Extensions Transaction.
  @override
  final String id;

  /// UTC timestamp when this transaction occurred.
  @override
  final DateTime timestamp;

  /// Twitch User ID of the channel the transaction occurred on.
  @override
  @JsonKey(name: 'broadcaster_id')
  final String broadcasterId;

  /// Login name of the broadcaster.
  @override
  @JsonKey(name: 'broadcaster_login')
  final String broadcasterLogin;

  /// Twitch Display Name of the broadcaster.
  @override
  @JsonKey(name: 'broadcaster_name')
  final String broadcasterName;

  /// Twitch User ID of the user who generated the transaction.
  @override
  @JsonKey(name: 'user_id')
  final String userId;

  /// Login name of the user who generated the transaction.
  @override
  @JsonKey(name: 'user_login')
  final String userLogin;

  /// Twitch Display Name of the user who generated the transaction.
  @override
  @JsonKey(name: 'user_name')
  final String userName;

  /// Enum of the product type. Currently only
  /// `TwitchExtensionTransactionProductType.bitsInExtension`.
  @override
  @JsonKey(name: 'product_type')
  final TwitchExtensionTransactionProductType productType;

  /// Object representing the product acquired, as it looked at the time of the
  /// transaction.
  @override
  @JsonKey(name: 'product_data')
  final ProductData productData;

  /// Set this field to twitch.ext + your extension ID.
  @override
  final String? domain;

  /// Flag that denotes whether or not the data was sent over the extension
  /// pubsub to all instances of the extension.
  @override
  final bool? broadcast;

  /// Always empty since only unexpired products can be purchased.
  @override
  final String? expiration;

  @override
  String toString() {
    return 'TwitchExtensionTransaction(id: $id, timestamp: $timestamp, broadcasterId: $broadcasterId, broadcasterLogin: $broadcasterLogin, broadcasterName: $broadcasterName, userId: $userId, userLogin: $userLogin, userName: $userName, productType: $productType, productData: $productData, domain: $domain, broadcast: $broadcast, expiration: $expiration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchExtensionTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.broadcasterLogin, broadcasterLogin) ||
                other.broadcasterLogin == broadcasterLogin) &&
            (identical(other.broadcasterName, broadcasterName) ||
                other.broadcasterName == broadcasterName) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.productType, productType) ||
                other.productType == productType) &&
            (identical(other.productData, productData) ||
                other.productData == productData) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.broadcast, broadcast) ||
                other.broadcast == broadcast) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      timestamp,
      broadcasterId,
      broadcasterLogin,
      broadcasterName,
      userId,
      userLogin,
      userName,
      productType,
      productData,
      domain,
      broadcast,
      expiration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchExtensionTransactionImplCopyWith<_$TwitchExtensionTransactionImpl>
      get copyWith => __$$TwitchExtensionTransactionImplCopyWithImpl<
          _$TwitchExtensionTransactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchExtensionTransactionImplToJson(
      this,
    );
  }
}

abstract class _TwitchExtensionTransaction
    implements TwitchExtensionTransaction {
  const factory _TwitchExtensionTransaction(
      {required final String id,
      required final DateTime timestamp,
      @JsonKey(name: 'broadcaster_id') required final String broadcasterId,
      @JsonKey(name: 'broadcaster_login')
      required final String broadcasterLogin,
      @JsonKey(name: 'broadcaster_name') required final String broadcasterName,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'user_login') required final String userLogin,
      @JsonKey(name: 'user_name') required final String userName,
      @JsonKey(name: 'product_type')
      required final TwitchExtensionTransactionProductType productType,
      @JsonKey(name: 'product_data') required final ProductData productData,
      final String? domain,
      final bool? broadcast,
      final String? expiration}) = _$TwitchExtensionTransactionImpl;

  factory _TwitchExtensionTransaction.fromJson(Map<String, dynamic> json) =
      _$TwitchExtensionTransactionImpl.fromJson;

  @override

  /// Unique identifier of the Bits in Extensions Transaction.
  String get id;
  @override

  /// UTC timestamp when this transaction occurred.
  DateTime get timestamp;
  @override

  /// Twitch User ID of the channel the transaction occurred on.
  @JsonKey(name: 'broadcaster_id')
  String get broadcasterId;
  @override

  /// Login name of the broadcaster.
  @JsonKey(name: 'broadcaster_login')
  String get broadcasterLogin;
  @override

  /// Twitch Display Name of the broadcaster.
  @JsonKey(name: 'broadcaster_name')
  String get broadcasterName;
  @override

  /// Twitch User ID of the user who generated the transaction.
  @JsonKey(name: 'user_id')
  String get userId;
  @override

  /// Login name of the user who generated the transaction.
  @JsonKey(name: 'user_login')
  String get userLogin;
  @override

  /// Twitch Display Name of the user who generated the transaction.
  @JsonKey(name: 'user_name')
  String get userName;
  @override

  /// Enum of the product type. Currently only
  /// `TwitchExtensionTransactionProductType.bitsInExtension`.
  @JsonKey(name: 'product_type')
  TwitchExtensionTransactionProductType get productType;
  @override

  /// Object representing the product acquired, as it looked at the time of the
  /// transaction.
  @JsonKey(name: 'product_data')
  ProductData get productData;
  @override

  /// Set this field to twitch.ext + your extension ID.
  String? get domain;
  @override

  /// Flag that denotes whether or not the data was sent over the extension
  /// pubsub to all instances of the extension.
  bool? get broadcast;
  @override

  /// Always empty since only unexpired products can be purchased.
  String? get expiration;
  @override
  @JsonKey(ignore: true)
  _$$TwitchExtensionTransactionImplCopyWith<_$TwitchExtensionTransactionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
