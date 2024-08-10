// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twitch_stream_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TwitchStreamInfo _$TwitchStreamInfoFromJson(Map<String, dynamic> json) {
  return _TwitchStreamInfo.fromJson(json);
}

/// @nodoc
mixin _$TwitchStreamInfo {
  /// Stream ID.
  String get id => throw _privateConstructorUsedError;

  /// ID of the user who is streaming.
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;

  /// Login of the user who is streaming.
  @JsonKey(name: 'user_login')
  String get userLogin => throw _privateConstructorUsedError;

  /// Display name corresponding to [userId].
  @JsonKey(name: 'user_name')
  String get userName => throw _privateConstructorUsedError;

  /// ID of the game being played on the stream.
  @JsonKey(name: 'game_id')
  String get gameId => throw _privateConstructorUsedError;

  /// Name of the game being played.
  @JsonKey(name: 'game_name')
  String get gameName => throw _privateConstructorUsedError;

  /// Stream type: [TwitchStreamType.live] or [TwitchStreamType.error]
  /// (in case of error).
  TwitchStreamType get type => throw _privateConstructorUsedError;

  /// Stream title.
  String get title => throw _privateConstructorUsedError;

  /// Number of viewers watching the stream at the time of the query.
  @JsonKey(name: 'viewer_count')
  int get viewerCount => throw _privateConstructorUsedError;

  /// UTC timestamp.
  @JsonKey(name: 'started_at')
  DateTime get startedAt => throw _privateConstructorUsedError;

  /// Stream language. A language value is either the [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
  /// two-letter code for a [supported stream language](https://help.twitch.tv/s/article/languages-on-twitch?language=en_US#streamlang)
  /// or “other”.
  String get language => throw _privateConstructorUsedError;

  /// Thumbnail URL of the stream. All image URLs have variable width and
  /// height. You can replace `{width}` and `{height}` with any values to get
  /// that size image
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl => throw _privateConstructorUsedError;

  /// Shows tag IDs that apply to the stream.
  @JsonKey(name: 'tag_ids')
  List<String>? get tagIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_mature')
  bool get isMature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchStreamInfoCopyWith<TwitchStreamInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchStreamInfoCopyWith<$Res> {
  factory $TwitchStreamInfoCopyWith(
          TwitchStreamInfo value, $Res Function(TwitchStreamInfo) then) =
      _$TwitchStreamInfoCopyWithImpl<$Res, TwitchStreamInfo>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'user_login') String userLogin,
      @JsonKey(name: 'user_name') String userName,
      @JsonKey(name: 'game_id') String gameId,
      @JsonKey(name: 'game_name') String gameName,
      TwitchStreamType type,
      String title,
      @JsonKey(name: 'viewer_count') int viewerCount,
      @JsonKey(name: 'started_at') DateTime startedAt,
      String language,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      @JsonKey(name: 'tag_ids') List<String>? tagIds,
      @JsonKey(name: 'is_mature') bool isMature});
}

/// @nodoc
class _$TwitchStreamInfoCopyWithImpl<$Res, $Val extends TwitchStreamInfo>
    implements $TwitchStreamInfoCopyWith<$Res> {
  _$TwitchStreamInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userLogin = null,
    Object? userName = null,
    Object? gameId = null,
    Object? gameName = null,
    Object? type = null,
    Object? title = null,
    Object? viewerCount = null,
    Object? startedAt = null,
    Object? language = null,
    Object? thumbnailUrl = null,
    Object? tagIds = freezed,
    Object? isMature = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      gameName: null == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TwitchStreamType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      viewerCount: null == viewerCount
          ? _value.viewerCount
          : viewerCount // ignore: cast_nullable_to_non_nullable
              as int,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tagIds: freezed == tagIds
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isMature: null == isMature
          ? _value.isMature
          : isMature // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwitchStreamInfoImplCopyWith<$Res>
    implements $TwitchStreamInfoCopyWith<$Res> {
  factory _$$TwitchStreamInfoImplCopyWith(_$TwitchStreamInfoImpl value,
          $Res Function(_$TwitchStreamInfoImpl) then) =
      __$$TwitchStreamInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'user_login') String userLogin,
      @JsonKey(name: 'user_name') String userName,
      @JsonKey(name: 'game_id') String gameId,
      @JsonKey(name: 'game_name') String gameName,
      TwitchStreamType type,
      String title,
      @JsonKey(name: 'viewer_count') int viewerCount,
      @JsonKey(name: 'started_at') DateTime startedAt,
      String language,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      @JsonKey(name: 'tag_ids') List<String>? tagIds,
      @JsonKey(name: 'is_mature') bool isMature});
}

/// @nodoc
class __$$TwitchStreamInfoImplCopyWithImpl<$Res>
    extends _$TwitchStreamInfoCopyWithImpl<$Res, _$TwitchStreamInfoImpl>
    implements _$$TwitchStreamInfoImplCopyWith<$Res> {
  __$$TwitchStreamInfoImplCopyWithImpl(_$TwitchStreamInfoImpl _value,
      $Res Function(_$TwitchStreamInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userLogin = null,
    Object? userName = null,
    Object? gameId = null,
    Object? gameName = null,
    Object? type = null,
    Object? title = null,
    Object? viewerCount = null,
    Object? startedAt = null,
    Object? language = null,
    Object? thumbnailUrl = null,
    Object? tagIds = freezed,
    Object? isMature = null,
  }) {
    return _then(_$TwitchStreamInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      gameName: null == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TwitchStreamType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      viewerCount: null == viewerCount
          ? _value.viewerCount
          : viewerCount // ignore: cast_nullable_to_non_nullable
              as int,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tagIds: freezed == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isMature: null == isMature
          ? _value.isMature
          : isMature // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwitchStreamInfoImpl implements _TwitchStreamInfo {
  const _$TwitchStreamInfoImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'user_login') required this.userLogin,
      @JsonKey(name: 'user_name') required this.userName,
      @JsonKey(name: 'game_id') required this.gameId,
      @JsonKey(name: 'game_name') required this.gameName,
      required this.type,
      required this.title,
      @JsonKey(name: 'viewer_count') required this.viewerCount,
      @JsonKey(name: 'started_at') required this.startedAt,
      required this.language,
      @JsonKey(name: 'thumbnail_url') required this.thumbnailUrl,
      @JsonKey(name: 'tag_ids') required final List<String>? tagIds,
      @JsonKey(name: 'is_mature') required this.isMature})
      : _tagIds = tagIds;

  factory _$TwitchStreamInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwitchStreamInfoImplFromJson(json);

  /// Stream ID.
  @override
  final String id;

  /// ID of the user who is streaming.
  @override
  @JsonKey(name: 'user_id')
  final String userId;

  /// Login of the user who is streaming.
  @override
  @JsonKey(name: 'user_login')
  final String userLogin;

  /// Display name corresponding to [userId].
  @override
  @JsonKey(name: 'user_name')
  final String userName;

  /// ID of the game being played on the stream.
  @override
  @JsonKey(name: 'game_id')
  final String gameId;

  /// Name of the game being played.
  @override
  @JsonKey(name: 'game_name')
  final String gameName;

  /// Stream type: [TwitchStreamType.live] or [TwitchStreamType.error]
  /// (in case of error).
  @override
  final TwitchStreamType type;

  /// Stream title.
  @override
  final String title;

  /// Number of viewers watching the stream at the time of the query.
  @override
  @JsonKey(name: 'viewer_count')
  final int viewerCount;

  /// UTC timestamp.
  @override
  @JsonKey(name: 'started_at')
  final DateTime startedAt;

  /// Stream language. A language value is either the [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
  /// two-letter code for a [supported stream language](https://help.twitch.tv/s/article/languages-on-twitch?language=en_US#streamlang)
  /// or “other”.
  @override
  final String language;

  /// Thumbnail URL of the stream. All image URLs have variable width and
  /// height. You can replace `{width}` and `{height}` with any values to get
  /// that size image
  @override
  @JsonKey(name: 'thumbnail_url')
  final String thumbnailUrl;

  /// Shows tag IDs that apply to the stream.
  final List<String>? _tagIds;

  /// Shows tag IDs that apply to the stream.
  @override
  @JsonKey(name: 'tag_ids')
  List<String>? get tagIds {
    final value = _tagIds;
    if (value == null) return null;
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'is_mature')
  final bool isMature;

  @override
  String toString() {
    return 'TwitchStreamInfo(id: $id, userId: $userId, userLogin: $userLogin, userName: $userName, gameId: $gameId, gameName: $gameName, type: $type, title: $title, viewerCount: $viewerCount, startedAt: $startedAt, language: $language, thumbnailUrl: $thumbnailUrl, tagIds: $tagIds, isMature: $isMature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwitchStreamInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.gameName, gameName) ||
                other.gameName == gameName) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.viewerCount, viewerCount) ||
                other.viewerCount == viewerCount) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds) &&
            (identical(other.isMature, isMature) ||
                other.isMature == isMature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      userLogin,
      userName,
      gameId,
      gameName,
      type,
      title,
      viewerCount,
      startedAt,
      language,
      thumbnailUrl,
      const DeepCollectionEquality().hash(_tagIds),
      isMature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwitchStreamInfoImplCopyWith<_$TwitchStreamInfoImpl> get copyWith =>
      __$$TwitchStreamInfoImplCopyWithImpl<_$TwitchStreamInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwitchStreamInfoImplToJson(
      this,
    );
  }
}

abstract class _TwitchStreamInfo implements TwitchStreamInfo {
  const factory _TwitchStreamInfo(
          {required final String id,
          @JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'user_login') required final String userLogin,
          @JsonKey(name: 'user_name') required final String userName,
          @JsonKey(name: 'game_id') required final String gameId,
          @JsonKey(name: 'game_name') required final String gameName,
          required final TwitchStreamType type,
          required final String title,
          @JsonKey(name: 'viewer_count') required final int viewerCount,
          @JsonKey(name: 'started_at') required final DateTime startedAt,
          required final String language,
          @JsonKey(name: 'thumbnail_url') required final String thumbnailUrl,
          @JsonKey(name: 'tag_ids') required final List<String>? tagIds,
          @JsonKey(name: 'is_mature') required final bool isMature}) =
      _$TwitchStreamInfoImpl;

  factory _TwitchStreamInfo.fromJson(Map<String, dynamic> json) =
      _$TwitchStreamInfoImpl.fromJson;

  @override

  /// Stream ID.
  String get id;
  @override

  /// ID of the user who is streaming.
  @JsonKey(name: 'user_id')
  String get userId;
  @override

  /// Login of the user who is streaming.
  @JsonKey(name: 'user_login')
  String get userLogin;
  @override

  /// Display name corresponding to [userId].
  @JsonKey(name: 'user_name')
  String get userName;
  @override

  /// ID of the game being played on the stream.
  @JsonKey(name: 'game_id')
  String get gameId;
  @override

  /// Name of the game being played.
  @JsonKey(name: 'game_name')
  String get gameName;
  @override

  /// Stream type: [TwitchStreamType.live] or [TwitchStreamType.error]
  /// (in case of error).
  TwitchStreamType get type;
  @override

  /// Stream title.
  String get title;
  @override

  /// Number of viewers watching the stream at the time of the query.
  @JsonKey(name: 'viewer_count')
  int get viewerCount;
  @override

  /// UTC timestamp.
  @JsonKey(name: 'started_at')
  DateTime get startedAt;
  @override

  /// Stream language. A language value is either the [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
  /// two-letter code for a [supported stream language](https://help.twitch.tv/s/article/languages-on-twitch?language=en_US#streamlang)
  /// or “other”.
  String get language;
  @override

  /// Thumbnail URL of the stream. All image URLs have variable width and
  /// height. You can replace `{width}` and `{height}` with any values to get
  /// that size image
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl;
  @override

  /// Shows tag IDs that apply to the stream.
  @JsonKey(name: 'tag_ids')
  List<String>? get tagIds;
  @override
  @JsonKey(name: 'is_mature')
  bool get isMature;
  @override
  @JsonKey(ignore: true)
  _$$TwitchStreamInfoImplCopyWith<_$TwitchStreamInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
