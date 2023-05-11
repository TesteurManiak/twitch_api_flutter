// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_custom_reward_redemption.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TwitchRedemptionRewardInfo _$TwitchRedemptionRewardInfoFromJson(
    Map<String, dynamic> json) {
  return _TwitchRedemptionRewardInfo.fromJson(json);
}

/// @nodoc
mixin _$TwitchRedemptionRewardInfo {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get prompt => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchRedemptionRewardInfoCopyWith<TwitchRedemptionRewardInfo>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchRedemptionRewardInfoCopyWith<$Res> {
  factory $TwitchRedemptionRewardInfoCopyWith(TwitchRedemptionRewardInfo value,
          $Res Function(TwitchRedemptionRewardInfo) then) =
      _$TwitchRedemptionRewardInfoCopyWithImpl<$Res,
          TwitchRedemptionRewardInfo>;
  @useResult
  $Res call({String id, String title, String prompt, int cost});
}

/// @nodoc
class _$TwitchRedemptionRewardInfoCopyWithImpl<$Res,
        $Val extends TwitchRedemptionRewardInfo>
    implements $TwitchRedemptionRewardInfoCopyWith<$Res> {
  _$TwitchRedemptionRewardInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? prompt = null,
    Object? cost = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TwitchRedemptionRewardInfoCopyWith<$Res>
    implements $TwitchRedemptionRewardInfoCopyWith<$Res> {
  factory _$$_TwitchRedemptionRewardInfoCopyWith(
          _$_TwitchRedemptionRewardInfo value,
          $Res Function(_$_TwitchRedemptionRewardInfo) then) =
      __$$_TwitchRedemptionRewardInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String prompt, int cost});
}

/// @nodoc
class __$$_TwitchRedemptionRewardInfoCopyWithImpl<$Res>
    extends _$TwitchRedemptionRewardInfoCopyWithImpl<$Res,
        _$_TwitchRedemptionRewardInfo>
    implements _$$_TwitchRedemptionRewardInfoCopyWith<$Res> {
  __$$_TwitchRedemptionRewardInfoCopyWithImpl(
      _$_TwitchRedemptionRewardInfo _value,
      $Res Function(_$_TwitchRedemptionRewardInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? prompt = null,
    Object? cost = null,
  }) {
    return _then(_$_TwitchRedemptionRewardInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TwitchRedemptionRewardInfo implements _TwitchRedemptionRewardInfo {
  const _$_TwitchRedemptionRewardInfo(
      {required this.id,
      required this.title,
      required this.prompt,
      required this.cost});

  factory _$_TwitchRedemptionRewardInfo.fromJson(Map<String, dynamic> json) =>
      _$$_TwitchRedemptionRewardInfoFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String prompt;
  @override
  final int cost;

  @override
  String toString() {
    return 'TwitchRedemptionRewardInfo(id: $id, title: $title, prompt: $prompt, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TwitchRedemptionRewardInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, prompt, cost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TwitchRedemptionRewardInfoCopyWith<_$_TwitchRedemptionRewardInfo>
      get copyWith => __$$_TwitchRedemptionRewardInfoCopyWithImpl<
          _$_TwitchRedemptionRewardInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TwitchRedemptionRewardInfoToJson(
      this,
    );
  }
}

abstract class _TwitchRedemptionRewardInfo
    implements TwitchRedemptionRewardInfo {
  const factory _TwitchRedemptionRewardInfo(
      {required final String id,
      required final String title,
      required final String prompt,
      required final int cost}) = _$_TwitchRedemptionRewardInfo;

  factory _TwitchRedemptionRewardInfo.fromJson(Map<String, dynamic> json) =
      _$_TwitchRedemptionRewardInfo.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get prompt;
  @override
  int get cost;
  @override
  @JsonKey(ignore: true)
  _$$_TwitchRedemptionRewardInfoCopyWith<_$_TwitchRedemptionRewardInfo>
      get copyWith => throw _privateConstructorUsedError;
}

TwitchCustomRewardRedemption _$TwitchCustomRewardRedemptionFromJson(
    Map<String, dynamic> json) {
  return _TwitchCustomRewardRedemption.fromJson(json);
}

/// @nodoc
mixin _$TwitchCustomRewardRedemption {
  /// The id of the broadcaster that the reward belongs to.
  @JsonKey(name: 'broadcaster_id')
  String get broadcasterId => throw _privateConstructorUsedError;

  /// Broadcaster’s user login name.
  @JsonKey(name: 'broadcaster_login')
  String get broadcasterLogin => throw _privateConstructorUsedError;

  /// The display name of the broadcaster that the reward belongs to.
  @JsonKey(name: 'broadcaster_name')
  String get broadcasterName => throw _privateConstructorUsedError;

  /// The ID of the redemption.
  String get id => throw _privateConstructorUsedError;

  /// The login of the user who redeemed the reward.
  @JsonKey(name: 'user_login')
  String? get userLogin => throw _privateConstructorUsedError;

  /// The ID of the user that redeemed the reward.
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;

  /// The display name of the user that redeemed the reward.
  @JsonKey(name: 'user_name')
  String get userName => throw _privateConstructorUsedError;

  /// Basic information about the Custom Reward that was redeemed at the time it
  /// was redeemed.
  TwitchRedemptionRewardInfo get reward => throw _privateConstructorUsedError;

  /// The user input provided. Empty string if not provided.
  @JsonKey(name: 'user_input')
  String get userInput => throw _privateConstructorUsedError;

  /// One of UNFULFILLED, FULFILLED or CANCELED.
  TwitchRewardRedemptionStatus get status => throw _privateConstructorUsedError;

  /// RFC3339 timestamp of when the reward was redeemed.
  @JsonKey(name: 'redeemed_at')
  DateTime get redeemedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchCustomRewardRedemptionCopyWith<TwitchCustomRewardRedemption>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchCustomRewardRedemptionCopyWith<$Res> {
  factory $TwitchCustomRewardRedemptionCopyWith(
          TwitchCustomRewardRedemption value,
          $Res Function(TwitchCustomRewardRedemption) then) =
      _$TwitchCustomRewardRedemptionCopyWithImpl<$Res,
          TwitchCustomRewardRedemption>;
  @useResult
  $Res call(
      {@JsonKey(name: 'broadcaster_id') String broadcasterId,
      @JsonKey(name: 'broadcaster_login') String broadcasterLogin,
      @JsonKey(name: 'broadcaster_name') String broadcasterName,
      String id,
      @JsonKey(name: 'user_login') String? userLogin,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'user_name') String userName,
      TwitchRedemptionRewardInfo reward,
      @JsonKey(name: 'user_input') String userInput,
      TwitchRewardRedemptionStatus status,
      @JsonKey(name: 'redeemed_at') DateTime redeemedAt});

  $TwitchRedemptionRewardInfoCopyWith<$Res> get reward;
}

/// @nodoc
class _$TwitchCustomRewardRedemptionCopyWithImpl<$Res,
        $Val extends TwitchCustomRewardRedemption>
    implements $TwitchCustomRewardRedemptionCopyWith<$Res> {
  _$TwitchCustomRewardRedemptionCopyWithImpl(this._value, this._then);

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
    Object? id = null,
    Object? userLogin = freezed,
    Object? userId = null,
    Object? userName = null,
    Object? reward = null,
    Object? userInput = null,
    Object? status = null,
    Object? redeemedAt = null,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as TwitchRedemptionRewardInfo,
      userInput: null == userInput
          ? _value.userInput
          : userInput // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TwitchRewardRedemptionStatus,
      redeemedAt: null == redeemedAt
          ? _value.redeemedAt
          : redeemedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TwitchRedemptionRewardInfoCopyWith<$Res> get reward {
    return $TwitchRedemptionRewardInfoCopyWith<$Res>(_value.reward, (value) {
      return _then(_value.copyWith(reward: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TwitchCustomRewardRedemptionCopyWith<$Res>
    implements $TwitchCustomRewardRedemptionCopyWith<$Res> {
  factory _$$_TwitchCustomRewardRedemptionCopyWith(
          _$_TwitchCustomRewardRedemption value,
          $Res Function(_$_TwitchCustomRewardRedemption) then) =
      __$$_TwitchCustomRewardRedemptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'broadcaster_id') String broadcasterId,
      @JsonKey(name: 'broadcaster_login') String broadcasterLogin,
      @JsonKey(name: 'broadcaster_name') String broadcasterName,
      String id,
      @JsonKey(name: 'user_login') String? userLogin,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'user_name') String userName,
      TwitchRedemptionRewardInfo reward,
      @JsonKey(name: 'user_input') String userInput,
      TwitchRewardRedemptionStatus status,
      @JsonKey(name: 'redeemed_at') DateTime redeemedAt});

  @override
  $TwitchRedemptionRewardInfoCopyWith<$Res> get reward;
}

/// @nodoc
class __$$_TwitchCustomRewardRedemptionCopyWithImpl<$Res>
    extends _$TwitchCustomRewardRedemptionCopyWithImpl<$Res,
        _$_TwitchCustomRewardRedemption>
    implements _$$_TwitchCustomRewardRedemptionCopyWith<$Res> {
  __$$_TwitchCustomRewardRedemptionCopyWithImpl(
      _$_TwitchCustomRewardRedemption _value,
      $Res Function(_$_TwitchCustomRewardRedemption) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? broadcasterLogin = null,
    Object? broadcasterName = null,
    Object? id = null,
    Object? userLogin = freezed,
    Object? userId = null,
    Object? userName = null,
    Object? reward = null,
    Object? userInput = null,
    Object? status = null,
    Object? redeemedAt = null,
  }) {
    return _then(_$_TwitchCustomRewardRedemption(
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as TwitchRedemptionRewardInfo,
      userInput: null == userInput
          ? _value.userInput
          : userInput // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TwitchRewardRedemptionStatus,
      redeemedAt: null == redeemedAt
          ? _value.redeemedAt
          : redeemedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TwitchCustomRewardRedemption implements _TwitchCustomRewardRedemption {
  const _$_TwitchCustomRewardRedemption(
      {@JsonKey(name: 'broadcaster_id') required this.broadcasterId,
      @JsonKey(name: 'broadcaster_login') required this.broadcasterLogin,
      @JsonKey(name: 'broadcaster_name') required this.broadcasterName,
      required this.id,
      @JsonKey(name: 'user_login') required this.userLogin,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'user_name') required this.userName,
      required this.reward,
      @JsonKey(name: 'user_input') required this.userInput,
      required this.status,
      @JsonKey(name: 'redeemed_at') required this.redeemedAt});

  factory _$_TwitchCustomRewardRedemption.fromJson(Map<String, dynamic> json) =>
      _$$_TwitchCustomRewardRedemptionFromJson(json);

  /// The id of the broadcaster that the reward belongs to.
  @override
  @JsonKey(name: 'broadcaster_id')
  final String broadcasterId;

  /// Broadcaster’s user login name.
  @override
  @JsonKey(name: 'broadcaster_login')
  final String broadcasterLogin;

  /// The display name of the broadcaster that the reward belongs to.
  @override
  @JsonKey(name: 'broadcaster_name')
  final String broadcasterName;

  /// The ID of the redemption.
  @override
  final String id;

  /// The login of the user who redeemed the reward.
  @override
  @JsonKey(name: 'user_login')
  final String? userLogin;

  /// The ID of the user that redeemed the reward.
  @override
  @JsonKey(name: 'user_id')
  final String userId;

  /// The display name of the user that redeemed the reward.
  @override
  @JsonKey(name: 'user_name')
  final String userName;

  /// Basic information about the Custom Reward that was redeemed at the time it
  /// was redeemed.
  @override
  final TwitchRedemptionRewardInfo reward;

  /// The user input provided. Empty string if not provided.
  @override
  @JsonKey(name: 'user_input')
  final String userInput;

  /// One of UNFULFILLED, FULFILLED or CANCELED.
  @override
  final TwitchRewardRedemptionStatus status;

  /// RFC3339 timestamp of when the reward was redeemed.
  @override
  @JsonKey(name: 'redeemed_at')
  final DateTime redeemedAt;

  @override
  String toString() {
    return 'TwitchCustomRewardRedemption(broadcasterId: $broadcasterId, broadcasterLogin: $broadcasterLogin, broadcasterName: $broadcasterName, id: $id, userLogin: $userLogin, userId: $userId, userName: $userName, reward: $reward, userInput: $userInput, status: $status, redeemedAt: $redeemedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TwitchCustomRewardRedemption &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.broadcasterLogin, broadcasterLogin) ||
                other.broadcasterLogin == broadcasterLogin) &&
            (identical(other.broadcasterName, broadcasterName) ||
                other.broadcasterName == broadcasterName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.reward, reward) || other.reward == reward) &&
            (identical(other.userInput, userInput) ||
                other.userInput == userInput) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.redeemedAt, redeemedAt) ||
                other.redeemedAt == redeemedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      broadcasterId,
      broadcasterLogin,
      broadcasterName,
      id,
      userLogin,
      userId,
      userName,
      reward,
      userInput,
      status,
      redeemedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TwitchCustomRewardRedemptionCopyWith<_$_TwitchCustomRewardRedemption>
      get copyWith => __$$_TwitchCustomRewardRedemptionCopyWithImpl<
          _$_TwitchCustomRewardRedemption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TwitchCustomRewardRedemptionToJson(
      this,
    );
  }
}

abstract class _TwitchCustomRewardRedemption
    implements TwitchCustomRewardRedemption {
  const factory _TwitchCustomRewardRedemption(
          {@JsonKey(name: 'broadcaster_id')
              required final String broadcasterId,
          @JsonKey(name: 'broadcaster_login')
              required final String broadcasterLogin,
          @JsonKey(name: 'broadcaster_name')
              required final String broadcasterName,
          required final String id,
          @JsonKey(name: 'user_login')
              required final String? userLogin,
          @JsonKey(name: 'user_id')
              required final String userId,
          @JsonKey(name: 'user_name')
              required final String userName,
          required final TwitchRedemptionRewardInfo reward,
          @JsonKey(name: 'user_input')
              required final String userInput,
          required final TwitchRewardRedemptionStatus status,
          @JsonKey(name: 'redeemed_at')
              required final DateTime redeemedAt}) =
      _$_TwitchCustomRewardRedemption;

  factory _TwitchCustomRewardRedemption.fromJson(Map<String, dynamic> json) =
      _$_TwitchCustomRewardRedemption.fromJson;

  @override

  /// The id of the broadcaster that the reward belongs to.
  @JsonKey(name: 'broadcaster_id')
  String get broadcasterId;
  @override

  /// Broadcaster’s user login name.
  @JsonKey(name: 'broadcaster_login')
  String get broadcasterLogin;
  @override

  /// The display name of the broadcaster that the reward belongs to.
  @JsonKey(name: 'broadcaster_name')
  String get broadcasterName;
  @override

  /// The ID of the redemption.
  String get id;
  @override

  /// The login of the user who redeemed the reward.
  @JsonKey(name: 'user_login')
  String? get userLogin;
  @override

  /// The ID of the user that redeemed the reward.
  @JsonKey(name: 'user_id')
  String get userId;
  @override

  /// The display name of the user that redeemed the reward.
  @JsonKey(name: 'user_name')
  String get userName;
  @override

  /// Basic information about the Custom Reward that was redeemed at the time it
  /// was redeemed.
  TwitchRedemptionRewardInfo get reward;
  @override

  /// The user input provided. Empty string if not provided.
  @JsonKey(name: 'user_input')
  String get userInput;
  @override

  /// One of UNFULFILLED, FULFILLED or CANCELED.
  TwitchRewardRedemptionStatus get status;
  @override

  /// RFC3339 timestamp of when the reward was redeemed.
  @JsonKey(name: 'redeemed_at')
  DateTime get redeemedAt;
  @override
  @JsonKey(ignore: true)
  _$$_TwitchCustomRewardRedemptionCopyWith<_$_TwitchCustomRewardRedemption>
      get copyWith => throw _privateConstructorUsedError;
}
