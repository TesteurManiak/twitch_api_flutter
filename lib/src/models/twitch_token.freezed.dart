// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TwitchToken {
  String get token => throw _privateConstructorUsedError;
  String get scope => throw _privateConstructorUsedError;
  String get tokenType => throw _privateConstructorUsedError;
  String? get clientId => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;
  List<String>? get scopes => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  int get expiresIn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TwitchTokenCopyWith<TwitchToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchTokenCopyWith<$Res> {
  factory $TwitchTokenCopyWith(
          TwitchToken value, $Res Function(TwitchToken) then) =
      _$TwitchTokenCopyWithImpl<$Res, TwitchToken>;
  @useResult
  $Res call(
      {String token,
      String scope,
      String tokenType,
      String? clientId,
      String? login,
      List<String>? scopes,
      String? userId,
      int expiresIn});
}

/// @nodoc
class _$TwitchTokenCopyWithImpl<$Res, $Val extends TwitchToken>
    implements $TwitchTokenCopyWith<$Res> {
  _$TwitchTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? scope = null,
    Object? tokenType = null,
    Object? clientId = freezed,
    Object? login = freezed,
    Object? scopes = freezed,
    Object? userId = freezed,
    Object? expiresIn = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      scopes: freezed == scopes
          ? _value.scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwitchTokenImplCopyWith<$Res>
    implements $TwitchTokenCopyWith<$Res> {
  factory _$$TwitchTokenImplCopyWith(
          _$TwitchTokenImpl value, $Res Function(_$TwitchTokenImpl) then) =
      __$$TwitchTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token,
      String scope,
      String tokenType,
      String? clientId,
      String? login,
      List<String>? scopes,
      String? userId,
      int expiresIn});
}

/// @nodoc
class __$$TwitchTokenImplCopyWithImpl<$Res>
    extends _$TwitchTokenCopyWithImpl<$Res, _$TwitchTokenImpl>
    implements _$$TwitchTokenImplCopyWith<$Res> {
  __$$TwitchTokenImplCopyWithImpl(
      _$TwitchTokenImpl _value, $Res Function(_$TwitchTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? scope = null,
    Object? tokenType = null,
    Object? clientId = freezed,
    Object? login = freezed,
    Object? scopes = freezed,
    Object? userId = freezed,
    Object? expiresIn = null,
  }) {
    return _then(_$TwitchTokenImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      scopes: freezed == scopes
          ? _value._scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TwitchTokenImpl extends _TwitchToken {
  const _$TwitchTokenImpl(
      {required this.token,
      required this.scope,
      required this.tokenType,
      this.clientId,
      this.login,
      final List<String>? scopes,
      this.userId,
      this.expiresIn = 0})
      : _scopes = scopes,
        super._();

  @override
  final String token;
  @override
  final String scope;
  @override
  final String tokenType;
  @override
  final String? clientId;
  @override
  final String? login;
  final List<String>? _scopes;
  @override
  List<String>? get scopes {
    final value = _scopes;
    if (value == null) return null;
    if (_scopes is EqualUnmodifiableListView) return _scopes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? userId;
  @override
  @JsonKey()
  final int expiresIn;

  @override
  String toString() {
    return 'TwitchToken(token: $token, scope: $scope, tokenType: $tokenType, clientId: $clientId, login: $login, scopes: $scopes, userId: $userId, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchTokenImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.login, login) || other.login == login) &&
            const DeepCollectionEquality().equals(other._scopes, _scopes) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      token,
      scope,
      tokenType,
      clientId,
      login,
      const DeepCollectionEquality().hash(_scopes),
      userId,
      expiresIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchTokenImplCopyWith<_$TwitchTokenImpl> get copyWith =>
      __$$TwitchTokenImplCopyWithImpl<_$TwitchTokenImpl>(this, _$identity);
}

abstract class _TwitchToken extends TwitchToken {
  const factory _TwitchToken(
      {required final String token,
      required final String scope,
      required final String tokenType,
      final String? clientId,
      final String? login,
      final List<String>? scopes,
      final String? userId,
      final int expiresIn}) = _$TwitchTokenImpl;
  const _TwitchToken._() : super._();

  @override
  String get token;
  @override
  String get scope;
  @override
  String get tokenType;
  @override
  String? get clientId;
  @override
  String? get login;
  @override
  List<String>? get scopes;
  @override
  String? get userId;
  @override
  int get expiresIn;
  @override
  @JsonKey(ignore: true)
  _$$TwitchTokenImplCopyWith<_$TwitchTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
