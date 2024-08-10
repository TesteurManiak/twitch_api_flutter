// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_token_refresh.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TwitchTokenRefresh _$TwitchTokenRefreshFromJson(Map<String, dynamic> json) {
  return _TwitchTokenRefresh.fromJson(json);
}

/// @nodoc
mixin _$TwitchTokenRefresh {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_in')
  int get expiresIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String get tokenType => throw _privateConstructorUsedError;
  List<String> get scope => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchTokenRefreshCopyWith<TwitchTokenRefresh> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchTokenRefreshCopyWith<$Res> {
  factory $TwitchTokenRefreshCopyWith(
          TwitchTokenRefresh value, $Res Function(TwitchTokenRefresh) then) =
      _$TwitchTokenRefreshCopyWithImpl<$Res, TwitchTokenRefresh>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'expires_in') int expiresIn,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'token_type') String tokenType,
      List<String> scope});
}

/// @nodoc
class _$TwitchTokenRefreshCopyWithImpl<$Res, $Val extends TwitchTokenRefresh>
    implements $TwitchTokenRefreshCopyWith<$Res> {
  _$TwitchTokenRefreshCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? expiresIn = null,
    Object? refreshToken = null,
    Object? tokenType = null,
    Object? scope = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwitchTokenRefreshImplCopyWith<$Res>
    implements $TwitchTokenRefreshCopyWith<$Res> {
  factory _$$TwitchTokenRefreshImplCopyWith(_$TwitchTokenRefreshImpl value,
          $Res Function(_$TwitchTokenRefreshImpl) then) =
      __$$TwitchTokenRefreshImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'expires_in') int expiresIn,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'token_type') String tokenType,
      List<String> scope});
}

/// @nodoc
class __$$TwitchTokenRefreshImplCopyWithImpl<$Res>
    extends _$TwitchTokenRefreshCopyWithImpl<$Res, _$TwitchTokenRefreshImpl>
    implements _$$TwitchTokenRefreshImplCopyWith<$Res> {
  __$$TwitchTokenRefreshImplCopyWithImpl(_$TwitchTokenRefreshImpl _value,
      $Res Function(_$TwitchTokenRefreshImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? expiresIn = null,
    Object? refreshToken = null,
    Object? tokenType = null,
    Object? scope = null,
  }) {
    return _then(_$TwitchTokenRefreshImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _value._scope
          : scope // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchTokenRefreshImpl implements _TwitchTokenRefresh {
  const _$TwitchTokenRefreshImpl(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'expires_in') required this.expiresIn,
      @JsonKey(name: 'refresh_token') required this.refreshToken,
      @JsonKey(name: 'token_type') required this.tokenType,
      required final List<String> scope})
      : _scope = scope;

  factory _$TwitchTokenRefreshImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchTokenRefreshImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'expires_in')
  final int expiresIn;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;
  @override
  @JsonKey(name: 'token_type')
  final String tokenType;
  final List<String> _scope;
  @override
  List<String> get scope {
    if (_scope is EqualUnmodifiableListView) return _scope;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scope);
  }

  @override
  String toString() {
    return 'TwitchTokenRefresh(accessToken: $accessToken, expiresIn: $expiresIn, refreshToken: $refreshToken, tokenType: $tokenType, scope: $scope)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchTokenRefreshImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            const DeepCollectionEquality().equals(other._scope, _scope));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, expiresIn,
      refreshToken, tokenType, const DeepCollectionEquality().hash(_scope));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchTokenRefreshImplCopyWith<_$TwitchTokenRefreshImpl> get copyWith =>
      __$$TwitchTokenRefreshImplCopyWithImpl<_$TwitchTokenRefreshImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchTokenRefreshImplToJson(
      this,
    );
  }
}

abstract class _TwitchTokenRefresh implements TwitchTokenRefresh {
  const factory _TwitchTokenRefresh(
      {@JsonKey(name: 'access_token') required final String accessToken,
      @JsonKey(name: 'expires_in') required final int expiresIn,
      @JsonKey(name: 'refresh_token') required final String refreshToken,
      @JsonKey(name: 'token_type') required final String tokenType,
      required final List<String> scope}) = _$TwitchTokenRefreshImpl;

  factory _TwitchTokenRefresh.fromJson(Map<String, dynamic> json) =
      _$TwitchTokenRefreshImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'expires_in')
  int get expiresIn;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(name: 'token_type')
  String get tokenType;
  @override
  List<String> get scope;
  @override
  @JsonKey(ignore: true)
  _$$TwitchTokenRefreshImplCopyWith<_$TwitchTokenRefreshImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
