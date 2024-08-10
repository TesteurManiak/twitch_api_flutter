// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TwitchCode {
  String get code => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get scope => throw _privateConstructorUsedError;
  List<String>? get scopes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TwitchCodeCopyWith<TwitchCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchCodeCopyWith<$Res> {
  factory $TwitchCodeCopyWith(
          TwitchCode value, $Res Function(TwitchCode) then) =
      _$TwitchCodeCopyWithImpl<$Res, TwitchCode>;
  @useResult
  $Res call({String code, String state, String scope, List<String>? scopes});
}

/// @nodoc
class _$TwitchCodeCopyWithImpl<$Res, $Val extends TwitchCode>
    implements $TwitchCodeCopyWith<$Res> {
  _$TwitchCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? state = null,
    Object? scope = null,
    Object? scopes = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      scopes: freezed == scopes
          ? _value.scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwitchCodeImplCopyWith<$Res>
    implements $TwitchCodeCopyWith<$Res> {
  factory _$$TwitchCodeImplCopyWith(
          _$TwitchCodeImpl value, $Res Function(_$TwitchCodeImpl) then) =
      __$$TwitchCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String state, String scope, List<String>? scopes});
}

/// @nodoc
class __$$TwitchCodeImplCopyWithImpl<$Res>
    extends _$TwitchCodeCopyWithImpl<$Res, _$TwitchCodeImpl>
    implements _$$TwitchCodeImplCopyWith<$Res> {
  __$$TwitchCodeImplCopyWithImpl(
      _$TwitchCodeImpl _value, $Res Function(_$TwitchCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? state = null,
    Object? scope = null,
    Object? scopes = freezed,
  }) {
    return _then(_$TwitchCodeImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      scopes: freezed == scopes
          ? _value._scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$TwitchCodeImpl extends _TwitchCode {
  const _$TwitchCodeImpl(
      {required this.code,
      required this.state,
      required this.scope,
      final List<String>? scopes})
      : _scopes = scopes,
        super._();

  @override
  final String code;
  @override
  final String state;
  @override
  final String scope;
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
  String toString() {
    return 'TwitchCode(code: $code, state: $state, scope: $scope, scopes: $scopes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchCodeImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            const DeepCollectionEquality().equals(other._scopes, _scopes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, state, scope,
      const DeepCollectionEquality().hash(_scopes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchCodeImplCopyWith<_$TwitchCodeImpl> get copyWith =>
      __$$TwitchCodeImplCopyWithImpl<_$TwitchCodeImpl>(this, _$identity);
}

abstract class _TwitchCode extends TwitchCode {
  const factory _TwitchCode(
      {required final String code,
      required final String state,
      required final String scope,
      final List<String>? scopes}) = _$TwitchCodeImpl;
  const _TwitchCode._() : super._();

  @override
  String get code;
  @override
  String get state;
  @override
  String get scope;
  @override
  List<String>? get scopes;
  @override
  @JsonKey(ignore: true)
  _$$TwitchCodeImplCopyWith<_$TwitchCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
