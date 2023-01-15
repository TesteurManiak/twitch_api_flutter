// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChannelEmotesResponse _$ChannelEmotesResponseFromJson(
    Map<String, dynamic> json) {
  return _ChannelEmotesResponse.fromJson(json);
}

/// @nodoc
mixin _$ChannelEmotesResponse {
  /// {@macro twitchResponse.data}
  List<TwitchEmotes> get data => throw _privateConstructorUsedError;

  /// {@template twitchResponse.template}
  /// A templated URL. Use the values from id, format, scale, and theme_mode to
  /// replace the like-named placeholder strings in the templated URL to create
  /// a CDN (content delivery network) URL that you use to fetch the emote. For
  /// information about what the template looks like and how to use it to fetch
  /// emotes, see [Emote CDN URL format](https://dev.twitch.tv/docs/irc/emotes#cdn-template).
  /// {@endtemplate}
  String get template => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelEmotesResponseCopyWith<ChannelEmotesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelEmotesResponseCopyWith<$Res> {
  factory $ChannelEmotesResponseCopyWith(ChannelEmotesResponse value,
          $Res Function(ChannelEmotesResponse) then) =
      _$ChannelEmotesResponseCopyWithImpl<$Res, ChannelEmotesResponse>;
  @useResult
  $Res call({List<TwitchEmotes> data, String template});
}

/// @nodoc
class _$ChannelEmotesResponseCopyWithImpl<$Res,
        $Val extends ChannelEmotesResponse>
    implements $ChannelEmotesResponseCopyWith<$Res> {
  _$ChannelEmotesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? template = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchEmotes>,
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelEmotesResponseCopyWith<$Res>
    implements $ChannelEmotesResponseCopyWith<$Res> {
  factory _$$_ChannelEmotesResponseCopyWith(_$_ChannelEmotesResponse value,
          $Res Function(_$_ChannelEmotesResponse) then) =
      __$$_ChannelEmotesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchEmotes> data, String template});
}

/// @nodoc
class __$$_ChannelEmotesResponseCopyWithImpl<$Res>
    extends _$ChannelEmotesResponseCopyWithImpl<$Res, _$_ChannelEmotesResponse>
    implements _$$_ChannelEmotesResponseCopyWith<$Res> {
  __$$_ChannelEmotesResponseCopyWithImpl(_$_ChannelEmotesResponse _value,
      $Res Function(_$_ChannelEmotesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? template = null,
  }) {
    return _then(_$_ChannelEmotesResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchEmotes>,
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelEmotesResponse implements _ChannelEmotesResponse {
  const _$_ChannelEmotesResponse(
      {required final List<TwitchEmotes> data, required this.template})
      : _data = data;

  factory _$_ChannelEmotesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelEmotesResponseFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchEmotes> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchEmotes> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// {@template twitchResponse.template}
  /// A templated URL. Use the values from id, format, scale, and theme_mode to
  /// replace the like-named placeholder strings in the templated URL to create
  /// a CDN (content delivery network) URL that you use to fetch the emote. For
  /// information about what the template looks like and how to use it to fetch
  /// emotes, see [Emote CDN URL format](https://dev.twitch.tv/docs/irc/emotes#cdn-template).
  /// {@endtemplate}
  @override
  final String template;

  @override
  String toString() {
    return 'ChannelEmotesResponse(data: $data, template: $template)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelEmotesResponse &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.template, template) ||
                other.template == template));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), template);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelEmotesResponseCopyWith<_$_ChannelEmotesResponse> get copyWith =>
      __$$_ChannelEmotesResponseCopyWithImpl<_$_ChannelEmotesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelEmotesResponseToJson(
      this,
    );
  }
}

abstract class _ChannelEmotesResponse implements ChannelEmotesResponse {
  const factory _ChannelEmotesResponse(
      {required final List<TwitchEmotes> data,
      required final String template}) = _$_ChannelEmotesResponse;

  factory _ChannelEmotesResponse.fromJson(Map<String, dynamic> json) =
      _$_ChannelEmotesResponse.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchEmotes> get data;
  @override

  /// {@template twitchResponse.template}
  /// A templated URL. Use the values from id, format, scale, and theme_mode to
  /// replace the like-named placeholder strings in the templated URL to create
  /// a CDN (content delivery network) URL that you use to fetch the emote. For
  /// information about what the template looks like and how to use it to fetch
  /// emotes, see [Emote CDN URL format](https://dev.twitch.tv/docs/irc/emotes#cdn-template).
  /// {@endtemplate}
  String get template;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelEmotesResponseCopyWith<_$_ChannelEmotesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelGlobalEmotesResponse _$ChannelGlobalEmotesResponseFromJson(
    Map<String, dynamic> json) {
  return _ChannelGlobalEmotesResponse.fromJson(json);
}

/// @nodoc
mixin _$ChannelGlobalEmotesResponse {
  /// {@macro twitchResponse.data}
  List<TwitchGlobalEmotes> get data => throw _privateConstructorUsedError;

  /// {@macro twitchResponse.template}
  String get template => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelGlobalEmotesResponseCopyWith<ChannelGlobalEmotesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelGlobalEmotesResponseCopyWith<$Res> {
  factory $ChannelGlobalEmotesResponseCopyWith(
          ChannelGlobalEmotesResponse value,
          $Res Function(ChannelGlobalEmotesResponse) then) =
      _$ChannelGlobalEmotesResponseCopyWithImpl<$Res,
          ChannelGlobalEmotesResponse>;
  @useResult
  $Res call({List<TwitchGlobalEmotes> data, String template});
}

/// @nodoc
class _$ChannelGlobalEmotesResponseCopyWithImpl<$Res,
        $Val extends ChannelGlobalEmotesResponse>
    implements $ChannelGlobalEmotesResponseCopyWith<$Res> {
  _$ChannelGlobalEmotesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? template = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchGlobalEmotes>,
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelGlobalEmotesResponseCopyWith<$Res>
    implements $ChannelGlobalEmotesResponseCopyWith<$Res> {
  factory _$$_ChannelGlobalEmotesResponseCopyWith(
          _$_ChannelGlobalEmotesResponse value,
          $Res Function(_$_ChannelGlobalEmotesResponse) then) =
      __$$_ChannelGlobalEmotesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchGlobalEmotes> data, String template});
}

/// @nodoc
class __$$_ChannelGlobalEmotesResponseCopyWithImpl<$Res>
    extends _$ChannelGlobalEmotesResponseCopyWithImpl<$Res,
        _$_ChannelGlobalEmotesResponse>
    implements _$$_ChannelGlobalEmotesResponseCopyWith<$Res> {
  __$$_ChannelGlobalEmotesResponseCopyWithImpl(
      _$_ChannelGlobalEmotesResponse _value,
      $Res Function(_$_ChannelGlobalEmotesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? template = null,
  }) {
    return _then(_$_ChannelGlobalEmotesResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchGlobalEmotes>,
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelGlobalEmotesResponse implements _ChannelGlobalEmotesResponse {
  const _$_ChannelGlobalEmotesResponse(
      {required final List<TwitchGlobalEmotes> data, required this.template})
      : _data = data;

  factory _$_ChannelGlobalEmotesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelGlobalEmotesResponseFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchGlobalEmotes> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchGlobalEmotes> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// {@macro twitchResponse.template}
  @override
  final String template;

  @override
  String toString() {
    return 'ChannelGlobalEmotesResponse(data: $data, template: $template)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelGlobalEmotesResponse &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.template, template) ||
                other.template == template));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), template);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelGlobalEmotesResponseCopyWith<_$_ChannelGlobalEmotesResponse>
      get copyWith => __$$_ChannelGlobalEmotesResponseCopyWithImpl<
          _$_ChannelGlobalEmotesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelGlobalEmotesResponseToJson(
      this,
    );
  }
}

abstract class _ChannelGlobalEmotesResponse
    implements ChannelGlobalEmotesResponse {
  const factory _ChannelGlobalEmotesResponse(
      {required final List<TwitchGlobalEmotes> data,
      required final String template}) = _$_ChannelGlobalEmotesResponse;

  factory _ChannelGlobalEmotesResponse.fromJson(Map<String, dynamic> json) =
      _$_ChannelGlobalEmotesResponse.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchGlobalEmotes> get data;
  @override

  /// {@macro twitchResponse.template}
  String get template;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelGlobalEmotesResponseCopyWith<_$_ChannelGlobalEmotesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

EmoteSetsResponse _$EmoteSetsResponseFromJson(Map<String, dynamic> json) {
  return _EmoteSetsResponse.fromJson(json);
}

/// @nodoc
mixin _$EmoteSetsResponse {
  /// {@macro twitchResponse.data}
  List<TwitchEmoteSets> get data => throw _privateConstructorUsedError;

  /// {@macro twitchResponse.template}
  String get template => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmoteSetsResponseCopyWith<EmoteSetsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmoteSetsResponseCopyWith<$Res> {
  factory $EmoteSetsResponseCopyWith(
          EmoteSetsResponse value, $Res Function(EmoteSetsResponse) then) =
      _$EmoteSetsResponseCopyWithImpl<$Res, EmoteSetsResponse>;
  @useResult
  $Res call({List<TwitchEmoteSets> data, String template});
}

/// @nodoc
class _$EmoteSetsResponseCopyWithImpl<$Res, $Val extends EmoteSetsResponse>
    implements $EmoteSetsResponseCopyWith<$Res> {
  _$EmoteSetsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? template = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchEmoteSets>,
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmoteSetsResponseCopyWith<$Res>
    implements $EmoteSetsResponseCopyWith<$Res> {
  factory _$$_EmoteSetsResponseCopyWith(_$_EmoteSetsResponse value,
          $Res Function(_$_EmoteSetsResponse) then) =
      __$$_EmoteSetsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TwitchEmoteSets> data, String template});
}

/// @nodoc
class __$$_EmoteSetsResponseCopyWithImpl<$Res>
    extends _$EmoteSetsResponseCopyWithImpl<$Res, _$_EmoteSetsResponse>
    implements _$$_EmoteSetsResponseCopyWith<$Res> {
  __$$_EmoteSetsResponseCopyWithImpl(
      _$_EmoteSetsResponse _value, $Res Function(_$_EmoteSetsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? template = null,
  }) {
    return _then(_$_EmoteSetsResponse(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TwitchEmoteSets>,
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmoteSetsResponse implements _EmoteSetsResponse {
  const _$_EmoteSetsResponse(
      {required final List<TwitchEmoteSets> data, required this.template})
      : _data = data;

  factory _$_EmoteSetsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_EmoteSetsResponseFromJson(json);

  /// {@macro twitchResponse.data}
  final List<TwitchEmoteSets> _data;

  /// {@macro twitchResponse.data}
  @override
  List<TwitchEmoteSets> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// {@macro twitchResponse.template}
  @override
  final String template;

  @override
  String toString() {
    return 'EmoteSetsResponse(data: $data, template: $template)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmoteSetsResponse &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.template, template) ||
                other.template == template));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), template);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmoteSetsResponseCopyWith<_$_EmoteSetsResponse> get copyWith =>
      __$$_EmoteSetsResponseCopyWithImpl<_$_EmoteSetsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmoteSetsResponseToJson(
      this,
    );
  }
}

abstract class _EmoteSetsResponse implements EmoteSetsResponse {
  const factory _EmoteSetsResponse(
      {required final List<TwitchEmoteSets> data,
      required final String template}) = _$_EmoteSetsResponse;

  factory _EmoteSetsResponse.fromJson(Map<String, dynamic> json) =
      _$_EmoteSetsResponse.fromJson;

  @override

  /// {@macro twitchResponse.data}
  List<TwitchEmoteSets> get data;
  @override

  /// {@macro twitchResponse.template}
  String get template;
  @override
  @JsonKey(ignore: true)
  _$$_EmoteSetsResponseCopyWith<_$_EmoteSetsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
