// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_emotes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TwitchGlobalEmotes _$TwitchGlobalEmotesFromJson(Map<String, dynamic> json) {
  return _TwitchGlobalEmotes.fromJson(json);
}

/// @nodoc
mixin _$TwitchGlobalEmotes {
  /// {@template twitchEmotes.id}
  /// An ID that identifies the emote.
  /// {@endtemplate}
  String get id => throw _privateConstructorUsedError;

  /// {@template twitchEmotes.name}
  /// The name of the emote. This is the name that viewers type in the chat
  /// window to get the emote to appear.
  /// {@endtemplate}
  String get name => throw _privateConstructorUsedError;

  /// {@template twitchEmotes.images}
  /// Contains the image URLs for the emote. These image URLs will always
  /// provide a static (i.e., non-animated) emote image with a light
  /// background.
  /// NOTE: The preference is for you to use the templated URL in the template
  /// field to fetch the image instead of using these URLs.
  /// {@endtemplate}
  TwitchCustomRewardImage get images => throw _privateConstructorUsedError;

  /// {@template twitchEmotes.format}
  /// The formats that the emote is available in. For example, if the emote is
  /// available only as a static PNG, the array contains only
  /// [TwitchEmoteFormat.static]. But if it’s available as a static PNG and an
  /// animated GIF, the array contains [TwitchEmoteFormat.static] and
  /// [TwitchEmoteFormat.animated].
  /// {@endtemplate}
  List<TwitchEmoteFormat> get format => throw _privateConstructorUsedError;

  /// {@template twitchEmotes.scale}
  /// The sizes that the emote is available in. For example, if the emote is
  /// available in small and medium sizes, the array contains `1.0` and `2.0`.
  /// {@endtemplate}
  List<String> get scale => throw _privateConstructorUsedError;

  /// {@template twitchEmotes.themeMode}
  /// The background themes that the emote is available in.
  /// {@endtemplate}
  @JsonKey(name: 'theme_mode')
  List<TwitchThemeMode> get themeMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchGlobalEmotesCopyWith<TwitchGlobalEmotes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchGlobalEmotesCopyWith<$Res> {
  factory $TwitchGlobalEmotesCopyWith(
          TwitchGlobalEmotes value, $Res Function(TwitchGlobalEmotes) then) =
      _$TwitchGlobalEmotesCopyWithImpl<$Res, TwitchGlobalEmotes>;
  @useResult
  $Res call(
      {String id,
      String name,
      TwitchCustomRewardImage images,
      List<TwitchEmoteFormat> format,
      List<String> scale,
      @JsonKey(name: 'theme_mode') List<TwitchThemeMode> themeMode});

  $TwitchCustomRewardImageCopyWith<$Res> get images;
}

/// @nodoc
class _$TwitchGlobalEmotesCopyWithImpl<$Res, $Val extends TwitchGlobalEmotes>
    implements $TwitchGlobalEmotesCopyWith<$Res> {
  _$TwitchGlobalEmotesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = null,
    Object? format = null,
    Object? scale = null,
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as TwitchCustomRewardImage,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as List<TwitchEmoteFormat>,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as List<String>,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as List<TwitchThemeMode>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TwitchCustomRewardImageCopyWith<$Res> get images {
    return $TwitchCustomRewardImageCopyWith<$Res>(_value.images, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TwitchGlobalEmotesImplCopyWith<$Res>
    implements $TwitchGlobalEmotesCopyWith<$Res> {
  factory _$$TwitchGlobalEmotesImplCopyWith(_$TwitchGlobalEmotesImpl value,
          $Res Function(_$TwitchGlobalEmotesImpl) then) =
      __$$TwitchGlobalEmotesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      TwitchCustomRewardImage images,
      List<TwitchEmoteFormat> format,
      List<String> scale,
      @JsonKey(name: 'theme_mode') List<TwitchThemeMode> themeMode});

  @override
  $TwitchCustomRewardImageCopyWith<$Res> get images;
}

/// @nodoc
class __$$TwitchGlobalEmotesImplCopyWithImpl<$Res>
    extends _$TwitchGlobalEmotesCopyWithImpl<$Res, _$TwitchGlobalEmotesImpl>
    implements _$$TwitchGlobalEmotesImplCopyWith<$Res> {
  __$$TwitchGlobalEmotesImplCopyWithImpl(_$TwitchGlobalEmotesImpl _value,
      $Res Function(_$TwitchGlobalEmotesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = null,
    Object? format = null,
    Object? scale = null,
    Object? themeMode = null,
  }) {
    return _then(_$TwitchGlobalEmotesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as TwitchCustomRewardImage,
      format: null == format
          ? _value._format
          : format // ignore: cast_nullable_to_non_nullable
              as List<TwitchEmoteFormat>,
      scale: null == scale
          ? _value._scale
          : scale // ignore: cast_nullable_to_non_nullable
              as List<String>,
      themeMode: null == themeMode
          ? _value._themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as List<TwitchThemeMode>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchGlobalEmotesImpl implements _TwitchGlobalEmotes {
  const _$TwitchGlobalEmotesImpl(
      {required this.id,
      required this.name,
      required this.images,
      required final List<TwitchEmoteFormat> format,
      required final List<String> scale,
      @JsonKey(name: 'theme_mode')
      required final List<TwitchThemeMode> themeMode})
      : _format = format,
        _scale = scale,
        _themeMode = themeMode;

  factory _$TwitchGlobalEmotesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchGlobalEmotesImplFromJson(json);

  /// {@template twitchEmotes.id}
  /// An ID that identifies the emote.
  /// {@endtemplate}
  @override
  final String id;

  /// {@template twitchEmotes.name}
  /// The name of the emote. This is the name that viewers type in the chat
  /// window to get the emote to appear.
  /// {@endtemplate}
  @override
  final String name;

  /// {@template twitchEmotes.images}
  /// Contains the image URLs for the emote. These image URLs will always
  /// provide a static (i.e., non-animated) emote image with a light
  /// background.
  /// NOTE: The preference is for you to use the templated URL in the template
  /// field to fetch the image instead of using these URLs.
  /// {@endtemplate}
  @override
  final TwitchCustomRewardImage images;

  /// {@template twitchEmotes.format}
  /// The formats that the emote is available in. For example, if the emote is
  /// available only as a static PNG, the array contains only
  /// [TwitchEmoteFormat.static]. But if it’s available as a static PNG and an
  /// animated GIF, the array contains [TwitchEmoteFormat.static] and
  /// [TwitchEmoteFormat.animated].
  /// {@endtemplate}
  final List<TwitchEmoteFormat> _format;

  /// {@template twitchEmotes.format}
  /// The formats that the emote is available in. For example, if the emote is
  /// available only as a static PNG, the array contains only
  /// [TwitchEmoteFormat.static]. But if it’s available as a static PNG and an
  /// animated GIF, the array contains [TwitchEmoteFormat.static] and
  /// [TwitchEmoteFormat.animated].
  /// {@endtemplate}
  @override
  List<TwitchEmoteFormat> get format {
    if (_format is EqualUnmodifiableListView) return _format;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_format);
  }

  /// {@template twitchEmotes.scale}
  /// The sizes that the emote is available in. For example, if the emote is
  /// available in small and medium sizes, the array contains `1.0` and `2.0`.
  /// {@endtemplate}
  final List<String> _scale;

  /// {@template twitchEmotes.scale}
  /// The sizes that the emote is available in. For example, if the emote is
  /// available in small and medium sizes, the array contains `1.0` and `2.0`.
  /// {@endtemplate}
  @override
  List<String> get scale {
    if (_scale is EqualUnmodifiableListView) return _scale;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scale);
  }

  /// {@template twitchEmotes.themeMode}
  /// The background themes that the emote is available in.
  /// {@endtemplate}
  final List<TwitchThemeMode> _themeMode;

  /// {@template twitchEmotes.themeMode}
  /// The background themes that the emote is available in.
  /// {@endtemplate}
  @override
  @JsonKey(name: 'theme_mode')
  List<TwitchThemeMode> get themeMode {
    if (_themeMode is EqualUnmodifiableListView) return _themeMode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_themeMode);
  }

  @override
  String toString() {
    return 'TwitchGlobalEmotes(id: $id, name: $name, images: $images, format: $format, scale: $scale, themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchGlobalEmotesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.images, images) || other.images == images) &&
            const DeepCollectionEquality().equals(other._format, _format) &&
            const DeepCollectionEquality().equals(other._scale, _scale) &&
            const DeepCollectionEquality()
                .equals(other._themeMode, _themeMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      images,
      const DeepCollectionEquality().hash(_format),
      const DeepCollectionEquality().hash(_scale),
      const DeepCollectionEquality().hash(_themeMode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchGlobalEmotesImplCopyWith<_$TwitchGlobalEmotesImpl> get copyWith =>
      __$$TwitchGlobalEmotesImplCopyWithImpl<_$TwitchGlobalEmotesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchGlobalEmotesImplToJson(
      this,
    );
  }
}

abstract class _TwitchGlobalEmotes implements TwitchGlobalEmotes {
  const factory _TwitchGlobalEmotes(
          {required final String id,
          required final String name,
          required final TwitchCustomRewardImage images,
          required final List<TwitchEmoteFormat> format,
          required final List<String> scale,
          @JsonKey(name: 'theme_mode')
          required final List<TwitchThemeMode> themeMode}) =
      _$TwitchGlobalEmotesImpl;

  factory _TwitchGlobalEmotes.fromJson(Map<String, dynamic> json) =
      _$TwitchGlobalEmotesImpl.fromJson;

  @override

  /// {@template twitchEmotes.id}
  /// An ID that identifies the emote.
  /// {@endtemplate}
  String get id;
  @override

  /// {@template twitchEmotes.name}
  /// The name of the emote. This is the name that viewers type in the chat
  /// window to get the emote to appear.
  /// {@endtemplate}
  String get name;
  @override

  /// {@template twitchEmotes.images}
  /// Contains the image URLs for the emote. These image URLs will always
  /// provide a static (i.e., non-animated) emote image with a light
  /// background.
  /// NOTE: The preference is for you to use the templated URL in the template
  /// field to fetch the image instead of using these URLs.
  /// {@endtemplate}
  TwitchCustomRewardImage get images;
  @override

  /// {@template twitchEmotes.format}
  /// The formats that the emote is available in. For example, if the emote is
  /// available only as a static PNG, the array contains only
  /// [TwitchEmoteFormat.static]. But if it’s available as a static PNG and an
  /// animated GIF, the array contains [TwitchEmoteFormat.static] and
  /// [TwitchEmoteFormat.animated].
  /// {@endtemplate}
  List<TwitchEmoteFormat> get format;
  @override

  /// {@template twitchEmotes.scale}
  /// The sizes that the emote is available in. For example, if the emote is
  /// available in small and medium sizes, the array contains `1.0` and `2.0`.
  /// {@endtemplate}
  List<String> get scale;
  @override

  /// {@template twitchEmotes.themeMode}
  /// The background themes that the emote is available in.
  /// {@endtemplate}
  @JsonKey(name: 'theme_mode')
  List<TwitchThemeMode> get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$TwitchGlobalEmotesImplCopyWith<_$TwitchGlobalEmotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TwitchEmotes _$TwitchEmotesFromJson(Map<String, dynamic> json) {
  return _TwitchEmotes.fromJson(json);
}

/// @nodoc
mixin _$TwitchEmotes {
  /// {@macro twitchEmotes.id}
  String get id => throw _privateConstructorUsedError;

  /// {@macro twitchEmotes.name}
  String get name => throw _privateConstructorUsedError;

  /// {@macro twitchEmotes.images}
  TwitchCustomRewardImage get images => throw _privateConstructorUsedError;

  /// The subscriber tier at which the emote is unlocked. This field contains
  /// the tier information only if [emoteType] is set to
  /// [TwitchEmoteType.subscriptions], otherwise, it’s an empty string.
  String get tier => throw _privateConstructorUsedError;

  /// {@template twitchEmotes.emoteType}
  /// The type of emote.
  /// {@endtemplate}
  @JsonKey(name: 'emote_type')
  TwitchEmoteType get emoteType => throw _privateConstructorUsedError;

  /// {@template twitchEmotes.emoteSetId}
  /// An ID that identifies the emote set that the emote belongs to.
  /// {@endtemplate}
  @JsonKey(name: 'emote_set_id')
  String get emoteSetId => throw _privateConstructorUsedError;

  /// {@macro twitchEmotes.format}
  List<TwitchEmoteFormat> get format => throw _privateConstructorUsedError;

  /// {@macro twitchEmotes.scale}
  List<String> get scale => throw _privateConstructorUsedError;

  /// {@macro twitchEmotes.themeMode}
  @JsonKey(name: 'theme_mode')
  List<TwitchThemeMode> get themeMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchEmotesCopyWith<TwitchEmotes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchEmotesCopyWith<$Res> {
  factory $TwitchEmotesCopyWith(
          TwitchEmotes value, $Res Function(TwitchEmotes) then) =
      _$TwitchEmotesCopyWithImpl<$Res, TwitchEmotes>;
  @useResult
  $Res call(
      {String id,
      String name,
      TwitchCustomRewardImage images,
      String tier,
      @JsonKey(name: 'emote_type') TwitchEmoteType emoteType,
      @JsonKey(name: 'emote_set_id') String emoteSetId,
      List<TwitchEmoteFormat> format,
      List<String> scale,
      @JsonKey(name: 'theme_mode') List<TwitchThemeMode> themeMode});

  $TwitchCustomRewardImageCopyWith<$Res> get images;
}

/// @nodoc
class _$TwitchEmotesCopyWithImpl<$Res, $Val extends TwitchEmotes>
    implements $TwitchEmotesCopyWith<$Res> {
  _$TwitchEmotesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = null,
    Object? tier = null,
    Object? emoteType = null,
    Object? emoteSetId = null,
    Object? format = null,
    Object? scale = null,
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as TwitchCustomRewardImage,
      tier: null == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as String,
      emoteType: null == emoteType
          ? _value.emoteType
          : emoteType // ignore: cast_nullable_to_non_nullable
              as TwitchEmoteType,
      emoteSetId: null == emoteSetId
          ? _value.emoteSetId
          : emoteSetId // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as List<TwitchEmoteFormat>,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as List<String>,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as List<TwitchThemeMode>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TwitchCustomRewardImageCopyWith<$Res> get images {
    return $TwitchCustomRewardImageCopyWith<$Res>(_value.images, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TwitchEmotesImplCopyWith<$Res>
    implements $TwitchEmotesCopyWith<$Res> {
  factory _$$TwitchEmotesImplCopyWith(
          _$TwitchEmotesImpl value, $Res Function(_$TwitchEmotesImpl) then) =
      __$$TwitchEmotesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      TwitchCustomRewardImage images,
      String tier,
      @JsonKey(name: 'emote_type') TwitchEmoteType emoteType,
      @JsonKey(name: 'emote_set_id') String emoteSetId,
      List<TwitchEmoteFormat> format,
      List<String> scale,
      @JsonKey(name: 'theme_mode') List<TwitchThemeMode> themeMode});

  @override
  $TwitchCustomRewardImageCopyWith<$Res> get images;
}

/// @nodoc
class __$$TwitchEmotesImplCopyWithImpl<$Res>
    extends _$TwitchEmotesCopyWithImpl<$Res, _$TwitchEmotesImpl>
    implements _$$TwitchEmotesImplCopyWith<$Res> {
  __$$TwitchEmotesImplCopyWithImpl(
      _$TwitchEmotesImpl _value, $Res Function(_$TwitchEmotesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = null,
    Object? tier = null,
    Object? emoteType = null,
    Object? emoteSetId = null,
    Object? format = null,
    Object? scale = null,
    Object? themeMode = null,
  }) {
    return _then(_$TwitchEmotesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as TwitchCustomRewardImage,
      tier: null == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as String,
      emoteType: null == emoteType
          ? _value.emoteType
          : emoteType // ignore: cast_nullable_to_non_nullable
              as TwitchEmoteType,
      emoteSetId: null == emoteSetId
          ? _value.emoteSetId
          : emoteSetId // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value._format
          : format // ignore: cast_nullable_to_non_nullable
              as List<TwitchEmoteFormat>,
      scale: null == scale
          ? _value._scale
          : scale // ignore: cast_nullable_to_non_nullable
              as List<String>,
      themeMode: null == themeMode
          ? _value._themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as List<TwitchThemeMode>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchEmotesImpl implements _TwitchEmotes {
  const _$TwitchEmotesImpl(
      {required this.id,
      required this.name,
      required this.images,
      required this.tier,
      @JsonKey(name: 'emote_type') required this.emoteType,
      @JsonKey(name: 'emote_set_id') required this.emoteSetId,
      required final List<TwitchEmoteFormat> format,
      required final List<String> scale,
      @JsonKey(name: 'theme_mode')
      required final List<TwitchThemeMode> themeMode})
      : _format = format,
        _scale = scale,
        _themeMode = themeMode;

  factory _$TwitchEmotesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchEmotesImplFromJson(json);

  /// {@macro twitchEmotes.id}
  @override
  final String id;

  /// {@macro twitchEmotes.name}
  @override
  final String name;

  /// {@macro twitchEmotes.images}
  @override
  final TwitchCustomRewardImage images;

  /// The subscriber tier at which the emote is unlocked. This field contains
  /// the tier information only if [emoteType] is set to
  /// [TwitchEmoteType.subscriptions], otherwise, it’s an empty string.
  @override
  final String tier;

  /// {@template twitchEmotes.emoteType}
  /// The type of emote.
  /// {@endtemplate}
  @override
  @JsonKey(name: 'emote_type')
  final TwitchEmoteType emoteType;

  /// {@template twitchEmotes.emoteSetId}
  /// An ID that identifies the emote set that the emote belongs to.
  /// {@endtemplate}
  @override
  @JsonKey(name: 'emote_set_id')
  final String emoteSetId;

  /// {@macro twitchEmotes.format}
  final List<TwitchEmoteFormat> _format;

  /// {@macro twitchEmotes.format}
  @override
  List<TwitchEmoteFormat> get format {
    if (_format is EqualUnmodifiableListView) return _format;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_format);
  }

  /// {@macro twitchEmotes.scale}
  final List<String> _scale;

  /// {@macro twitchEmotes.scale}
  @override
  List<String> get scale {
    if (_scale is EqualUnmodifiableListView) return _scale;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scale);
  }

  /// {@macro twitchEmotes.themeMode}
  final List<TwitchThemeMode> _themeMode;

  /// {@macro twitchEmotes.themeMode}
  @override
  @JsonKey(name: 'theme_mode')
  List<TwitchThemeMode> get themeMode {
    if (_themeMode is EqualUnmodifiableListView) return _themeMode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_themeMode);
  }

  @override
  String toString() {
    return 'TwitchEmotes(id: $id, name: $name, images: $images, tier: $tier, emoteType: $emoteType, emoteSetId: $emoteSetId, format: $format, scale: $scale, themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchEmotesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.emoteType, emoteType) ||
                other.emoteType == emoteType) &&
            (identical(other.emoteSetId, emoteSetId) ||
                other.emoteSetId == emoteSetId) &&
            const DeepCollectionEquality().equals(other._format, _format) &&
            const DeepCollectionEquality().equals(other._scale, _scale) &&
            const DeepCollectionEquality()
                .equals(other._themeMode, _themeMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      images,
      tier,
      emoteType,
      emoteSetId,
      const DeepCollectionEquality().hash(_format),
      const DeepCollectionEquality().hash(_scale),
      const DeepCollectionEquality().hash(_themeMode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchEmotesImplCopyWith<_$TwitchEmotesImpl> get copyWith =>
      __$$TwitchEmotesImplCopyWithImpl<_$TwitchEmotesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchEmotesImplToJson(
      this,
    );
  }
}

abstract class _TwitchEmotes implements TwitchEmotes {
  const factory _TwitchEmotes(
      {required final String id,
      required final String name,
      required final TwitchCustomRewardImage images,
      required final String tier,
      @JsonKey(name: 'emote_type') required final TwitchEmoteType emoteType,
      @JsonKey(name: 'emote_set_id') required final String emoteSetId,
      required final List<TwitchEmoteFormat> format,
      required final List<String> scale,
      @JsonKey(name: 'theme_mode')
      required final List<TwitchThemeMode> themeMode}) = _$TwitchEmotesImpl;

  factory _TwitchEmotes.fromJson(Map<String, dynamic> json) =
      _$TwitchEmotesImpl.fromJson;

  @override

  /// {@macro twitchEmotes.id}
  String get id;
  @override

  /// {@macro twitchEmotes.name}
  String get name;
  @override

  /// {@macro twitchEmotes.images}
  TwitchCustomRewardImage get images;
  @override

  /// The subscriber tier at which the emote is unlocked. This field contains
  /// the tier information only if [emoteType] is set to
  /// [TwitchEmoteType.subscriptions], otherwise, it’s an empty string.
  String get tier;
  @override

  /// {@template twitchEmotes.emoteType}
  /// The type of emote.
  /// {@endtemplate}
  @JsonKey(name: 'emote_type')
  TwitchEmoteType get emoteType;
  @override

  /// {@template twitchEmotes.emoteSetId}
  /// An ID that identifies the emote set that the emote belongs to.
  /// {@endtemplate}
  @JsonKey(name: 'emote_set_id')
  String get emoteSetId;
  @override

  /// {@macro twitchEmotes.format}
  List<TwitchEmoteFormat> get format;
  @override

  /// {@macro twitchEmotes.scale}
  List<String> get scale;
  @override

  /// {@macro twitchEmotes.themeMode}
  @JsonKey(name: 'theme_mode')
  List<TwitchThemeMode> get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$TwitchEmotesImplCopyWith<_$TwitchEmotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TwitchEmoteSets _$TwitchEmoteSetsFromJson(Map<String, dynamic> json) {
  return _TwitchEmoteSets.fromJson(json);
}

/// @nodoc
mixin _$TwitchEmoteSets {
  /// {@macro twitchEmotes.id}
  String get id => throw _privateConstructorUsedError;

  /// {@macro twitchEmotes.name}
  String get name => throw _privateConstructorUsedError;

  /// {@macro twitchEmotes.images}
  TwitchCustomRewardImage get images => throw _privateConstructorUsedError;

  /// {@macro twitchEmotes.emoteType}
  @JsonKey(name: 'emote_type')
  TwitchEmoteType get emoteType => throw _privateConstructorUsedError;

  /// {@macro twitchEmotes.emoteSetId}
  @JsonKey(name: 'emote_set_id')
  String get emoteSetId => throw _privateConstructorUsedError;

  /// The ID of the broadcaster who owns the emote.
  @JsonKey(name: 'owner_id')
  String get ownerId => throw _privateConstructorUsedError;

  /// {@macro twitchEmotes.format}
  List<TwitchEmoteFormat> get format => throw _privateConstructorUsedError;

  /// {@macro twitchEmotes.scale}
  List<String> get scale => throw _privateConstructorUsedError;

  /// {@macro twitchEmotes.themeMode}
  @JsonKey(name: 'theme_mode')
  List<TwitchThemeMode> get themeMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchEmoteSetsCopyWith<TwitchEmoteSets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchEmoteSetsCopyWith<$Res> {
  factory $TwitchEmoteSetsCopyWith(
          TwitchEmoteSets value, $Res Function(TwitchEmoteSets) then) =
      _$TwitchEmoteSetsCopyWithImpl<$Res, TwitchEmoteSets>;
  @useResult
  $Res call(
      {String id,
      String name,
      TwitchCustomRewardImage images,
      @JsonKey(name: 'emote_type') TwitchEmoteType emoteType,
      @JsonKey(name: 'emote_set_id') String emoteSetId,
      @JsonKey(name: 'owner_id') String ownerId,
      List<TwitchEmoteFormat> format,
      List<String> scale,
      @JsonKey(name: 'theme_mode') List<TwitchThemeMode> themeMode});

  $TwitchCustomRewardImageCopyWith<$Res> get images;
}

/// @nodoc
class _$TwitchEmoteSetsCopyWithImpl<$Res, $Val extends TwitchEmoteSets>
    implements $TwitchEmoteSetsCopyWith<$Res> {
  _$TwitchEmoteSetsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = null,
    Object? emoteType = null,
    Object? emoteSetId = null,
    Object? ownerId = null,
    Object? format = null,
    Object? scale = null,
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as TwitchCustomRewardImage,
      emoteType: null == emoteType
          ? _value.emoteType
          : emoteType // ignore: cast_nullable_to_non_nullable
              as TwitchEmoteType,
      emoteSetId: null == emoteSetId
          ? _value.emoteSetId
          : emoteSetId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as List<TwitchEmoteFormat>,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as List<String>,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as List<TwitchThemeMode>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TwitchCustomRewardImageCopyWith<$Res> get images {
    return $TwitchCustomRewardImageCopyWith<$Res>(_value.images, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TwitchEmoteSetsImplCopyWith<$Res>
    implements $TwitchEmoteSetsCopyWith<$Res> {
  factory _$$TwitchEmoteSetsImplCopyWith(_$TwitchEmoteSetsImpl value,
          $Res Function(_$TwitchEmoteSetsImpl) then) =
      __$$TwitchEmoteSetsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      TwitchCustomRewardImage images,
      @JsonKey(name: 'emote_type') TwitchEmoteType emoteType,
      @JsonKey(name: 'emote_set_id') String emoteSetId,
      @JsonKey(name: 'owner_id') String ownerId,
      List<TwitchEmoteFormat> format,
      List<String> scale,
      @JsonKey(name: 'theme_mode') List<TwitchThemeMode> themeMode});

  @override
  $TwitchCustomRewardImageCopyWith<$Res> get images;
}

/// @nodoc
class __$$TwitchEmoteSetsImplCopyWithImpl<$Res>
    extends _$TwitchEmoteSetsCopyWithImpl<$Res, _$TwitchEmoteSetsImpl>
    implements _$$TwitchEmoteSetsImplCopyWith<$Res> {
  __$$TwitchEmoteSetsImplCopyWithImpl(
      _$TwitchEmoteSetsImpl _value, $Res Function(_$TwitchEmoteSetsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = null,
    Object? emoteType = null,
    Object? emoteSetId = null,
    Object? ownerId = null,
    Object? format = null,
    Object? scale = null,
    Object? themeMode = null,
  }) {
    return _then(_$TwitchEmoteSetsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as TwitchCustomRewardImage,
      emoteType: null == emoteType
          ? _value.emoteType
          : emoteType // ignore: cast_nullable_to_non_nullable
              as TwitchEmoteType,
      emoteSetId: null == emoteSetId
          ? _value.emoteSetId
          : emoteSetId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value._format
          : format // ignore: cast_nullable_to_non_nullable
              as List<TwitchEmoteFormat>,
      scale: null == scale
          ? _value._scale
          : scale // ignore: cast_nullable_to_non_nullable
              as List<String>,
      themeMode: null == themeMode
          ? _value._themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as List<TwitchThemeMode>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchEmoteSetsImpl implements _TwitchEmoteSets {
  const _$TwitchEmoteSetsImpl(
      {required this.id,
      required this.name,
      required this.images,
      @JsonKey(name: 'emote_type') required this.emoteType,
      @JsonKey(name: 'emote_set_id') required this.emoteSetId,
      @JsonKey(name: 'owner_id') required this.ownerId,
      required final List<TwitchEmoteFormat> format,
      required final List<String> scale,
      @JsonKey(name: 'theme_mode')
      required final List<TwitchThemeMode> themeMode})
      : _format = format,
        _scale = scale,
        _themeMode = themeMode;

  factory _$TwitchEmoteSetsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchEmoteSetsImplFromJson(json);

  /// {@macro twitchEmotes.id}
  @override
  final String id;

  /// {@macro twitchEmotes.name}
  @override
  final String name;

  /// {@macro twitchEmotes.images}
  @override
  final TwitchCustomRewardImage images;

  /// {@macro twitchEmotes.emoteType}
  @override
  @JsonKey(name: 'emote_type')
  final TwitchEmoteType emoteType;

  /// {@macro twitchEmotes.emoteSetId}
  @override
  @JsonKey(name: 'emote_set_id')
  final String emoteSetId;

  /// The ID of the broadcaster who owns the emote.
  @override
  @JsonKey(name: 'owner_id')
  final String ownerId;

  /// {@macro twitchEmotes.format}
  final List<TwitchEmoteFormat> _format;

  /// {@macro twitchEmotes.format}
  @override
  List<TwitchEmoteFormat> get format {
    if (_format is EqualUnmodifiableListView) return _format;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_format);
  }

  /// {@macro twitchEmotes.scale}
  final List<String> _scale;

  /// {@macro twitchEmotes.scale}
  @override
  List<String> get scale {
    if (_scale is EqualUnmodifiableListView) return _scale;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scale);
  }

  /// {@macro twitchEmotes.themeMode}
  final List<TwitchThemeMode> _themeMode;

  /// {@macro twitchEmotes.themeMode}
  @override
  @JsonKey(name: 'theme_mode')
  List<TwitchThemeMode> get themeMode {
    if (_themeMode is EqualUnmodifiableListView) return _themeMode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_themeMode);
  }

  @override
  String toString() {
    return 'TwitchEmoteSets(id: $id, name: $name, images: $images, emoteType: $emoteType, emoteSetId: $emoteSetId, ownerId: $ownerId, format: $format, scale: $scale, themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchEmoteSetsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.emoteType, emoteType) ||
                other.emoteType == emoteType) &&
            (identical(other.emoteSetId, emoteSetId) ||
                other.emoteSetId == emoteSetId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            const DeepCollectionEquality().equals(other._format, _format) &&
            const DeepCollectionEquality().equals(other._scale, _scale) &&
            const DeepCollectionEquality()
                .equals(other._themeMode, _themeMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      images,
      emoteType,
      emoteSetId,
      ownerId,
      const DeepCollectionEquality().hash(_format),
      const DeepCollectionEquality().hash(_scale),
      const DeepCollectionEquality().hash(_themeMode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchEmoteSetsImplCopyWith<_$TwitchEmoteSetsImpl> get copyWith =>
      __$$TwitchEmoteSetsImplCopyWithImpl<_$TwitchEmoteSetsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchEmoteSetsImplToJson(
      this,
    );
  }
}

abstract class _TwitchEmoteSets implements TwitchEmoteSets {
  const factory _TwitchEmoteSets(
      {required final String id,
      required final String name,
      required final TwitchCustomRewardImage images,
      @JsonKey(name: 'emote_type') required final TwitchEmoteType emoteType,
      @JsonKey(name: 'emote_set_id') required final String emoteSetId,
      @JsonKey(name: 'owner_id') required final String ownerId,
      required final List<TwitchEmoteFormat> format,
      required final List<String> scale,
      @JsonKey(name: 'theme_mode')
      required final List<TwitchThemeMode> themeMode}) = _$TwitchEmoteSetsImpl;

  factory _TwitchEmoteSets.fromJson(Map<String, dynamic> json) =
      _$TwitchEmoteSetsImpl.fromJson;

  @override

  /// {@macro twitchEmotes.id}
  String get id;
  @override

  /// {@macro twitchEmotes.name}
  String get name;
  @override

  /// {@macro twitchEmotes.images}
  TwitchCustomRewardImage get images;
  @override

  /// {@macro twitchEmotes.emoteType}
  @JsonKey(name: 'emote_type')
  TwitchEmoteType get emoteType;
  @override

  /// {@macro twitchEmotes.emoteSetId}
  @JsonKey(name: 'emote_set_id')
  String get emoteSetId;
  @override

  /// The ID of the broadcaster who owns the emote.
  @JsonKey(name: 'owner_id')
  String get ownerId;
  @override

  /// {@macro twitchEmotes.format}
  List<TwitchEmoteFormat> get format;
  @override

  /// {@macro twitchEmotes.scale}
  List<String> get scale;
  @override

  /// {@macro twitchEmotes.themeMode}
  @JsonKey(name: 'theme_mode')
  List<TwitchThemeMode> get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$TwitchEmoteSetsImplCopyWith<_$TwitchEmoteSetsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
