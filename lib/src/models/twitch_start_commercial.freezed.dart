// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_start_commercial.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TwitchStartCommercial _$TwitchStartCommercialFromJson(
    Map<String, dynamic> json) {
  return _TwitchStartCommercial.fromJson(json);
}

/// @nodoc
mixin _$TwitchStartCommercial {
  /// Length of the triggered commercial.
  int get length => throw _privateConstructorUsedError;

  /// Provides contextual information on why the request failed.
  String get message => throw _privateConstructorUsedError;

  /// Seconds until the next commercial can be served on this channel.
  @JsonKey(name: 'retry_after')
  int get retryAfter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchStartCommercialCopyWith<TwitchStartCommercial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchStartCommercialCopyWith<$Res> {
  factory $TwitchStartCommercialCopyWith(TwitchStartCommercial value,
          $Res Function(TwitchStartCommercial) then) =
      _$TwitchStartCommercialCopyWithImpl<$Res, TwitchStartCommercial>;
  @useResult
  $Res call(
      {int length,
      String message,
      @JsonKey(name: 'retry_after') int retryAfter});
}

/// @nodoc
class _$TwitchStartCommercialCopyWithImpl<$Res,
        $Val extends TwitchStartCommercial>
    implements $TwitchStartCommercialCopyWith<$Res> {
  _$TwitchStartCommercialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = null,
    Object? message = null,
    Object? retryAfter = null,
  }) {
    return _then(_value.copyWith(
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      retryAfter: null == retryAfter
          ? _value.retryAfter
          : retryAfter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwitchStartCommercialImplCopyWith<$Res>
    implements $TwitchStartCommercialCopyWith<$Res> {
  factory _$$TwitchStartCommercialImplCopyWith(
          _$TwitchStartCommercialImpl value,
          $Res Function(_$TwitchStartCommercialImpl) then) =
      __$$TwitchStartCommercialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int length,
      String message,
      @JsonKey(name: 'retry_after') int retryAfter});
}

/// @nodoc
class __$$TwitchStartCommercialImplCopyWithImpl<$Res>
    extends _$TwitchStartCommercialCopyWithImpl<$Res,
        _$TwitchStartCommercialImpl>
    implements _$$TwitchStartCommercialImplCopyWith<$Res> {
  __$$TwitchStartCommercialImplCopyWithImpl(_$TwitchStartCommercialImpl _value,
      $Res Function(_$TwitchStartCommercialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = null,
    Object? message = null,
    Object? retryAfter = null,
  }) {
    return _then(_$TwitchStartCommercialImpl(
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      retryAfter: null == retryAfter
          ? _value.retryAfter
          : retryAfter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchStartCommercialImpl implements _TwitchStartCommercial {
  const _$TwitchStartCommercialImpl(
      {required this.length,
      required this.message,
      @JsonKey(name: 'retry_after') required this.retryAfter});

  factory _$TwitchStartCommercialImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchStartCommercialImplFromJson(json);

  /// Length of the triggered commercial.
  @override
  final int length;

  /// Provides contextual information on why the request failed.
  @override
  final String message;

  /// Seconds until the next commercial can be served on this channel.
  @override
  @JsonKey(name: 'retry_after')
  final int retryAfter;

  @override
  String toString() {
    return 'TwitchStartCommercial(length: $length, message: $message, retryAfter: $retryAfter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchStartCommercialImpl &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.retryAfter, retryAfter) ||
                other.retryAfter == retryAfter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, length, message, retryAfter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchStartCommercialImplCopyWith<_$TwitchStartCommercialImpl>
      get copyWith => __$$TwitchStartCommercialImplCopyWithImpl<
          _$TwitchStartCommercialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchStartCommercialImplToJson(
      this,
    );
  }
}

abstract class _TwitchStartCommercial implements TwitchStartCommercial {
  const factory _TwitchStartCommercial(
          {required final int length,
          required final String message,
          @JsonKey(name: 'retry_after') required final int retryAfter}) =
      _$TwitchStartCommercialImpl;

  factory _TwitchStartCommercial.fromJson(Map<String, dynamic> json) =
      _$TwitchStartCommercialImpl.fromJson;

  @override

  /// Length of the triggered commercial.
  int get length;
  @override

  /// Provides contextual information on why the request failed.
  String get message;
  @override

  /// Seconds until the next commercial can be served on this channel.
  @JsonKey(name: 'retry_after')
  int get retryAfter;
  @override
  @JsonKey(ignore: true)
  _$$TwitchStartCommercialImplCopyWith<_$TwitchStartCommercialImpl>
      get copyWith => throw _privateConstructorUsedError;
}
