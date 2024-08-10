// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_custom_reward.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TwitchCustomRewardImage _$TwitchCustomRewardImageFromJson(
    Map<String, dynamic> json) {
  return _TwitchCustomRewardImage.fromJson(json);
}

/// @nodoc
mixin _$TwitchCustomRewardImage {
  /// 1x image size
  @JsonKey(name: 'url_1x')
  String get url1x => throw _privateConstructorUsedError;

  /// 2x image size
  @JsonKey(name: 'url_2x')
  String get url2x => throw _privateConstructorUsedError;

  /// 4x image size
  @JsonKey(name: 'url_4x')
  String get url4x => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchCustomRewardImageCopyWith<TwitchCustomRewardImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchCustomRewardImageCopyWith<$Res> {
  factory $TwitchCustomRewardImageCopyWith(TwitchCustomRewardImage value,
          $Res Function(TwitchCustomRewardImage) then) =
      _$TwitchCustomRewardImageCopyWithImpl<$Res, TwitchCustomRewardImage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url_1x') String url1x,
      @JsonKey(name: 'url_2x') String url2x,
      @JsonKey(name: 'url_4x') String url4x});
}

/// @nodoc
class _$TwitchCustomRewardImageCopyWithImpl<$Res,
        $Val extends TwitchCustomRewardImage>
    implements $TwitchCustomRewardImageCopyWith<$Res> {
  _$TwitchCustomRewardImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url1x = null,
    Object? url2x = null,
    Object? url4x = null,
  }) {
    return _then(_value.copyWith(
      url1x: null == url1x
          ? _value.url1x
          : url1x // ignore: cast_nullable_to_non_nullable
              as String,
      url2x: null == url2x
          ? _value.url2x
          : url2x // ignore: cast_nullable_to_non_nullable
              as String,
      url4x: null == url4x
          ? _value.url4x
          : url4x // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwitchCustomRewardImageImplCopyWith<$Res>
    implements $TwitchCustomRewardImageCopyWith<$Res> {
  factory _$$TwitchCustomRewardImageImplCopyWith(
          _$TwitchCustomRewardImageImpl value,
          $Res Function(_$TwitchCustomRewardImageImpl) then) =
      __$$TwitchCustomRewardImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url_1x') String url1x,
      @JsonKey(name: 'url_2x') String url2x,
      @JsonKey(name: 'url_4x') String url4x});
}

/// @nodoc
class __$$TwitchCustomRewardImageImplCopyWithImpl<$Res>
    extends _$TwitchCustomRewardImageCopyWithImpl<$Res,
        _$TwitchCustomRewardImageImpl>
    implements _$$TwitchCustomRewardImageImplCopyWith<$Res> {
  __$$TwitchCustomRewardImageImplCopyWithImpl(
      _$TwitchCustomRewardImageImpl _value,
      $Res Function(_$TwitchCustomRewardImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url1x = null,
    Object? url2x = null,
    Object? url4x = null,
  }) {
    return _then(_$TwitchCustomRewardImageImpl(
      url1x: null == url1x
          ? _value.url1x
          : url1x // ignore: cast_nullable_to_non_nullable
              as String,
      url2x: null == url2x
          ? _value.url2x
          : url2x // ignore: cast_nullable_to_non_nullable
              as String,
      url4x: null == url4x
          ? _value.url4x
          : url4x // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchCustomRewardImageImpl implements _TwitchCustomRewardImage {
  const _$TwitchCustomRewardImageImpl(
      {@JsonKey(name: 'url_1x') required this.url1x,
      @JsonKey(name: 'url_2x') required this.url2x,
      @JsonKey(name: 'url_4x') required this.url4x});

  factory _$TwitchCustomRewardImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchCustomRewardImageImplFromJson(json);

  /// 1x image size
  @override
  @JsonKey(name: 'url_1x')
  final String url1x;

  /// 2x image size
  @override
  @JsonKey(name: 'url_2x')
  final String url2x;

  /// 4x image size
  @override
  @JsonKey(name: 'url_4x')
  final String url4x;

  @override
  String toString() {
    return 'TwitchCustomRewardImage(url1x: $url1x, url2x: $url2x, url4x: $url4x)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchCustomRewardImageImpl &&
            (identical(other.url1x, url1x) || other.url1x == url1x) &&
            (identical(other.url2x, url2x) || other.url2x == url2x) &&
            (identical(other.url4x, url4x) || other.url4x == url4x));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url1x, url2x, url4x);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchCustomRewardImageImplCopyWith<_$TwitchCustomRewardImageImpl>
      get copyWith => __$$TwitchCustomRewardImageImplCopyWithImpl<
          _$TwitchCustomRewardImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchCustomRewardImageImplToJson(
      this,
    );
  }
}

abstract class _TwitchCustomRewardImage implements TwitchCustomRewardImage {
  const factory _TwitchCustomRewardImage(
          {@JsonKey(name: 'url_1x') required final String url1x,
          @JsonKey(name: 'url_2x') required final String url2x,
          @JsonKey(name: 'url_4x') required final String url4x}) =
      _$TwitchCustomRewardImageImpl;

  factory _TwitchCustomRewardImage.fromJson(Map<String, dynamic> json) =
      _$TwitchCustomRewardImageImpl.fromJson;

  @override

  /// 1x image size
  @JsonKey(name: 'url_1x')
  String get url1x;
  @override

  /// 2x image size
  @JsonKey(name: 'url_2x')
  String get url2x;
  @override

  /// 4x image size
  @JsonKey(name: 'url_4x')
  String get url4x;
  @override
  @JsonKey(ignore: true)
  _$$TwitchCustomRewardImageImplCopyWith<_$TwitchCustomRewardImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TwitchMaxPerStream _$TwitchMaxPerStreamFromJson(Map<String, dynamic> json) {
  return _TwitchMaxPerStream.fromJson(json);
}

/// @nodoc
mixin _$TwitchMaxPerStream {
  @JsonKey(name: 'is_enabled')
  bool get isEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_per_stream')
  int get maxPerStream => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchMaxPerStreamCopyWith<TwitchMaxPerStream> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchMaxPerStreamCopyWith<$Res> {
  factory $TwitchMaxPerStreamCopyWith(
          TwitchMaxPerStream value, $Res Function(TwitchMaxPerStream) then) =
      _$TwitchMaxPerStreamCopyWithImpl<$Res, TwitchMaxPerStream>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_enabled') bool isEnabled,
      @JsonKey(name: 'max_per_stream') int maxPerStream});
}

/// @nodoc
class _$TwitchMaxPerStreamCopyWithImpl<$Res, $Val extends TwitchMaxPerStream>
    implements $TwitchMaxPerStreamCopyWith<$Res> {
  _$TwitchMaxPerStreamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? maxPerStream = null,
  }) {
    return _then(_value.copyWith(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      maxPerStream: null == maxPerStream
          ? _value.maxPerStream
          : maxPerStream // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwitchMaxPerStreamImplCopyWith<$Res>
    implements $TwitchMaxPerStreamCopyWith<$Res> {
  factory _$$TwitchMaxPerStreamImplCopyWith(_$TwitchMaxPerStreamImpl value,
          $Res Function(_$TwitchMaxPerStreamImpl) then) =
      __$$TwitchMaxPerStreamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_enabled') bool isEnabled,
      @JsonKey(name: 'max_per_stream') int maxPerStream});
}

/// @nodoc
class __$$TwitchMaxPerStreamImplCopyWithImpl<$Res>
    extends _$TwitchMaxPerStreamCopyWithImpl<$Res, _$TwitchMaxPerStreamImpl>
    implements _$$TwitchMaxPerStreamImplCopyWith<$Res> {
  __$$TwitchMaxPerStreamImplCopyWithImpl(_$TwitchMaxPerStreamImpl _value,
      $Res Function(_$TwitchMaxPerStreamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? maxPerStream = null,
  }) {
    return _then(_$TwitchMaxPerStreamImpl(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      maxPerStream: null == maxPerStream
          ? _value.maxPerStream
          : maxPerStream // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchMaxPerStreamImpl implements _TwitchMaxPerStream {
  const _$TwitchMaxPerStreamImpl(
      {@JsonKey(name: 'is_enabled') required this.isEnabled,
      @JsonKey(name: 'max_per_stream') required this.maxPerStream});

  factory _$TwitchMaxPerStreamImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchMaxPerStreamImplFromJson(json);

  @override
  @JsonKey(name: 'is_enabled')
  final bool isEnabled;
  @override
  @JsonKey(name: 'max_per_stream')
  final int maxPerStream;

  @override
  String toString() {
    return 'TwitchMaxPerStream(isEnabled: $isEnabled, maxPerStream: $maxPerStream)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchMaxPerStreamImpl &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.maxPerStream, maxPerStream) ||
                other.maxPerStream == maxPerStream));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, maxPerStream);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchMaxPerStreamImplCopyWith<_$TwitchMaxPerStreamImpl> get copyWith =>
      __$$TwitchMaxPerStreamImplCopyWithImpl<_$TwitchMaxPerStreamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchMaxPerStreamImplToJson(
      this,
    );
  }
}

abstract class _TwitchMaxPerStream implements TwitchMaxPerStream {
  const factory _TwitchMaxPerStream(
          {@JsonKey(name: 'is_enabled') required final bool isEnabled,
          @JsonKey(name: 'max_per_stream') required final int maxPerStream}) =
      _$TwitchMaxPerStreamImpl;

  factory _TwitchMaxPerStream.fromJson(Map<String, dynamic> json) =
      _$TwitchMaxPerStreamImpl.fromJson;

  @override
  @JsonKey(name: 'is_enabled')
  bool get isEnabled;
  @override
  @JsonKey(name: 'max_per_stream')
  int get maxPerStream;
  @override
  @JsonKey(ignore: true)
  _$$TwitchMaxPerStreamImplCopyWith<_$TwitchMaxPerStreamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TwitchMaxPerUserPerStreamSetting _$TwitchMaxPerUserPerStreamSettingFromJson(
    Map<String, dynamic> json) {
  return _TwitchMaxPerUserPerStreamSetting.fromJson(json);
}

/// @nodoc
mixin _$TwitchMaxPerUserPerStreamSetting {
  @JsonKey(name: 'is_enabled')
  bool get isEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_per_user_per_stream')
  int get maxPerUserPerStream => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchMaxPerUserPerStreamSettingCopyWith<TwitchMaxPerUserPerStreamSetting>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchMaxPerUserPerStreamSettingCopyWith<$Res> {
  factory $TwitchMaxPerUserPerStreamSettingCopyWith(
          TwitchMaxPerUserPerStreamSetting value,
          $Res Function(TwitchMaxPerUserPerStreamSetting) then) =
      _$TwitchMaxPerUserPerStreamSettingCopyWithImpl<$Res,
          TwitchMaxPerUserPerStreamSetting>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_enabled') bool isEnabled,
      @JsonKey(name: 'max_per_user_per_stream') int maxPerUserPerStream});
}

/// @nodoc
class _$TwitchMaxPerUserPerStreamSettingCopyWithImpl<$Res,
        $Val extends TwitchMaxPerUserPerStreamSetting>
    implements $TwitchMaxPerUserPerStreamSettingCopyWith<$Res> {
  _$TwitchMaxPerUserPerStreamSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? maxPerUserPerStream = null,
  }) {
    return _then(_value.copyWith(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      maxPerUserPerStream: null == maxPerUserPerStream
          ? _value.maxPerUserPerStream
          : maxPerUserPerStream // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwitchMaxPerUserPerStreamSettingImplCopyWith<$Res>
    implements $TwitchMaxPerUserPerStreamSettingCopyWith<$Res> {
  factory _$$TwitchMaxPerUserPerStreamSettingImplCopyWith(
          _$TwitchMaxPerUserPerStreamSettingImpl value,
          $Res Function(_$TwitchMaxPerUserPerStreamSettingImpl) then) =
      __$$TwitchMaxPerUserPerStreamSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_enabled') bool isEnabled,
      @JsonKey(name: 'max_per_user_per_stream') int maxPerUserPerStream});
}

/// @nodoc
class __$$TwitchMaxPerUserPerStreamSettingImplCopyWithImpl<$Res>
    extends _$TwitchMaxPerUserPerStreamSettingCopyWithImpl<$Res,
        _$TwitchMaxPerUserPerStreamSettingImpl>
    implements _$$TwitchMaxPerUserPerStreamSettingImplCopyWith<$Res> {
  __$$TwitchMaxPerUserPerStreamSettingImplCopyWithImpl(
      _$TwitchMaxPerUserPerStreamSettingImpl _value,
      $Res Function(_$TwitchMaxPerUserPerStreamSettingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? maxPerUserPerStream = null,
  }) {
    return _then(_$TwitchMaxPerUserPerStreamSettingImpl(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      maxPerUserPerStream: null == maxPerUserPerStream
          ? _value.maxPerUserPerStream
          : maxPerUserPerStream // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchMaxPerUserPerStreamSettingImpl
    implements _TwitchMaxPerUserPerStreamSetting {
  const _$TwitchMaxPerUserPerStreamSettingImpl(
      {@JsonKey(name: 'is_enabled') required this.isEnabled,
      @JsonKey(name: 'max_per_user_per_stream')
      required this.maxPerUserPerStream});

  factory _$TwitchMaxPerUserPerStreamSettingImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TwitchMaxPerUserPerStreamSettingImplFromJson(json);

  @override
  @JsonKey(name: 'is_enabled')
  final bool isEnabled;
  @override
  @JsonKey(name: 'max_per_user_per_stream')
  final int maxPerUserPerStream;

  @override
  String toString() {
    return 'TwitchMaxPerUserPerStreamSetting(isEnabled: $isEnabled, maxPerUserPerStream: $maxPerUserPerStream)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchMaxPerUserPerStreamSettingImpl &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.maxPerUserPerStream, maxPerUserPerStream) ||
                other.maxPerUserPerStream == maxPerUserPerStream));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, maxPerUserPerStream);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchMaxPerUserPerStreamSettingImplCopyWith<
          _$TwitchMaxPerUserPerStreamSettingImpl>
      get copyWith => __$$TwitchMaxPerUserPerStreamSettingImplCopyWithImpl<
          _$TwitchMaxPerUserPerStreamSettingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchMaxPerUserPerStreamSettingImplToJson(
      this,
    );
  }
}

abstract class _TwitchMaxPerUserPerStreamSetting
    implements TwitchMaxPerUserPerStreamSetting {
  const factory _TwitchMaxPerUserPerStreamSetting(
          {@JsonKey(name: 'is_enabled') required final bool isEnabled,
          @JsonKey(name: 'max_per_user_per_stream')
          required final int maxPerUserPerStream}) =
      _$TwitchMaxPerUserPerStreamSettingImpl;

  factory _TwitchMaxPerUserPerStreamSetting.fromJson(
          Map<String, dynamic> json) =
      _$TwitchMaxPerUserPerStreamSettingImpl.fromJson;

  @override
  @JsonKey(name: 'is_enabled')
  bool get isEnabled;
  @override
  @JsonKey(name: 'max_per_user_per_stream')
  int get maxPerUserPerStream;
  @override
  @JsonKey(ignore: true)
  _$$TwitchMaxPerUserPerStreamSettingImplCopyWith<
          _$TwitchMaxPerUserPerStreamSettingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TwitchGlobalCooldownSetting _$TwitchGlobalCooldownSettingFromJson(
    Map<String, dynamic> json) {
  return _TwitchGlobalCooldownSetting.fromJson(json);
}

/// @nodoc
mixin _$TwitchGlobalCooldownSetting {
  @JsonKey(name: 'is_enabled')
  bool get isEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'global_cooldown_seconds')
  int get globalCooldownSeconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchGlobalCooldownSettingCopyWith<TwitchGlobalCooldownSetting>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchGlobalCooldownSettingCopyWith<$Res> {
  factory $TwitchGlobalCooldownSettingCopyWith(
          TwitchGlobalCooldownSetting value,
          $Res Function(TwitchGlobalCooldownSetting) then) =
      _$TwitchGlobalCooldownSettingCopyWithImpl<$Res,
          TwitchGlobalCooldownSetting>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_enabled') bool isEnabled,
      @JsonKey(name: 'global_cooldown_seconds') int globalCooldownSeconds});
}

/// @nodoc
class _$TwitchGlobalCooldownSettingCopyWithImpl<$Res,
        $Val extends TwitchGlobalCooldownSetting>
    implements $TwitchGlobalCooldownSettingCopyWith<$Res> {
  _$TwitchGlobalCooldownSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? globalCooldownSeconds = null,
  }) {
    return _then(_value.copyWith(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      globalCooldownSeconds: null == globalCooldownSeconds
          ? _value.globalCooldownSeconds
          : globalCooldownSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwitchGlobalCooldownSettingImplCopyWith<$Res>
    implements $TwitchGlobalCooldownSettingCopyWith<$Res> {
  factory _$$TwitchGlobalCooldownSettingImplCopyWith(
          _$TwitchGlobalCooldownSettingImpl value,
          $Res Function(_$TwitchGlobalCooldownSettingImpl) then) =
      __$$TwitchGlobalCooldownSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_enabled') bool isEnabled,
      @JsonKey(name: 'global_cooldown_seconds') int globalCooldownSeconds});
}

/// @nodoc
class __$$TwitchGlobalCooldownSettingImplCopyWithImpl<$Res>
    extends _$TwitchGlobalCooldownSettingCopyWithImpl<$Res,
        _$TwitchGlobalCooldownSettingImpl>
    implements _$$TwitchGlobalCooldownSettingImplCopyWith<$Res> {
  __$$TwitchGlobalCooldownSettingImplCopyWithImpl(
      _$TwitchGlobalCooldownSettingImpl _value,
      $Res Function(_$TwitchGlobalCooldownSettingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? globalCooldownSeconds = null,
  }) {
    return _then(_$TwitchGlobalCooldownSettingImpl(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      globalCooldownSeconds: null == globalCooldownSeconds
          ? _value.globalCooldownSeconds
          : globalCooldownSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchGlobalCooldownSettingImpl
    implements _TwitchGlobalCooldownSetting {
  const _$TwitchGlobalCooldownSettingImpl(
      {@JsonKey(name: 'is_enabled') required this.isEnabled,
      @JsonKey(name: 'global_cooldown_seconds')
      required this.globalCooldownSeconds});

  factory _$TwitchGlobalCooldownSettingImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TwitchGlobalCooldownSettingImplFromJson(json);

  @override
  @JsonKey(name: 'is_enabled')
  final bool isEnabled;
  @override
  @JsonKey(name: 'global_cooldown_seconds')
  final int globalCooldownSeconds;

  @override
  String toString() {
    return 'TwitchGlobalCooldownSetting(isEnabled: $isEnabled, globalCooldownSeconds: $globalCooldownSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchGlobalCooldownSettingImpl &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.globalCooldownSeconds, globalCooldownSeconds) ||
                other.globalCooldownSeconds == globalCooldownSeconds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isEnabled, globalCooldownSeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchGlobalCooldownSettingImplCopyWith<_$TwitchGlobalCooldownSettingImpl>
      get copyWith => __$$TwitchGlobalCooldownSettingImplCopyWithImpl<
          _$TwitchGlobalCooldownSettingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchGlobalCooldownSettingImplToJson(
      this,
    );
  }
}

abstract class _TwitchGlobalCooldownSetting
    implements TwitchGlobalCooldownSetting {
  const factory _TwitchGlobalCooldownSetting(
          {@JsonKey(name: 'is_enabled') required final bool isEnabled,
          @JsonKey(name: 'global_cooldown_seconds')
          required final int globalCooldownSeconds}) =
      _$TwitchGlobalCooldownSettingImpl;

  factory _TwitchGlobalCooldownSetting.fromJson(Map<String, dynamic> json) =
      _$TwitchGlobalCooldownSettingImpl.fromJson;

  @override
  @JsonKey(name: 'is_enabled')
  bool get isEnabled;
  @override
  @JsonKey(name: 'global_cooldown_seconds')
  int get globalCooldownSeconds;
  @override
  @JsonKey(ignore: true)
  _$$TwitchGlobalCooldownSettingImplCopyWith<_$TwitchGlobalCooldownSettingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TwitchCustomReward _$TwitchCustomRewardFromJson(Map<String, dynamic> json) {
  return _TwitchCustomReward.fromJson(json);
}

/// @nodoc
mixin _$TwitchCustomReward {
  /// ID of the channel the reward is for.
  @JsonKey(name: 'broadcaster_name')
  String get broadcasterName => throw _privateConstructorUsedError;

  /// Broadcaster’s user login name.
  @JsonKey(name: 'broadcaster_login')
  String? get broadcasterLogin => throw _privateConstructorUsedError;

  /// Display name of the channel the reward is for.
  @JsonKey(name: 'broadcaster_id')
  String get broadcasterId => throw _privateConstructorUsedError;

  /// ID of the reward.
  String get id => throw _privateConstructorUsedError;

  /// Set of custom images of 1x, 2x and 4x sizes for the reward can be null if
  /// no images have been uploaded.
  TwitchCustomRewardImage? get image => throw _privateConstructorUsedError;

  /// Custom background color for the reward. Format: Hex with # prefix.
  /// Example: `#00E5CB`.
  @JsonKey(name: 'background_color')
  String get backgroundColor => throw _privateConstructorUsedError;

  /// Is the reward currently enabled, if false the reward won’t show up to
  /// viewers.
  @JsonKey(name: 'is_enabled')
  bool get isEnabled => throw _privateConstructorUsedError;

  /// The cost of the reward.
  int get cost => throw _privateConstructorUsedError;

  /// The title of the reward.
  String get title => throw _privateConstructorUsedError;

  /// The prompt for the viewer when they are redeeming the reward.
  String get prompt => throw _privateConstructorUsedError;

  /// Does the user need to enter information when redeeming the reward.
  @JsonKey(name: 'is_user_input_required')
  bool get isUserInputRequired => throw _privateConstructorUsedError;

  /// Whether a maximum per stream is enabled and what the maximum is.
  @JsonKey(name: 'max_per_stream_setting')
  TwitchMaxPerStream get maxPerStreamSetting =>
      throw _privateConstructorUsedError;

  /// Whether a maximum per user per stream is enabled and what the maximum is.
  @JsonKey(name: 'max_per_user_per_stream_setting')
  TwitchMaxPerUserPerStreamSetting get maxPerUserPerStreamSetting =>
      throw _privateConstructorUsedError;

  /// Whether a cooldown is enabled and what the cooldown is.
  @JsonKey(name: 'global_cooldown_setting')
  TwitchGlobalCooldownSetting get globalCooldownSetting =>
      throw _privateConstructorUsedError;

  /// Is the reward currently paused, if true viewers can’t redeem.
  @JsonKey(name: 'is_paused')
  bool get isPaused => throw _privateConstructorUsedError;

  /// Is the reward currently in stock, if false viewers can’t redeem.
  @JsonKey(name: 'is_in_stock')
  bool get isInStock => throw _privateConstructorUsedError;

  /// Set of default images of 1x, 2x and 4x sizes for the reward.
  @JsonKey(name: 'default_image')
  TwitchCustomRewardImage get defaultImage =>
      throw _privateConstructorUsedError;

  /// Should redemptions be set to FULFILLED status immediately when redeemed
  /// and skip the request queue instead of the normal UNFULFILLED status.
  @JsonKey(name: 'should_redemptions_skip_request_queue')
  bool get shouldRedemptionsSkipRequestQueue =>
      throw _privateConstructorUsedError;

  /// The number of redemptions redeemed during the current live stream. Counts
  /// against the max_per_stream_setting limit. Null if the broadcasters stream
  /// isn’t live or max_per_stream_setting isn’t enabled.
  @JsonKey(name: 'redemptions_redeemed_current_stream')
  int? get redemptionsRedeemedCurrentStream =>
      throw _privateConstructorUsedError;

  /// Timestamp of the cooldown expiration. Null if the reward isn’t on
  /// cooldown.
  @JsonKey(name: 'cooldown_expires_at')
  String? get cooldownExpiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchCustomRewardCopyWith<TwitchCustomReward> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchCustomRewardCopyWith<$Res> {
  factory $TwitchCustomRewardCopyWith(
          TwitchCustomReward value, $Res Function(TwitchCustomReward) then) =
      _$TwitchCustomRewardCopyWithImpl<$Res, TwitchCustomReward>;
  @useResult
  $Res call(
      {@JsonKey(name: 'broadcaster_name') String broadcasterName,
      @JsonKey(name: 'broadcaster_login') String? broadcasterLogin,
      @JsonKey(name: 'broadcaster_id') String broadcasterId,
      String id,
      TwitchCustomRewardImage? image,
      @JsonKey(name: 'background_color') String backgroundColor,
      @JsonKey(name: 'is_enabled') bool isEnabled,
      int cost,
      String title,
      String prompt,
      @JsonKey(name: 'is_user_input_required') bool isUserInputRequired,
      @JsonKey(name: 'max_per_stream_setting')
      TwitchMaxPerStream maxPerStreamSetting,
      @JsonKey(name: 'max_per_user_per_stream_setting')
      TwitchMaxPerUserPerStreamSetting maxPerUserPerStreamSetting,
      @JsonKey(name: 'global_cooldown_setting')
      TwitchGlobalCooldownSetting globalCooldownSetting,
      @JsonKey(name: 'is_paused') bool isPaused,
      @JsonKey(name: 'is_in_stock') bool isInStock,
      @JsonKey(name: 'default_image') TwitchCustomRewardImage defaultImage,
      @JsonKey(name: 'should_redemptions_skip_request_queue')
      bool shouldRedemptionsSkipRequestQueue,
      @JsonKey(name: 'redemptions_redeemed_current_stream')
      int? redemptionsRedeemedCurrentStream,
      @JsonKey(name: 'cooldown_expires_at') String? cooldownExpiresAt});

  $TwitchCustomRewardImageCopyWith<$Res>? get image;
  $TwitchMaxPerStreamCopyWith<$Res> get maxPerStreamSetting;
  $TwitchMaxPerUserPerStreamSettingCopyWith<$Res>
      get maxPerUserPerStreamSetting;
  $TwitchGlobalCooldownSettingCopyWith<$Res> get globalCooldownSetting;
  $TwitchCustomRewardImageCopyWith<$Res> get defaultImage;
}

/// @nodoc
class _$TwitchCustomRewardCopyWithImpl<$Res, $Val extends TwitchCustomReward>
    implements $TwitchCustomRewardCopyWith<$Res> {
  _$TwitchCustomRewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterName = null,
    Object? broadcasterLogin = freezed,
    Object? broadcasterId = null,
    Object? id = null,
    Object? image = freezed,
    Object? backgroundColor = null,
    Object? isEnabled = null,
    Object? cost = null,
    Object? title = null,
    Object? prompt = null,
    Object? isUserInputRequired = null,
    Object? maxPerStreamSetting = null,
    Object? maxPerUserPerStreamSetting = null,
    Object? globalCooldownSetting = null,
    Object? isPaused = null,
    Object? isInStock = null,
    Object? defaultImage = null,
    Object? shouldRedemptionsSkipRequestQueue = null,
    Object? redemptionsRedeemedCurrentStream = freezed,
    Object? cooldownExpiresAt = freezed,
  }) {
    return _then(_value.copyWith(
      broadcasterName: null == broadcasterName
          ? _value.broadcasterName
          : broadcasterName // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterLogin: freezed == broadcasterLogin
          ? _value.broadcasterLogin
          : broadcasterLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as TwitchCustomRewardImage?,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      isUserInputRequired: null == isUserInputRequired
          ? _value.isUserInputRequired
          : isUserInputRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      maxPerStreamSetting: null == maxPerStreamSetting
          ? _value.maxPerStreamSetting
          : maxPerStreamSetting // ignore: cast_nullable_to_non_nullable
              as TwitchMaxPerStream,
      maxPerUserPerStreamSetting: null == maxPerUserPerStreamSetting
          ? _value.maxPerUserPerStreamSetting
          : maxPerUserPerStreamSetting // ignore: cast_nullable_to_non_nullable
              as TwitchMaxPerUserPerStreamSetting,
      globalCooldownSetting: null == globalCooldownSetting
          ? _value.globalCooldownSetting
          : globalCooldownSetting // ignore: cast_nullable_to_non_nullable
              as TwitchGlobalCooldownSetting,
      isPaused: null == isPaused
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
      isInStock: null == isInStock
          ? _value.isInStock
          : isInStock // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultImage: null == defaultImage
          ? _value.defaultImage
          : defaultImage // ignore: cast_nullable_to_non_nullable
              as TwitchCustomRewardImage,
      shouldRedemptionsSkipRequestQueue: null ==
              shouldRedemptionsSkipRequestQueue
          ? _value.shouldRedemptionsSkipRequestQueue
          : shouldRedemptionsSkipRequestQueue // ignore: cast_nullable_to_non_nullable
              as bool,
      redemptionsRedeemedCurrentStream: freezed ==
              redemptionsRedeemedCurrentStream
          ? _value.redemptionsRedeemedCurrentStream
          : redemptionsRedeemedCurrentStream // ignore: cast_nullable_to_non_nullable
              as int?,
      cooldownExpiresAt: freezed == cooldownExpiresAt
          ? _value.cooldownExpiresAt
          : cooldownExpiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TwitchCustomRewardImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $TwitchCustomRewardImageCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TwitchMaxPerStreamCopyWith<$Res> get maxPerStreamSetting {
    return $TwitchMaxPerStreamCopyWith<$Res>(_value.maxPerStreamSetting,
        (value) {
      return _then(_value.copyWith(maxPerStreamSetting: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TwitchMaxPerUserPerStreamSettingCopyWith<$Res>
      get maxPerUserPerStreamSetting {
    return $TwitchMaxPerUserPerStreamSettingCopyWith<$Res>(
        _value.maxPerUserPerStreamSetting, (value) {
      return _then(_value.copyWith(maxPerUserPerStreamSetting: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TwitchGlobalCooldownSettingCopyWith<$Res> get globalCooldownSetting {
    return $TwitchGlobalCooldownSettingCopyWith<$Res>(
        _value.globalCooldownSetting, (value) {
      return _then(_value.copyWith(globalCooldownSetting: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TwitchCustomRewardImageCopyWith<$Res> get defaultImage {
    return $TwitchCustomRewardImageCopyWith<$Res>(_value.defaultImage, (value) {
      return _then(_value.copyWith(defaultImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TwitchCustomRewardImplCopyWith<$Res>
    implements $TwitchCustomRewardCopyWith<$Res> {
  factory _$$TwitchCustomRewardImplCopyWith(_$TwitchCustomRewardImpl value,
          $Res Function(_$TwitchCustomRewardImpl) then) =
      __$$TwitchCustomRewardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'broadcaster_name') String broadcasterName,
      @JsonKey(name: 'broadcaster_login') String? broadcasterLogin,
      @JsonKey(name: 'broadcaster_id') String broadcasterId,
      String id,
      TwitchCustomRewardImage? image,
      @JsonKey(name: 'background_color') String backgroundColor,
      @JsonKey(name: 'is_enabled') bool isEnabled,
      int cost,
      String title,
      String prompt,
      @JsonKey(name: 'is_user_input_required') bool isUserInputRequired,
      @JsonKey(name: 'max_per_stream_setting')
      TwitchMaxPerStream maxPerStreamSetting,
      @JsonKey(name: 'max_per_user_per_stream_setting')
      TwitchMaxPerUserPerStreamSetting maxPerUserPerStreamSetting,
      @JsonKey(name: 'global_cooldown_setting')
      TwitchGlobalCooldownSetting globalCooldownSetting,
      @JsonKey(name: 'is_paused') bool isPaused,
      @JsonKey(name: 'is_in_stock') bool isInStock,
      @JsonKey(name: 'default_image') TwitchCustomRewardImage defaultImage,
      @JsonKey(name: 'should_redemptions_skip_request_queue')
      bool shouldRedemptionsSkipRequestQueue,
      @JsonKey(name: 'redemptions_redeemed_current_stream')
      int? redemptionsRedeemedCurrentStream,
      @JsonKey(name: 'cooldown_expires_at') String? cooldownExpiresAt});

  @override
  $TwitchCustomRewardImageCopyWith<$Res>? get image;
  @override
  $TwitchMaxPerStreamCopyWith<$Res> get maxPerStreamSetting;
  @override
  $TwitchMaxPerUserPerStreamSettingCopyWith<$Res>
      get maxPerUserPerStreamSetting;
  @override
  $TwitchGlobalCooldownSettingCopyWith<$Res> get globalCooldownSetting;
  @override
  $TwitchCustomRewardImageCopyWith<$Res> get defaultImage;
}

/// @nodoc
class __$$TwitchCustomRewardImplCopyWithImpl<$Res>
    extends _$TwitchCustomRewardCopyWithImpl<$Res, _$TwitchCustomRewardImpl>
    implements _$$TwitchCustomRewardImplCopyWith<$Res> {
  __$$TwitchCustomRewardImplCopyWithImpl(_$TwitchCustomRewardImpl _value,
      $Res Function(_$TwitchCustomRewardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterName = null,
    Object? broadcasterLogin = freezed,
    Object? broadcasterId = null,
    Object? id = null,
    Object? image = freezed,
    Object? backgroundColor = null,
    Object? isEnabled = null,
    Object? cost = null,
    Object? title = null,
    Object? prompt = null,
    Object? isUserInputRequired = null,
    Object? maxPerStreamSetting = null,
    Object? maxPerUserPerStreamSetting = null,
    Object? globalCooldownSetting = null,
    Object? isPaused = null,
    Object? isInStock = null,
    Object? defaultImage = null,
    Object? shouldRedemptionsSkipRequestQueue = null,
    Object? redemptionsRedeemedCurrentStream = freezed,
    Object? cooldownExpiresAt = freezed,
  }) {
    return _then(_$TwitchCustomRewardImpl(
      broadcasterName: null == broadcasterName
          ? _value.broadcasterName
          : broadcasterName // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterLogin: freezed == broadcasterLogin
          ? _value.broadcasterLogin
          : broadcasterLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as TwitchCustomRewardImage?,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      isUserInputRequired: null == isUserInputRequired
          ? _value.isUserInputRequired
          : isUserInputRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      maxPerStreamSetting: null == maxPerStreamSetting
          ? _value.maxPerStreamSetting
          : maxPerStreamSetting // ignore: cast_nullable_to_non_nullable
              as TwitchMaxPerStream,
      maxPerUserPerStreamSetting: null == maxPerUserPerStreamSetting
          ? _value.maxPerUserPerStreamSetting
          : maxPerUserPerStreamSetting // ignore: cast_nullable_to_non_nullable
              as TwitchMaxPerUserPerStreamSetting,
      globalCooldownSetting: null == globalCooldownSetting
          ? _value.globalCooldownSetting
          : globalCooldownSetting // ignore: cast_nullable_to_non_nullable
              as TwitchGlobalCooldownSetting,
      isPaused: null == isPaused
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
      isInStock: null == isInStock
          ? _value.isInStock
          : isInStock // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultImage: null == defaultImage
          ? _value.defaultImage
          : defaultImage // ignore: cast_nullable_to_non_nullable
              as TwitchCustomRewardImage,
      shouldRedemptionsSkipRequestQueue: null ==
              shouldRedemptionsSkipRequestQueue
          ? _value.shouldRedemptionsSkipRequestQueue
          : shouldRedemptionsSkipRequestQueue // ignore: cast_nullable_to_non_nullable
              as bool,
      redemptionsRedeemedCurrentStream: freezed ==
              redemptionsRedeemedCurrentStream
          ? _value.redemptionsRedeemedCurrentStream
          : redemptionsRedeemedCurrentStream // ignore: cast_nullable_to_non_nullable
              as int?,
      cooldownExpiresAt: freezed == cooldownExpiresAt
          ? _value.cooldownExpiresAt
          : cooldownExpiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchCustomRewardImpl implements _TwitchCustomReward {
  const _$TwitchCustomRewardImpl(
      {@JsonKey(name: 'broadcaster_name') required this.broadcasterName,
      @JsonKey(name: 'broadcaster_login') required this.broadcasterLogin,
      @JsonKey(name: 'broadcaster_id') required this.broadcasterId,
      required this.id,
      required this.image,
      @JsonKey(name: 'background_color') required this.backgroundColor,
      @JsonKey(name: 'is_enabled') required this.isEnabled,
      required this.cost,
      required this.title,
      required this.prompt,
      @JsonKey(name: 'is_user_input_required')
      required this.isUserInputRequired,
      @JsonKey(name: 'max_per_stream_setting')
      required this.maxPerStreamSetting,
      @JsonKey(name: 'max_per_user_per_stream_setting')
      required this.maxPerUserPerStreamSetting,
      @JsonKey(name: 'global_cooldown_setting')
      required this.globalCooldownSetting,
      @JsonKey(name: 'is_paused') required this.isPaused,
      @JsonKey(name: 'is_in_stock') required this.isInStock,
      @JsonKey(name: 'default_image') required this.defaultImage,
      @JsonKey(name: 'should_redemptions_skip_request_queue')
      required this.shouldRedemptionsSkipRequestQueue,
      @JsonKey(name: 'redemptions_redeemed_current_stream')
      required this.redemptionsRedeemedCurrentStream,
      @JsonKey(name: 'cooldown_expires_at') required this.cooldownExpiresAt});

  factory _$TwitchCustomRewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchCustomRewardImplFromJson(json);

  /// ID of the channel the reward is for.
  @override
  @JsonKey(name: 'broadcaster_name')
  final String broadcasterName;

  /// Broadcaster’s user login name.
  @override
  @JsonKey(name: 'broadcaster_login')
  final String? broadcasterLogin;

  /// Display name of the channel the reward is for.
  @override
  @JsonKey(name: 'broadcaster_id')
  final String broadcasterId;

  /// ID of the reward.
  @override
  final String id;

  /// Set of custom images of 1x, 2x and 4x sizes for the reward can be null if
  /// no images have been uploaded.
  @override
  final TwitchCustomRewardImage? image;

  /// Custom background color for the reward. Format: Hex with # prefix.
  /// Example: `#00E5CB`.
  @override
  @JsonKey(name: 'background_color')
  final String backgroundColor;

  /// Is the reward currently enabled, if false the reward won’t show up to
  /// viewers.
  @override
  @JsonKey(name: 'is_enabled')
  final bool isEnabled;

  /// The cost of the reward.
  @override
  final int cost;

  /// The title of the reward.
  @override
  final String title;

  /// The prompt for the viewer when they are redeeming the reward.
  @override
  final String prompt;

  /// Does the user need to enter information when redeeming the reward.
  @override
  @JsonKey(name: 'is_user_input_required')
  final bool isUserInputRequired;

  /// Whether a maximum per stream is enabled and what the maximum is.
  @override
  @JsonKey(name: 'max_per_stream_setting')
  final TwitchMaxPerStream maxPerStreamSetting;

  /// Whether a maximum per user per stream is enabled and what the maximum is.
  @override
  @JsonKey(name: 'max_per_user_per_stream_setting')
  final TwitchMaxPerUserPerStreamSetting maxPerUserPerStreamSetting;

  /// Whether a cooldown is enabled and what the cooldown is.
  @override
  @JsonKey(name: 'global_cooldown_setting')
  final TwitchGlobalCooldownSetting globalCooldownSetting;

  /// Is the reward currently paused, if true viewers can’t redeem.
  @override
  @JsonKey(name: 'is_paused')
  final bool isPaused;

  /// Is the reward currently in stock, if false viewers can’t redeem.
  @override
  @JsonKey(name: 'is_in_stock')
  final bool isInStock;

  /// Set of default images of 1x, 2x and 4x sizes for the reward.
  @override
  @JsonKey(name: 'default_image')
  final TwitchCustomRewardImage defaultImage;

  /// Should redemptions be set to FULFILLED status immediately when redeemed
  /// and skip the request queue instead of the normal UNFULFILLED status.
  @override
  @JsonKey(name: 'should_redemptions_skip_request_queue')
  final bool shouldRedemptionsSkipRequestQueue;

  /// The number of redemptions redeemed during the current live stream. Counts
  /// against the max_per_stream_setting limit. Null if the broadcasters stream
  /// isn’t live or max_per_stream_setting isn’t enabled.
  @override
  @JsonKey(name: 'redemptions_redeemed_current_stream')
  final int? redemptionsRedeemedCurrentStream;

  /// Timestamp of the cooldown expiration. Null if the reward isn’t on
  /// cooldown.
  @override
  @JsonKey(name: 'cooldown_expires_at')
  final String? cooldownExpiresAt;

  @override
  String toString() {
    return 'TwitchCustomReward(broadcasterName: $broadcasterName, broadcasterLogin: $broadcasterLogin, broadcasterId: $broadcasterId, id: $id, image: $image, backgroundColor: $backgroundColor, isEnabled: $isEnabled, cost: $cost, title: $title, prompt: $prompt, isUserInputRequired: $isUserInputRequired, maxPerStreamSetting: $maxPerStreamSetting, maxPerUserPerStreamSetting: $maxPerUserPerStreamSetting, globalCooldownSetting: $globalCooldownSetting, isPaused: $isPaused, isInStock: $isInStock, defaultImage: $defaultImage, shouldRedemptionsSkipRequestQueue: $shouldRedemptionsSkipRequestQueue, redemptionsRedeemedCurrentStream: $redemptionsRedeemedCurrentStream, cooldownExpiresAt: $cooldownExpiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchCustomRewardImpl &&
            (identical(other.broadcasterName, broadcasterName) ||
                other.broadcasterName == broadcasterName) &&
            (identical(other.broadcasterLogin, broadcasterLogin) ||
                other.broadcasterLogin == broadcasterLogin) &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.isUserInputRequired, isUserInputRequired) ||
                other.isUserInputRequired == isUserInputRequired) &&
            (identical(other.maxPerStreamSetting, maxPerStreamSetting) ||
                other.maxPerStreamSetting == maxPerStreamSetting) &&
            (identical(other.maxPerUserPerStreamSetting,
                    maxPerUserPerStreamSetting) ||
                other.maxPerUserPerStreamSetting ==
                    maxPerUserPerStreamSetting) &&
            (identical(other.globalCooldownSetting, globalCooldownSetting) ||
                other.globalCooldownSetting == globalCooldownSetting) &&
            (identical(other.isPaused, isPaused) ||
                other.isPaused == isPaused) &&
            (identical(other.isInStock, isInStock) ||
                other.isInStock == isInStock) &&
            (identical(other.defaultImage, defaultImage) ||
                other.defaultImage == defaultImage) &&
            (identical(other.shouldRedemptionsSkipRequestQueue,
                    shouldRedemptionsSkipRequestQueue) ||
                other.shouldRedemptionsSkipRequestQueue ==
                    shouldRedemptionsSkipRequestQueue) &&
            (identical(other.redemptionsRedeemedCurrentStream,
                    redemptionsRedeemedCurrentStream) ||
                other.redemptionsRedeemedCurrentStream ==
                    redemptionsRedeemedCurrentStream) &&
            (identical(other.cooldownExpiresAt, cooldownExpiresAt) ||
                other.cooldownExpiresAt == cooldownExpiresAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        broadcasterName,
        broadcasterLogin,
        broadcasterId,
        id,
        image,
        backgroundColor,
        isEnabled,
        cost,
        title,
        prompt,
        isUserInputRequired,
        maxPerStreamSetting,
        maxPerUserPerStreamSetting,
        globalCooldownSetting,
        isPaused,
        isInStock,
        defaultImage,
        shouldRedemptionsSkipRequestQueue,
        redemptionsRedeemedCurrentStream,
        cooldownExpiresAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchCustomRewardImplCopyWith<_$TwitchCustomRewardImpl> get copyWith =>
      __$$TwitchCustomRewardImplCopyWithImpl<_$TwitchCustomRewardImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchCustomRewardImplToJson(
      this,
    );
  }
}

abstract class _TwitchCustomReward implements TwitchCustomReward {
  const factory _TwitchCustomReward(
      {@JsonKey(name: 'broadcaster_name') required final String broadcasterName,
      @JsonKey(name: 'broadcaster_login')
      required final String? broadcasterLogin,
      @JsonKey(name: 'broadcaster_id') required final String broadcasterId,
      required final String id,
      required final TwitchCustomRewardImage? image,
      @JsonKey(name: 'background_color') required final String backgroundColor,
      @JsonKey(name: 'is_enabled') required final bool isEnabled,
      required final int cost,
      required final String title,
      required final String prompt,
      @JsonKey(name: 'is_user_input_required')
      required final bool isUserInputRequired,
      @JsonKey(name: 'max_per_stream_setting')
      required final TwitchMaxPerStream maxPerStreamSetting,
      @JsonKey(name: 'max_per_user_per_stream_setting')
      required final TwitchMaxPerUserPerStreamSetting
          maxPerUserPerStreamSetting,
      @JsonKey(name: 'global_cooldown_setting')
      required final TwitchGlobalCooldownSetting globalCooldownSetting,
      @JsonKey(name: 'is_paused') required final bool isPaused,
      @JsonKey(name: 'is_in_stock') required final bool isInStock,
      @JsonKey(name: 'default_image')
      required final TwitchCustomRewardImage defaultImage,
      @JsonKey(name: 'should_redemptions_skip_request_queue')
      required final bool shouldRedemptionsSkipRequestQueue,
      @JsonKey(name: 'redemptions_redeemed_current_stream')
      required final int? redemptionsRedeemedCurrentStream,
      @JsonKey(name: 'cooldown_expires_at')
      required final String? cooldownExpiresAt}) = _$TwitchCustomRewardImpl;

  factory _TwitchCustomReward.fromJson(Map<String, dynamic> json) =
      _$TwitchCustomRewardImpl.fromJson;

  @override

  /// ID of the channel the reward is for.
  @JsonKey(name: 'broadcaster_name')
  String get broadcasterName;
  @override

  /// Broadcaster’s user login name.
  @JsonKey(name: 'broadcaster_login')
  String? get broadcasterLogin;
  @override

  /// Display name of the channel the reward is for.
  @JsonKey(name: 'broadcaster_id')
  String get broadcasterId;
  @override

  /// ID of the reward.
  String get id;
  @override

  /// Set of custom images of 1x, 2x and 4x sizes for the reward can be null if
  /// no images have been uploaded.
  TwitchCustomRewardImage? get image;
  @override

  /// Custom background color for the reward. Format: Hex with # prefix.
  /// Example: `#00E5CB`.
  @JsonKey(name: 'background_color')
  String get backgroundColor;
  @override

  /// Is the reward currently enabled, if false the reward won’t show up to
  /// viewers.
  @JsonKey(name: 'is_enabled')
  bool get isEnabled;
  @override

  /// The cost of the reward.
  int get cost;
  @override

  /// The title of the reward.
  String get title;
  @override

  /// The prompt for the viewer when they are redeeming the reward.
  String get prompt;
  @override

  /// Does the user need to enter information when redeeming the reward.
  @JsonKey(name: 'is_user_input_required')
  bool get isUserInputRequired;
  @override

  /// Whether a maximum per stream is enabled and what the maximum is.
  @JsonKey(name: 'max_per_stream_setting')
  TwitchMaxPerStream get maxPerStreamSetting;
  @override

  /// Whether a maximum per user per stream is enabled and what the maximum is.
  @JsonKey(name: 'max_per_user_per_stream_setting')
  TwitchMaxPerUserPerStreamSetting get maxPerUserPerStreamSetting;
  @override

  /// Whether a cooldown is enabled and what the cooldown is.
  @JsonKey(name: 'global_cooldown_setting')
  TwitchGlobalCooldownSetting get globalCooldownSetting;
  @override

  /// Is the reward currently paused, if true viewers can’t redeem.
  @JsonKey(name: 'is_paused')
  bool get isPaused;
  @override

  /// Is the reward currently in stock, if false viewers can’t redeem.
  @JsonKey(name: 'is_in_stock')
  bool get isInStock;
  @override

  /// Set of default images of 1x, 2x and 4x sizes for the reward.
  @JsonKey(name: 'default_image')
  TwitchCustomRewardImage get defaultImage;
  @override

  /// Should redemptions be set to FULFILLED status immediately when redeemed
  /// and skip the request queue instead of the normal UNFULFILLED status.
  @JsonKey(name: 'should_redemptions_skip_request_queue')
  bool get shouldRedemptionsSkipRequestQueue;
  @override

  /// The number of redemptions redeemed during the current live stream. Counts
  /// against the max_per_stream_setting limit. Null if the broadcasters stream
  /// isn’t live or max_per_stream_setting isn’t enabled.
  @JsonKey(name: 'redemptions_redeemed_current_stream')
  int? get redemptionsRedeemedCurrentStream;
  @override

  /// Timestamp of the cooldown expiration. Null if the reward isn’t on
  /// cooldown.
  @JsonKey(name: 'cooldown_expires_at')
  String? get cooldownExpiresAt;
  @override
  @JsonKey(ignore: true)
  _$$TwitchCustomRewardImplCopyWith<_$TwitchCustomRewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
