// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_user_follow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TwitchUserFollow _$TwitchUserFollowFromJson(Map<String, dynamic> json) {
  return _TwitchUserFollow.fromJson(json);
}

/// @nodoc
mixin _$TwitchUserFollow {
  /// Date and time when the [fromId] user followed the [toId] user.
  @JsonKey(name: 'followed_at')
  DateTime get followedAt => throw _privateConstructorUsedError;

  /// ID of the user following the [toId] user.
  @JsonKey(name: 'from_id')
  String get fromId => throw _privateConstructorUsedError;

  /// Login of the user following the [toId] user.
  @JsonKey(name: 'from_login')
  String get fromLogin => throw _privateConstructorUsedError;

  /// Display name corresponding to [fromId].
  @JsonKey(name: 'from_name')
  String get fromName => throw _privateConstructorUsedError;

  /// ID of the user being followed by the [fromId] user.
  @JsonKey(name: 'to_id')
  String get toId => throw _privateConstructorUsedError;

  /// Login of the user being followed by the [fromId] user.
  @JsonKey(name: 'to_login')
  String? get toLogin => throw _privateConstructorUsedError;

  /// Display name corresponding to [toId].
  @JsonKey(name: 'to_name')
  String get toName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchUserFollowCopyWith<TwitchUserFollow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchUserFollowCopyWith<$Res> {
  factory $TwitchUserFollowCopyWith(
          TwitchUserFollow value, $Res Function(TwitchUserFollow) then) =
      _$TwitchUserFollowCopyWithImpl<$Res, TwitchUserFollow>;
  @useResult
  $Res call(
      {@JsonKey(name: 'followed_at') DateTime followedAt,
      @JsonKey(name: 'from_id') String fromId,
      @JsonKey(name: 'from_login') String fromLogin,
      @JsonKey(name: 'from_name') String fromName,
      @JsonKey(name: 'to_id') String toId,
      @JsonKey(name: 'to_login') String? toLogin,
      @JsonKey(name: 'to_name') String toName});
}

/// @nodoc
class _$TwitchUserFollowCopyWithImpl<$Res, $Val extends TwitchUserFollow>
    implements $TwitchUserFollowCopyWith<$Res> {
  _$TwitchUserFollowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followedAt = null,
    Object? fromId = null,
    Object? fromLogin = null,
    Object? fromName = null,
    Object? toId = null,
    Object? toLogin = freezed,
    Object? toName = null,
  }) {
    return _then(_value.copyWith(
      followedAt: null == followedAt
          ? _value.followedAt
          : followedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fromId: null == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      fromLogin: null == fromLogin
          ? _value.fromLogin
          : fromLogin // ignore: cast_nullable_to_non_nullable
              as String,
      fromName: null == fromName
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String,
      toId: null == toId
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String,
      toLogin: freezed == toLogin
          ? _value.toLogin
          : toLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      toName: null == toName
          ? _value.toName
          : toName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TwitchUserFollowCopyWith<$Res>
    implements $TwitchUserFollowCopyWith<$Res> {
  factory _$$_TwitchUserFollowCopyWith(
          _$_TwitchUserFollow value, $Res Function(_$_TwitchUserFollow) then) =
      __$$_TwitchUserFollowCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'followed_at') DateTime followedAt,
      @JsonKey(name: 'from_id') String fromId,
      @JsonKey(name: 'from_login') String fromLogin,
      @JsonKey(name: 'from_name') String fromName,
      @JsonKey(name: 'to_id') String toId,
      @JsonKey(name: 'to_login') String? toLogin,
      @JsonKey(name: 'to_name') String toName});
}

/// @nodoc
class __$$_TwitchUserFollowCopyWithImpl<$Res>
    extends _$TwitchUserFollowCopyWithImpl<$Res, _$_TwitchUserFollow>
    implements _$$_TwitchUserFollowCopyWith<$Res> {
  __$$_TwitchUserFollowCopyWithImpl(
      _$_TwitchUserFollow _value, $Res Function(_$_TwitchUserFollow) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followedAt = null,
    Object? fromId = null,
    Object? fromLogin = null,
    Object? fromName = null,
    Object? toId = null,
    Object? toLogin = freezed,
    Object? toName = null,
  }) {
    return _then(_$_TwitchUserFollow(
      followedAt: null == followedAt
          ? _value.followedAt
          : followedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fromId: null == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      fromLogin: null == fromLogin
          ? _value.fromLogin
          : fromLogin // ignore: cast_nullable_to_non_nullable
              as String,
      fromName: null == fromName
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String,
      toId: null == toId
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String,
      toLogin: freezed == toLogin
          ? _value.toLogin
          : toLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      toName: null == toName
          ? _value.toName
          : toName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TwitchUserFollow implements _TwitchUserFollow {
  const _$_TwitchUserFollow(
      {@JsonKey(name: 'followed_at') required this.followedAt,
      @JsonKey(name: 'from_id') required this.fromId,
      @JsonKey(name: 'from_login') required this.fromLogin,
      @JsonKey(name: 'from_name') required this.fromName,
      @JsonKey(name: 'to_id') required this.toId,
      @JsonKey(name: 'to_login') required this.toLogin,
      @JsonKey(name: 'to_name') required this.toName});

  factory _$_TwitchUserFollow.fromJson(Map<String, dynamic> json) =>
      _$$_TwitchUserFollowFromJson(json);

  /// Date and time when the [fromId] user followed the [toId] user.
  @override
  @JsonKey(name: 'followed_at')
  final DateTime followedAt;

  /// ID of the user following the [toId] user.
  @override
  @JsonKey(name: 'from_id')
  final String fromId;

  /// Login of the user following the [toId] user.
  @override
  @JsonKey(name: 'from_login')
  final String fromLogin;

  /// Display name corresponding to [fromId].
  @override
  @JsonKey(name: 'from_name')
  final String fromName;

  /// ID of the user being followed by the [fromId] user.
  @override
  @JsonKey(name: 'to_id')
  final String toId;

  /// Login of the user being followed by the [fromId] user.
  @override
  @JsonKey(name: 'to_login')
  final String? toLogin;

  /// Display name corresponding to [toId].
  @override
  @JsonKey(name: 'to_name')
  final String toName;

  @override
  String toString() {
    return 'TwitchUserFollow(followedAt: $followedAt, fromId: $fromId, fromLogin: $fromLogin, fromName: $fromName, toId: $toId, toLogin: $toLogin, toName: $toName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TwitchUserFollow &&
            (identical(other.followedAt, followedAt) ||
                other.followedAt == followedAt) &&
            (identical(other.fromId, fromId) || other.fromId == fromId) &&
            (identical(other.fromLogin, fromLogin) ||
                other.fromLogin == fromLogin) &&
            (identical(other.fromName, fromName) ||
                other.fromName == fromName) &&
            (identical(other.toId, toId) || other.toId == toId) &&
            (identical(other.toLogin, toLogin) || other.toLogin == toLogin) &&
            (identical(other.toName, toName) || other.toName == toName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, followedAt, fromId, fromLogin,
      fromName, toId, toLogin, toName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TwitchUserFollowCopyWith<_$_TwitchUserFollow> get copyWith =>
      __$$_TwitchUserFollowCopyWithImpl<_$_TwitchUserFollow>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TwitchUserFollowToJson(
      this,
    );
  }
}

abstract class _TwitchUserFollow implements TwitchUserFollow {
  const factory _TwitchUserFollow(
          {@JsonKey(name: 'followed_at') required final DateTime followedAt,
          @JsonKey(name: 'from_id') required final String fromId,
          @JsonKey(name: 'from_login') required final String fromLogin,
          @JsonKey(name: 'from_name') required final String fromName,
          @JsonKey(name: 'to_id') required final String toId,
          @JsonKey(name: 'to_login') required final String? toLogin,
          @JsonKey(name: 'to_name') required final String toName}) =
      _$_TwitchUserFollow;

  factory _TwitchUserFollow.fromJson(Map<String, dynamic> json) =
      _$_TwitchUserFollow.fromJson;

  @override

  /// Date and time when the [fromId] user followed the [toId] user.
  @JsonKey(name: 'followed_at')
  DateTime get followedAt;
  @override

  /// ID of the user following the [toId] user.
  @JsonKey(name: 'from_id')
  String get fromId;
  @override

  /// Login of the user following the [toId] user.
  @JsonKey(name: 'from_login')
  String get fromLogin;
  @override

  /// Display name corresponding to [fromId].
  @JsonKey(name: 'from_name')
  String get fromName;
  @override

  /// ID of the user being followed by the [fromId] user.
  @JsonKey(name: 'to_id')
  String get toId;
  @override

  /// Login of the user being followed by the [fromId] user.
  @JsonKey(name: 'to_login')
  String? get toLogin;
  @override

  /// Display name corresponding to [toId].
  @JsonKey(name: 'to_name')
  String get toName;
  @override
  @JsonKey(ignore: true)
  _$$_TwitchUserFollowCopyWith<_$_TwitchUserFollow> get copyWith =>
      throw _privateConstructorUsedError;
}
