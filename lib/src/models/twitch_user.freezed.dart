// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TwitchUser _$TwitchUserFromJson(Map<String, dynamic> json) {
  return _TwitchUser.fromJson(json);
}

/// @nodoc
mixin _$TwitchUser {
  String get id => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'broadcaster_type')
  TwitchBroadcasterType get broadcasterType =>
      throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image_url')
  String get profileImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'offline_image_url')
  String get offlineImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'view_count')
  int get viewCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchUserCopyWith<TwitchUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchUserCopyWith<$Res> {
  factory $TwitchUserCopyWith(
          TwitchUser value, $Res Function(TwitchUser) then) =
      _$TwitchUserCopyWithImpl<$Res, TwitchUser>;
  @useResult
  $Res call(
      {String id,
      String login,
      @JsonKey(name: 'display_name') String displayName,
      String type,
      @JsonKey(name: 'broadcaster_type') TwitchBroadcasterType broadcasterType,
      String description,
      @JsonKey(name: 'profile_image_url') String profileImageUrl,
      @JsonKey(name: 'offline_image_url') String offlineImageUrl,
      @JsonKey(name: 'view_count') int viewCount,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class _$TwitchUserCopyWithImpl<$Res, $Val extends TwitchUser>
    implements $TwitchUserCopyWith<$Res> {
  _$TwitchUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
    Object? displayName = null,
    Object? type = null,
    Object? broadcasterType = null,
    Object? description = null,
    Object? profileImageUrl = null,
    Object? offlineImageUrl = null,
    Object? viewCount = null,
    Object? email = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterType: null == broadcasterType
          ? _value.broadcasterType
          : broadcasterType // ignore: cast_nullable_to_non_nullable
              as TwitchBroadcasterType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      offlineImageUrl: null == offlineImageUrl
          ? _value.offlineImageUrl
          : offlineImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwitchUserImplCopyWith<$Res>
    implements $TwitchUserCopyWith<$Res> {
  factory _$$TwitchUserImplCopyWith(
          _$TwitchUserImpl value, $Res Function(_$TwitchUserImpl) then) =
      __$$TwitchUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String login,
      @JsonKey(name: 'display_name') String displayName,
      String type,
      @JsonKey(name: 'broadcaster_type') TwitchBroadcasterType broadcasterType,
      String description,
      @JsonKey(name: 'profile_image_url') String profileImageUrl,
      @JsonKey(name: 'offline_image_url') String offlineImageUrl,
      @JsonKey(name: 'view_count') int viewCount,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class __$$TwitchUserImplCopyWithImpl<$Res>
    extends _$TwitchUserCopyWithImpl<$Res, _$TwitchUserImpl>
    implements _$$TwitchUserImplCopyWith<$Res> {
  __$$TwitchUserImplCopyWithImpl(
      _$TwitchUserImpl _value, $Res Function(_$TwitchUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
    Object? displayName = null,
    Object? type = null,
    Object? broadcasterType = null,
    Object? description = null,
    Object? profileImageUrl = null,
    Object? offlineImageUrl = null,
    Object? viewCount = null,
    Object? email = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$TwitchUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterType: null == broadcasterType
          ? _value.broadcasterType
          : broadcasterType // ignore: cast_nullable_to_non_nullable
              as TwitchBroadcasterType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      offlineImageUrl: null == offlineImageUrl
          ? _value.offlineImageUrl
          : offlineImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchUserImpl implements _TwitchUser {
  const _$TwitchUserImpl(
      {required this.id,
      required this.login,
      @JsonKey(name: 'display_name') required this.displayName,
      required this.type,
      @JsonKey(name: 'broadcaster_type') required this.broadcasterType,
      required this.description,
      @JsonKey(name: 'profile_image_url') required this.profileImageUrl,
      @JsonKey(name: 'offline_image_url') required this.offlineImageUrl,
      @JsonKey(name: 'view_count') required this.viewCount,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'created_at') required this.createdAt});

  factory _$TwitchUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchUserImplFromJson(json);

  @override
  final String id;
  @override
  final String login;
  @override
  @JsonKey(name: 'display_name')
  final String displayName;
  @override
  final String type;
  @override
  @JsonKey(name: 'broadcaster_type')
  final TwitchBroadcasterType broadcasterType;
  @override
  final String description;
  @override
  @JsonKey(name: 'profile_image_url')
  final String profileImageUrl;
  @override
  @JsonKey(name: 'offline_image_url')
  final String offlineImageUrl;
  @override
  @JsonKey(name: 'view_count')
  final int viewCount;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'TwitchUser(id: $id, login: $login, displayName: $displayName, type: $type, broadcasterType: $broadcasterType, description: $description, profileImageUrl: $profileImageUrl, offlineImageUrl: $offlineImageUrl, viewCount: $viewCount, email: $email, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.broadcasterType, broadcasterType) ||
                other.broadcasterType == broadcasterType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.offlineImageUrl, offlineImageUrl) ||
                other.offlineImageUrl == offlineImageUrl) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      login,
      displayName,
      type,
      broadcasterType,
      description,
      profileImageUrl,
      offlineImageUrl,
      viewCount,
      email,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchUserImplCopyWith<_$TwitchUserImpl> get copyWith =>
      __$$TwitchUserImplCopyWithImpl<_$TwitchUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchUserImplToJson(
      this,
    );
  }
}

abstract class _TwitchUser implements TwitchUser {
  const factory _TwitchUser(
      {required final String id,
      required final String login,
      @JsonKey(name: 'display_name') required final String displayName,
      required final String type,
      @JsonKey(name: 'broadcaster_type')
      required final TwitchBroadcasterType broadcasterType,
      required final String description,
      @JsonKey(name: 'profile_image_url') required final String profileImageUrl,
      @JsonKey(name: 'offline_image_url') required final String offlineImageUrl,
      @JsonKey(name: 'view_count') required final int viewCount,
      @JsonKey(name: 'email') required final String? email,
      @JsonKey(name: 'created_at')
      required final String createdAt}) = _$TwitchUserImpl;

  factory _TwitchUser.fromJson(Map<String, dynamic> json) =
      _$TwitchUserImpl.fromJson;

  @override
  String get id;
  @override
  String get login;
  @override
  @JsonKey(name: 'display_name')
  String get displayName;
  @override
  String get type;
  @override
  @JsonKey(name: 'broadcaster_type')
  TwitchBroadcasterType get broadcasterType;
  @override
  String get description;
  @override
  @JsonKey(name: 'profile_image_url')
  String get profileImageUrl;
  @override
  @JsonKey(name: 'offline_image_url')
  String get offlineImageUrl;
  @override
  @JsonKey(name: 'view_count')
  int get viewCount;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$TwitchUserImplCopyWith<_$TwitchUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
