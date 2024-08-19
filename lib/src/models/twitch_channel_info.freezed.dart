// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_channel_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TwitchChannelInfo _$TwitchChannelInfoFromJson(Map<String, dynamic> json) {
  return _TwitchChannelInfo.fromJson(json);
}

/// @nodoc
mixin _$TwitchChannelInfo {
  /// Twitch User ID of this channel owner
  @JsonKey(name: 'broadcaster_id')
  String get broadcasterId => throw _privateConstructorUsedError;

  /// Twitch user display name of this channel owner
  @JsonKey(name: 'broadcaster_name')
  String get broadcasterName => throw _privateConstructorUsedError;

  /// Name of the game being played on the channel
  @JsonKey(name: 'game_name')
  String get gameName => throw _privateConstructorUsedError;

  /// Current game ID being played on the channel
  @JsonKey(name: 'game_id')
  String get gameId => throw _privateConstructorUsedError;

  /// Language of the channel. A language value is either the ISO 639-1
  /// two-letter code for a supported stream language or “other”.
  @JsonKey(name: 'broadcaster_language')
  String get broadcasterLanguage => throw _privateConstructorUsedError;

  /// Title of the stream
  String get title => throw _privateConstructorUsedError;

  /// Stream delay in seconds
  int get delay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchChannelInfoCopyWith<TwitchChannelInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchChannelInfoCopyWith<$Res> {
  factory $TwitchChannelInfoCopyWith(
          TwitchChannelInfo value, $Res Function(TwitchChannelInfo) then) =
      _$TwitchChannelInfoCopyWithImpl<$Res, TwitchChannelInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'broadcaster_id') String broadcasterId,
      @JsonKey(name: 'broadcaster_name') String broadcasterName,
      @JsonKey(name: 'game_name') String gameName,
      @JsonKey(name: 'game_id') String gameId,
      @JsonKey(name: 'broadcaster_language') String broadcasterLanguage,
      String title,
      int delay});
}

/// @nodoc
class _$TwitchChannelInfoCopyWithImpl<$Res, $Val extends TwitchChannelInfo>
    implements $TwitchChannelInfoCopyWith<$Res> {
  _$TwitchChannelInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? broadcasterName = null,
    Object? gameName = null,
    Object? gameId = null,
    Object? broadcasterLanguage = null,
    Object? title = null,
    Object? delay = null,
  }) {
    return _then(_value.copyWith(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterName: null == broadcasterName
          ? _value.broadcasterName
          : broadcasterName // ignore: cast_nullable_to_non_nullable
              as String,
      gameName: null == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterLanguage: null == broadcasterLanguage
          ? _value.broadcasterLanguage
          : broadcasterLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      delay: null == delay
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwitchChannelInfoImplCopyWith<$Res>
    implements $TwitchChannelInfoCopyWith<$Res> {
  factory _$$TwitchChannelInfoImplCopyWith(_$TwitchChannelInfoImpl value,
          $Res Function(_$TwitchChannelInfoImpl) then) =
      __$$TwitchChannelInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'broadcaster_id') String broadcasterId,
      @JsonKey(name: 'broadcaster_name') String broadcasterName,
      @JsonKey(name: 'game_name') String gameName,
      @JsonKey(name: 'game_id') String gameId,
      @JsonKey(name: 'broadcaster_language') String broadcasterLanguage,
      String title,
      int delay});
}

/// @nodoc
class __$$TwitchChannelInfoImplCopyWithImpl<$Res>
    extends _$TwitchChannelInfoCopyWithImpl<$Res, _$TwitchChannelInfoImpl>
    implements _$$TwitchChannelInfoImplCopyWith<$Res> {
  __$$TwitchChannelInfoImplCopyWithImpl(_$TwitchChannelInfoImpl _value,
      $Res Function(_$TwitchChannelInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? broadcasterName = null,
    Object? gameName = null,
    Object? gameId = null,
    Object? broadcasterLanguage = null,
    Object? title = null,
    Object? delay = null,
  }) {
    return _then(_$TwitchChannelInfoImpl(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterName: null == broadcasterName
          ? _value.broadcasterName
          : broadcasterName // ignore: cast_nullable_to_non_nullable
              as String,
      gameName: null == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterLanguage: null == broadcasterLanguage
          ? _value.broadcasterLanguage
          : broadcasterLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      delay: null == delay
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchChannelInfoImpl implements _TwitchChannelInfo {
  const _$TwitchChannelInfoImpl(
      {@JsonKey(name: 'broadcaster_id') required this.broadcasterId,
      @JsonKey(name: 'broadcaster_name') required this.broadcasterName,
      @JsonKey(name: 'game_name') required this.gameName,
      @JsonKey(name: 'game_id') required this.gameId,
      @JsonKey(name: 'broadcaster_language') required this.broadcasterLanguage,
      required this.title,
      required this.delay});

  factory _$TwitchChannelInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchChannelInfoImplFromJson(json);

  /// Twitch User ID of this channel owner
  @override
  @JsonKey(name: 'broadcaster_id')
  final String broadcasterId;

  /// Twitch user display name of this channel owner
  @override
  @JsonKey(name: 'broadcaster_name')
  final String broadcasterName;

  /// Name of the game being played on the channel
  @override
  @JsonKey(name: 'game_name')
  final String gameName;

  /// Current game ID being played on the channel
  @override
  @JsonKey(name: 'game_id')
  final String gameId;

  /// Language of the channel. A language value is either the ISO 639-1
  /// two-letter code for a supported stream language or “other”.
  @override
  @JsonKey(name: 'broadcaster_language')
  final String broadcasterLanguage;

  /// Title of the stream
  @override
  final String title;

  /// Stream delay in seconds
  @override
  final int delay;

  @override
  String toString() {
    return 'TwitchChannelInfo(broadcasterId: $broadcasterId, broadcasterName: $broadcasterName, gameName: $gameName, gameId: $gameId, broadcasterLanguage: $broadcasterLanguage, title: $title, delay: $delay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchChannelInfoImpl &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.broadcasterName, broadcasterName) ||
                other.broadcasterName == broadcasterName) &&
            (identical(other.gameName, gameName) ||
                other.gameName == gameName) &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.broadcasterLanguage, broadcasterLanguage) ||
                other.broadcasterLanguage == broadcasterLanguage) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.delay, delay) || other.delay == delay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, broadcasterId, broadcasterName,
      gameName, gameId, broadcasterLanguage, title, delay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchChannelInfoImplCopyWith<_$TwitchChannelInfoImpl> get copyWith =>
      __$$TwitchChannelInfoImplCopyWithImpl<_$TwitchChannelInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchChannelInfoImplToJson(
      this,
    );
  }
}

abstract class _TwitchChannelInfo implements TwitchChannelInfo {
  const factory _TwitchChannelInfo(
      {@JsonKey(name: 'broadcaster_id') required final String broadcasterId,
      @JsonKey(name: 'broadcaster_name') required final String broadcasterName,
      @JsonKey(name: 'game_name') required final String gameName,
      @JsonKey(name: 'game_id') required final String gameId,
      @JsonKey(name: 'broadcaster_language')
      required final String broadcasterLanguage,
      required final String title,
      required final int delay}) = _$TwitchChannelInfoImpl;

  factory _TwitchChannelInfo.fromJson(Map<String, dynamic> json) =
      _$TwitchChannelInfoImpl.fromJson;

  @override

  /// Twitch User ID of this channel owner
  @JsonKey(name: 'broadcaster_id')
  String get broadcasterId;
  @override

  /// Twitch user display name of this channel owner
  @JsonKey(name: 'broadcaster_name')
  String get broadcasterName;
  @override

  /// Name of the game being played on the channel
  @JsonKey(name: 'game_name')
  String get gameName;
  @override

  /// Current game ID being played on the channel
  @JsonKey(name: 'game_id')
  String get gameId;
  @override

  /// Language of the channel. A language value is either the ISO 639-1
  /// two-letter code for a supported stream language or “other”.
  @JsonKey(name: 'broadcaster_language')
  String get broadcasterLanguage;
  @override

  /// Title of the stream
  String get title;
  @override

  /// Stream delay in seconds
  int get delay;
  @override
  @JsonKey(ignore: true)
  _$$TwitchChannelInfoImplCopyWith<_$TwitchChannelInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
