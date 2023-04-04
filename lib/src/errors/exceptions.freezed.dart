// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TwitchApiException {
  String get msg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TwitchApiExceptionCopyWith<TwitchApiException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchApiExceptionCopyWith<$Res> {
  factory $TwitchApiExceptionCopyWith(
          TwitchApiException value, $Res Function(TwitchApiException) then) =
      _$TwitchApiExceptionCopyWithImpl<$Res, TwitchApiException>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class _$TwitchApiExceptionCopyWithImpl<$Res, $Val extends TwitchApiException>
    implements $TwitchApiExceptionCopyWith<$Res> {
  _$TwitchApiExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TwitchApiExceptionCopyWith<$Res>
    implements $TwitchApiExceptionCopyWith<$Res> {
  factory _$$_TwitchApiExceptionCopyWith(_$_TwitchApiException value,
          $Res Function(_$_TwitchApiException) then) =
      __$$_TwitchApiExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$_TwitchApiExceptionCopyWithImpl<$Res>
    extends _$TwitchApiExceptionCopyWithImpl<$Res, _$_TwitchApiException>
    implements _$$_TwitchApiExceptionCopyWith<$Res> {
  __$$_TwitchApiExceptionCopyWithImpl(
      _$_TwitchApiException _value, $Res Function(_$_TwitchApiException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$_TwitchApiException(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TwitchApiException implements _TwitchApiException {
  const _$_TwitchApiException({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'TwitchApiException(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TwitchApiException &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TwitchApiExceptionCopyWith<_$_TwitchApiException> get copyWith =>
      __$$_TwitchApiExceptionCopyWithImpl<_$_TwitchApiException>(
          this, _$identity);
}

abstract class _TwitchApiException implements TwitchApiException {
  const factory _TwitchApiException({required final String msg}) =
      _$_TwitchApiException;

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$_TwitchApiExceptionCopyWith<_$_TwitchApiException> get copyWith =>
      throw _privateConstructorUsedError;
}
