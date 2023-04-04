import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_stream_info.freezed.dart';
part 'twitch_stream_info.g.dart';

enum TwitchStreamType {
  @JsonValue('live')
  live,
  @JsonValue('error')
  error,
}

@freezed
class TwitchStreamInfo with _$TwitchStreamInfo {
  const factory TwitchStreamInfo({
    /// Stream ID.
    required String id,

    /// ID of the user who is streaming.
    @JsonKey(name: 'user_id') required String userId,

    /// Login of the user who is streaming.
    @JsonKey(name: 'user_login') required String userLogin,

    /// Display name corresponding to [userId].
    @JsonKey(name: 'user_name') required String userName,

    /// ID of the game being played on the stream.
    @JsonKey(name: 'game_id') required String gameId,

    /// Name of the game being played.
    @JsonKey(name: 'game_name') required String gameName,

    /// Stream type: [TwitchStreamType.live] or [TwitchStreamType.error]
    /// (in case of error).
    required TwitchStreamType type,

    /// Stream title.
    required String title,

    /// Number of viewers watching the stream at the time of the query.
    @JsonKey(name: 'viewer_count') required int viewerCount,

    /// UTC timestamp.
    @JsonKey(name: 'started_at') required DateTime startedAt,

    /// Stream language. A language value is either the [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
    /// two-letter code for a [supported stream language](https://help.twitch.tv/s/article/languages-on-twitch?language=en_US#streamlang)
    /// or “other”.
    required String language,

    /// Thumbnail URL of the stream. All image URLs have variable width and
    /// height. You can replace `{width}` and `{height}` with any values to get
    /// that size image
    @JsonKey(name: 'thumbnail_url') required String thumbnailUrl,

    /// Shows tag IDs that apply to the stream.
    @JsonKey(name: 'tag_ids') required List<String>? tagIds,
    @JsonKey(name: 'is_mature') required bool isMature,
  }) = _TwitchStreamInfo;

  factory TwitchStreamInfo.fromJson(Map<String, dynamic> json) =>
      _$TwitchStreamInfoFromJson(json);
}
