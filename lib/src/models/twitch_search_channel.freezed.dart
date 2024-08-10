// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_search_channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TwitchSearchChannel _$TwitchSearchChannelFromJson(Map<String, dynamic> json) {
  return _TwitchSearchChannel.fromJson(json);
}

/// @nodoc
mixin _$TwitchSearchChannel {
  /// ID of the game being played on the stream
  @JsonKey(name: 'game_id')
  String get gameId => throw _privateConstructorUsedError;

  /// Name of the game being played on the stream.
  @JsonKey(name: 'game_name')
  String get gameName => throw _privateConstructorUsedError;

  /// Channel ID
  String get id => throw _privateConstructorUsedError;

  /// Login of the broadcaster.
  @JsonKey(name: 'broadcaster_login')
  String get broadcasterLogin => throw _privateConstructorUsedError;

  /// Display name corresponding to `userId`
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;

  /// Channel language. A language value is either the [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
  /// two-letter code for a [supported stream language](https://help.twitch.tv/s/article/languages-on-twitch?language=en_US#streamlang)
  /// or “other”.
  @JsonKey(name: 'broadcaster_language')
  String get broadcasterLanguage => throw _privateConstructorUsedError;

  /// Channel title
  String get title => throw _privateConstructorUsedError;

  /// Thumbnail URL of the stream. All image URLs have variable width and
  /// height. You can replace `{width}` and `{height}` with any values to get
  /// that size image.
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl => throw _privateConstructorUsedError;

  /// Live status
  @JsonKey(name: 'is_live')
  bool get isLive => throw _privateConstructorUsedError;

  /// UTC timestamp. (live only)
  @JsonKey(name: 'started_at')
  DateTime? get startedAt => throw _privateConstructorUsedError;

  /// Shows tag IDs that apply to the stream (live only).See
  /// https://www.twitch.tv/directory/all/tags for tag types Note: Category
  /// Tags are not returned
  @JsonKey(name: 'tag_ids')
  List<String> get tagIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchSearchChannelCopyWith<TwitchSearchChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchSearchChannelCopyWith<$Res> {
  factory $TwitchSearchChannelCopyWith(
          TwitchSearchChannel value, $Res Function(TwitchSearchChannel) then) =
      _$TwitchSearchChannelCopyWithImpl<$Res, TwitchSearchChannel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'game_id') String gameId,
      @JsonKey(name: 'game_name') String gameName,
      String id,
      @JsonKey(name: 'broadcaster_login') String broadcasterLogin,
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'broadcaster_language') String broadcasterLanguage,
      String title,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      @JsonKey(name: 'is_live') bool isLive,
      @JsonKey(name: 'started_at') DateTime? startedAt,
      @JsonKey(name: 'tag_ids') List<String> tagIds});
}

/// @nodoc
class _$TwitchSearchChannelCopyWithImpl<$Res, $Val extends TwitchSearchChannel>
    implements $TwitchSearchChannelCopyWith<$Res> {
  _$TwitchSearchChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? gameName = null,
    Object? id = null,
    Object? broadcasterLogin = null,
    Object? displayName = null,
    Object? broadcasterLanguage = null,
    Object? title = null,
    Object? thumbnailUrl = null,
    Object? isLive = null,
    Object? startedAt = freezed,
    Object? tagIds = null,
  }) {
    return _then(_value.copyWith(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      gameName: null == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterLogin: null == broadcasterLogin
          ? _value.broadcasterLogin
          : broadcasterLogin // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterLanguage: null == broadcasterLanguage
          ? _value.broadcasterLanguage
          : broadcasterLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isLive: null == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tagIds: null == tagIds
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwitchSearchChannelImplCopyWith<$Res>
    implements $TwitchSearchChannelCopyWith<$Res> {
  factory _$$TwitchSearchChannelImplCopyWith(_$TwitchSearchChannelImpl value,
          $Res Function(_$TwitchSearchChannelImpl) then) =
      __$$TwitchSearchChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'game_id') String gameId,
      @JsonKey(name: 'game_name') String gameName,
      String id,
      @JsonKey(name: 'broadcaster_login') String broadcasterLogin,
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'broadcaster_language') String broadcasterLanguage,
      String title,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      @JsonKey(name: 'is_live') bool isLive,
      @JsonKey(name: 'started_at') DateTime? startedAt,
      @JsonKey(name: 'tag_ids') List<String> tagIds});
}

/// @nodoc
class __$$TwitchSearchChannelImplCopyWithImpl<$Res>
    extends _$TwitchSearchChannelCopyWithImpl<$Res, _$TwitchSearchChannelImpl>
    implements _$$TwitchSearchChannelImplCopyWith<$Res> {
  __$$TwitchSearchChannelImplCopyWithImpl(_$TwitchSearchChannelImpl _value,
      $Res Function(_$TwitchSearchChannelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? gameName = null,
    Object? id = null,
    Object? broadcasterLogin = null,
    Object? displayName = null,
    Object? broadcasterLanguage = null,
    Object? title = null,
    Object? thumbnailUrl = null,
    Object? isLive = null,
    Object? startedAt = freezed,
    Object? tagIds = null,
  }) {
    return _then(_$TwitchSearchChannelImpl(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      gameName: null == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterLogin: null == broadcasterLogin
          ? _value.broadcasterLogin
          : broadcasterLogin // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterLanguage: null == broadcasterLanguage
          ? _value.broadcasterLanguage
          : broadcasterLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isLive: null == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tagIds: null == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchSearchChannelImpl implements _TwitchSearchChannel {
  const _$TwitchSearchChannelImpl(
      {@JsonKey(name: 'game_id') required this.gameId,
      @JsonKey(name: 'game_name') required this.gameName,
      required this.id,
      @JsonKey(name: 'broadcaster_login') required this.broadcasterLogin,
      @JsonKey(name: 'display_name') required this.displayName,
      @JsonKey(name: 'broadcaster_language') required this.broadcasterLanguage,
      required this.title,
      @JsonKey(name: 'thumbnail_url') required this.thumbnailUrl,
      @JsonKey(name: 'is_live') required this.isLive,
      @JsonKey(name: 'started_at') this.startedAt,
      @JsonKey(name: 'tag_ids') required final List<String> tagIds})
      : _tagIds = tagIds;

  factory _$TwitchSearchChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchSearchChannelImplFromJson(json);

  /// ID of the game being played on the stream
  @override
  @JsonKey(name: 'game_id')
  final String gameId;

  /// Name of the game being played on the stream.
  @override
  @JsonKey(name: 'game_name')
  final String gameName;

  /// Channel ID
  @override
  final String id;

  /// Login of the broadcaster.
  @override
  @JsonKey(name: 'broadcaster_login')
  final String broadcasterLogin;

  /// Display name corresponding to `userId`
  @override
  @JsonKey(name: 'display_name')
  final String displayName;

  /// Channel language. A language value is either the [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
  /// two-letter code for a [supported stream language](https://help.twitch.tv/s/article/languages-on-twitch?language=en_US#streamlang)
  /// or “other”.
  @override
  @JsonKey(name: 'broadcaster_language')
  final String broadcasterLanguage;

  /// Channel title
  @override
  final String title;

  /// Thumbnail URL of the stream. All image URLs have variable width and
  /// height. You can replace `{width}` and `{height}` with any values to get
  /// that size image.
  @override
  @JsonKey(name: 'thumbnail_url')
  final String thumbnailUrl;

  /// Live status
  @override
  @JsonKey(name: 'is_live')
  final bool isLive;

  /// UTC timestamp. (live only)
  @override
  @JsonKey(name: 'started_at')
  final DateTime? startedAt;

  /// Shows tag IDs that apply to the stream (live only).See
  /// https://www.twitch.tv/directory/all/tags for tag types Note: Category
  /// Tags are not returned
  final List<String> _tagIds;

  /// Shows tag IDs that apply to the stream (live only).See
  /// https://www.twitch.tv/directory/all/tags for tag types Note: Category
  /// Tags are not returned
  @override
  @JsonKey(name: 'tag_ids')
  List<String> get tagIds {
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tagIds);
  }

  @override
  String toString() {
    return 'TwitchSearchChannel(gameId: $gameId, gameName: $gameName, id: $id, broadcasterLogin: $broadcasterLogin, displayName: $displayName, broadcasterLanguage: $broadcasterLanguage, title: $title, thumbnailUrl: $thumbnailUrl, isLive: $isLive, startedAt: $startedAt, tagIds: $tagIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchSearchChannelImpl &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.gameName, gameName) ||
                other.gameName == gameName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.broadcasterLogin, broadcasterLogin) ||
                other.broadcasterLogin == broadcasterLogin) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.broadcasterLanguage, broadcasterLanguage) ||
                other.broadcasterLanguage == broadcasterLanguage) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.isLive, isLive) || other.isLive == isLive) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      gameId,
      gameName,
      id,
      broadcasterLogin,
      displayName,
      broadcasterLanguage,
      title,
      thumbnailUrl,
      isLive,
      startedAt,
      const DeepCollectionEquality().hash(_tagIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchSearchChannelImplCopyWith<_$TwitchSearchChannelImpl> get copyWith =>
      __$$TwitchSearchChannelImplCopyWithImpl<_$TwitchSearchChannelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchSearchChannelImplToJson(
      this,
    );
  }
}

abstract class _TwitchSearchChannel implements TwitchSearchChannel {
  const factory _TwitchSearchChannel(
          {@JsonKey(name: 'game_id') required final String gameId,
          @JsonKey(name: 'game_name') required final String gameName,
          required final String id,
          @JsonKey(name: 'broadcaster_login')
          required final String broadcasterLogin,
          @JsonKey(name: 'display_name') required final String displayName,
          @JsonKey(name: 'broadcaster_language')
          required final String broadcasterLanguage,
          required final String title,
          @JsonKey(name: 'thumbnail_url') required final String thumbnailUrl,
          @JsonKey(name: 'is_live') required final bool isLive,
          @JsonKey(name: 'started_at') final DateTime? startedAt,
          @JsonKey(name: 'tag_ids') required final List<String> tagIds}) =
      _$TwitchSearchChannelImpl;

  factory _TwitchSearchChannel.fromJson(Map<String, dynamic> json) =
      _$TwitchSearchChannelImpl.fromJson;

  @override

  /// ID of the game being played on the stream
  @JsonKey(name: 'game_id')
  String get gameId;
  @override

  /// Name of the game being played on the stream.
  @JsonKey(name: 'game_name')
  String get gameName;
  @override

  /// Channel ID
  String get id;
  @override

  /// Login of the broadcaster.
  @JsonKey(name: 'broadcaster_login')
  String get broadcasterLogin;
  @override

  /// Display name corresponding to `userId`
  @JsonKey(name: 'display_name')
  String get displayName;
  @override

  /// Channel language. A language value is either the [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
  /// two-letter code for a [supported stream language](https://help.twitch.tv/s/article/languages-on-twitch?language=en_US#streamlang)
  /// or “other”.
  @JsonKey(name: 'broadcaster_language')
  String get broadcasterLanguage;
  @override

  /// Channel title
  String get title;
  @override

  /// Thumbnail URL of the stream. All image URLs have variable width and
  /// height. You can replace `{width}` and `{height}` with any values to get
  /// that size image.
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl;
  @override

  /// Live status
  @JsonKey(name: 'is_live')
  bool get isLive;
  @override

  /// UTC timestamp. (live only)
  @JsonKey(name: 'started_at')
  DateTime? get startedAt;
  @override

  /// Shows tag IDs that apply to the stream (live only).See
  /// https://www.twitch.tv/directory/all/tags for tag types Note: Category
  /// Tags are not returned
  @JsonKey(name: 'tag_ids')
  List<String> get tagIds;
  @override
  @JsonKey(ignore: true)
  _$$TwitchSearchChannelImplCopyWith<_$TwitchSearchChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
