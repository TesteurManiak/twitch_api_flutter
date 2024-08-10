// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_broadcaster_subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TwitchBroadcasterSubscription _$TwitchBroadcasterSubscriptionFromJson(
    Map<String, dynamic> json) {
  return _TwitchBroadcasterSubscription.fromJson(json);
}

/// @nodoc
mixin _$TwitchBroadcasterSubscription {
  /// User ID of the broadcaster.
  @JsonKey(name: 'broadcaster_id')
  String get broadcasterId => throw _privateConstructorUsedError;

  /// Login of the broadcaster.
  @JsonKey(name: 'broadcaster_login')
  String get broadcasterLogin => throw _privateConstructorUsedError;

  /// Display name of the broadcaster.
  @JsonKey(name: 'broadcaster_name')
  String get broadcasterName => throw _privateConstructorUsedError;

  /// If the subscription was gifted, this is the user ID of the gifter. Empty
  /// string otherwise.
  @JsonKey(name: 'gifter_id')
  String get gifterId => throw _privateConstructorUsedError;

  /// If the subscription was gifted, this is the login of the gifter. Empty
  /// string otherwise.
  @JsonKey(name: 'gifter_login')
  String get gifterLogin => throw _privateConstructorUsedError;

  /// If the subscription was gifted, this is the display name of the gifter.
  /// Empty string otherwise.
  @JsonKey(name: 'gifter_name')
  String get gifterName => throw _privateConstructorUsedError;

  /// `true` if the subscription is a gift subscription.
  @JsonKey(name: 'is_gift')
  bool get isGift => throw _privateConstructorUsedError;

  /// Name of the subscription.
  @JsonKey(name: 'plan_name')
  String get planName => throw _privateConstructorUsedError;

  /// Type of subscription (Tier 1, Tier 2, Tier 3). 1000 = Tier 1, 2000 = Tier
  /// 2, 3000 = Tier 3 subscriptions.
  String get tier => throw _privateConstructorUsedError;

  /// ID of the subscribed user.
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;

  /// Display name of the subscribed user.
  @JsonKey(name: 'user_name')
  String get userName => throw _privateConstructorUsedError;

  /// Login of the subscribed user.
  @JsonKey(name: 'user_login')
  String get userLogin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchBroadcasterSubscriptionCopyWith<TwitchBroadcasterSubscription>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchBroadcasterSubscriptionCopyWith<$Res> {
  factory $TwitchBroadcasterSubscriptionCopyWith(
          TwitchBroadcasterSubscription value,
          $Res Function(TwitchBroadcasterSubscription) then) =
      _$TwitchBroadcasterSubscriptionCopyWithImpl<$Res,
          TwitchBroadcasterSubscription>;
  @useResult
  $Res call(
      {@JsonKey(name: 'broadcaster_id') String broadcasterId,
      @JsonKey(name: 'broadcaster_login') String broadcasterLogin,
      @JsonKey(name: 'broadcaster_name') String broadcasterName,
      @JsonKey(name: 'gifter_id') String gifterId,
      @JsonKey(name: 'gifter_login') String gifterLogin,
      @JsonKey(name: 'gifter_name') String gifterName,
      @JsonKey(name: 'is_gift') bool isGift,
      @JsonKey(name: 'plan_name') String planName,
      String tier,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'user_name') String userName,
      @JsonKey(name: 'user_login') String userLogin});
}

/// @nodoc
class _$TwitchBroadcasterSubscriptionCopyWithImpl<$Res,
        $Val extends TwitchBroadcasterSubscription>
    implements $TwitchBroadcasterSubscriptionCopyWith<$Res> {
  _$TwitchBroadcasterSubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? broadcasterLogin = null,
    Object? broadcasterName = null,
    Object? gifterId = null,
    Object? gifterLogin = null,
    Object? gifterName = null,
    Object? isGift = null,
    Object? planName = null,
    Object? tier = null,
    Object? userId = null,
    Object? userName = null,
    Object? userLogin = null,
  }) {
    return _then(_value.copyWith(
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
      gifterId: null == gifterId
          ? _value.gifterId
          : gifterId // ignore: cast_nullable_to_non_nullable
              as String,
      gifterLogin: null == gifterLogin
          ? _value.gifterLogin
          : gifterLogin // ignore: cast_nullable_to_non_nullable
              as String,
      gifterName: null == gifterName
          ? _value.gifterName
          : gifterName // ignore: cast_nullable_to_non_nullable
              as String,
      isGift: null == isGift
          ? _value.isGift
          : isGift // ignore: cast_nullable_to_non_nullable
              as bool,
      planName: null == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      tier: null == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwitchBroadcasterSubscriptionImplCopyWith<$Res>
    implements $TwitchBroadcasterSubscriptionCopyWith<$Res> {
  factory _$$TwitchBroadcasterSubscriptionImplCopyWith(
          _$TwitchBroadcasterSubscriptionImpl value,
          $Res Function(_$TwitchBroadcasterSubscriptionImpl) then) =
      __$$TwitchBroadcasterSubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'broadcaster_id') String broadcasterId,
      @JsonKey(name: 'broadcaster_login') String broadcasterLogin,
      @JsonKey(name: 'broadcaster_name') String broadcasterName,
      @JsonKey(name: 'gifter_id') String gifterId,
      @JsonKey(name: 'gifter_login') String gifterLogin,
      @JsonKey(name: 'gifter_name') String gifterName,
      @JsonKey(name: 'is_gift') bool isGift,
      @JsonKey(name: 'plan_name') String planName,
      String tier,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'user_name') String userName,
      @JsonKey(name: 'user_login') String userLogin});
}

/// @nodoc
class __$$TwitchBroadcasterSubscriptionImplCopyWithImpl<$Res>
    extends _$TwitchBroadcasterSubscriptionCopyWithImpl<$Res,
        _$TwitchBroadcasterSubscriptionImpl>
    implements _$$TwitchBroadcasterSubscriptionImplCopyWith<$Res> {
  __$$TwitchBroadcasterSubscriptionImplCopyWithImpl(
      _$TwitchBroadcasterSubscriptionImpl _value,
      $Res Function(_$TwitchBroadcasterSubscriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? broadcasterLogin = null,
    Object? broadcasterName = null,
    Object? gifterId = null,
    Object? gifterLogin = null,
    Object? gifterName = null,
    Object? isGift = null,
    Object? planName = null,
    Object? tier = null,
    Object? userId = null,
    Object? userName = null,
    Object? userLogin = null,
  }) {
    return _then(_$TwitchBroadcasterSubscriptionImpl(
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
      gifterId: null == gifterId
          ? _value.gifterId
          : gifterId // ignore: cast_nullable_to_non_nullable
              as String,
      gifterLogin: null == gifterLogin
          ? _value.gifterLogin
          : gifterLogin // ignore: cast_nullable_to_non_nullable
              as String,
      gifterName: null == gifterName
          ? _value.gifterName
          : gifterName // ignore: cast_nullable_to_non_nullable
              as String,
      isGift: null == isGift
          ? _value.isGift
          : isGift // ignore: cast_nullable_to_non_nullable
              as bool,
      planName: null == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      tier: null == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchBroadcasterSubscriptionImpl
    implements _TwitchBroadcasterSubscription {
  const _$TwitchBroadcasterSubscriptionImpl(
      {@JsonKey(name: 'broadcaster_id') required this.broadcasterId,
      @JsonKey(name: 'broadcaster_login') required this.broadcasterLogin,
      @JsonKey(name: 'broadcaster_name') required this.broadcasterName,
      @JsonKey(name: 'gifter_id') required this.gifterId,
      @JsonKey(name: 'gifter_login') required this.gifterLogin,
      @JsonKey(name: 'gifter_name') required this.gifterName,
      @JsonKey(name: 'is_gift') required this.isGift,
      @JsonKey(name: 'plan_name') required this.planName,
      required this.tier,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'user_name') required this.userName,
      @JsonKey(name: 'user_login') required this.userLogin});

  factory _$TwitchBroadcasterSubscriptionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TwitchBroadcasterSubscriptionImplFromJson(json);

  /// User ID of the broadcaster.
  @override
  @JsonKey(name: 'broadcaster_id')
  final String broadcasterId;

  /// Login of the broadcaster.
  @override
  @JsonKey(name: 'broadcaster_login')
  final String broadcasterLogin;

  /// Display name of the broadcaster.
  @override
  @JsonKey(name: 'broadcaster_name')
  final String broadcasterName;

  /// If the subscription was gifted, this is the user ID of the gifter. Empty
  /// string otherwise.
  @override
  @JsonKey(name: 'gifter_id')
  final String gifterId;

  /// If the subscription was gifted, this is the login of the gifter. Empty
  /// string otherwise.
  @override
  @JsonKey(name: 'gifter_login')
  final String gifterLogin;

  /// If the subscription was gifted, this is the display name of the gifter.
  /// Empty string otherwise.
  @override
  @JsonKey(name: 'gifter_name')
  final String gifterName;

  /// `true` if the subscription is a gift subscription.
  @override
  @JsonKey(name: 'is_gift')
  final bool isGift;

  /// Name of the subscription.
  @override
  @JsonKey(name: 'plan_name')
  final String planName;

  /// Type of subscription (Tier 1, Tier 2, Tier 3). 1000 = Tier 1, 2000 = Tier
  /// 2, 3000 = Tier 3 subscriptions.
  @override
  final String tier;

  /// ID of the subscribed user.
  @override
  @JsonKey(name: 'user_id')
  final String userId;

  /// Display name of the subscribed user.
  @override
  @JsonKey(name: 'user_name')
  final String userName;

  /// Login of the subscribed user.
  @override
  @JsonKey(name: 'user_login')
  final String userLogin;

  @override
  String toString() {
    return 'TwitchBroadcasterSubscription(broadcasterId: $broadcasterId, broadcasterLogin: $broadcasterLogin, broadcasterName: $broadcasterName, gifterId: $gifterId, gifterLogin: $gifterLogin, gifterName: $gifterName, isGift: $isGift, planName: $planName, tier: $tier, userId: $userId, userName: $userName, userLogin: $userLogin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchBroadcasterSubscriptionImpl &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.broadcasterLogin, broadcasterLogin) ||
                other.broadcasterLogin == broadcasterLogin) &&
            (identical(other.broadcasterName, broadcasterName) ||
                other.broadcasterName == broadcasterName) &&
            (identical(other.gifterId, gifterId) ||
                other.gifterId == gifterId) &&
            (identical(other.gifterLogin, gifterLogin) ||
                other.gifterLogin == gifterLogin) &&
            (identical(other.gifterName, gifterName) ||
                other.gifterName == gifterName) &&
            (identical(other.isGift, isGift) || other.isGift == isGift) &&
            (identical(other.planName, planName) ||
                other.planName == planName) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      broadcasterId,
      broadcasterLogin,
      broadcasterName,
      gifterId,
      gifterLogin,
      gifterName,
      isGift,
      planName,
      tier,
      userId,
      userName,
      userLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchBroadcasterSubscriptionImplCopyWith<
          _$TwitchBroadcasterSubscriptionImpl>
      get copyWith => __$$TwitchBroadcasterSubscriptionImplCopyWithImpl<
          _$TwitchBroadcasterSubscriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchBroadcasterSubscriptionImplToJson(
      this,
    );
  }
}

abstract class _TwitchBroadcasterSubscription
    implements TwitchBroadcasterSubscription {
  const factory _TwitchBroadcasterSubscription(
      {@JsonKey(name: 'broadcaster_id') required final String broadcasterId,
      @JsonKey(name: 'broadcaster_login')
      required final String broadcasterLogin,
      @JsonKey(name: 'broadcaster_name') required final String broadcasterName,
      @JsonKey(name: 'gifter_id') required final String gifterId,
      @JsonKey(name: 'gifter_login') required final String gifterLogin,
      @JsonKey(name: 'gifter_name') required final String gifterName,
      @JsonKey(name: 'is_gift') required final bool isGift,
      @JsonKey(name: 'plan_name') required final String planName,
      required final String tier,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'user_name') required final String userName,
      @JsonKey(name: 'user_login')
      required final String userLogin}) = _$TwitchBroadcasterSubscriptionImpl;

  factory _TwitchBroadcasterSubscription.fromJson(Map<String, dynamic> json) =
      _$TwitchBroadcasterSubscriptionImpl.fromJson;

  @override

  /// User ID of the broadcaster.
  @JsonKey(name: 'broadcaster_id')
  String get broadcasterId;
  @override

  /// Login of the broadcaster.
  @JsonKey(name: 'broadcaster_login')
  String get broadcasterLogin;
  @override

  /// Display name of the broadcaster.
  @JsonKey(name: 'broadcaster_name')
  String get broadcasterName;
  @override

  /// If the subscription was gifted, this is the user ID of the gifter. Empty
  /// string otherwise.
  @JsonKey(name: 'gifter_id')
  String get gifterId;
  @override

  /// If the subscription was gifted, this is the login of the gifter. Empty
  /// string otherwise.
  @JsonKey(name: 'gifter_login')
  String get gifterLogin;
  @override

  /// If the subscription was gifted, this is the display name of the gifter.
  /// Empty string otherwise.
  @JsonKey(name: 'gifter_name')
  String get gifterName;
  @override

  /// `true` if the subscription is a gift subscription.
  @JsonKey(name: 'is_gift')
  bool get isGift;
  @override

  /// Name of the subscription.
  @JsonKey(name: 'plan_name')
  String get planName;
  @override

  /// Type of subscription (Tier 1, Tier 2, Tier 3). 1000 = Tier 1, 2000 = Tier
  /// 2, 3000 = Tier 3 subscriptions.
  String get tier;
  @override

  /// ID of the subscribed user.
  @JsonKey(name: 'user_id')
  String get userId;
  @override

  /// Display name of the subscribed user.
  @JsonKey(name: 'user_name')
  String get userName;
  @override

  /// Login of the subscribed user.
  @JsonKey(name: 'user_login')
  String get userLogin;
  @override
  @JsonKey(ignore: true)
  _$$TwitchBroadcasterSubscriptionImplCopyWith<
          _$TwitchBroadcasterSubscriptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
