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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$TwitchApiExceptionImplCopyWith<$Res>
    implements $TwitchApiExceptionCopyWith<$Res> {
  factory _$$TwitchApiExceptionImplCopyWith(_$TwitchApiExceptionImpl value,
          $Res Function(_$TwitchApiExceptionImpl) then) =
      __$$TwitchApiExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$TwitchApiExceptionImplCopyWithImpl<$Res>
    extends _$TwitchApiExceptionCopyWithImpl<$Res, _$TwitchApiExceptionImpl>
    implements _$$TwitchApiExceptionImplCopyWith<$Res> {
  __$$TwitchApiExceptionImplCopyWithImpl(_$TwitchApiExceptionImpl _value,
      $Res Function(_$TwitchApiExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$TwitchApiExceptionImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TwitchApiExceptionImpl implements _TwitchApiException {
  const _$TwitchApiExceptionImpl({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'TwitchApiException(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchApiExceptionImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchApiExceptionImplCopyWith<_$TwitchApiExceptionImpl> get copyWith =>
      __$$TwitchApiExceptionImplCopyWithImpl<_$TwitchApiExceptionImpl>(
          this, _$identity);
}

abstract class _TwitchApiException implements TwitchApiException {
  const factory _TwitchApiException({required final String msg}) =
      _$TwitchApiExceptionImpl;

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$TwitchApiExceptionImplCopyWith<_$TwitchApiExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
