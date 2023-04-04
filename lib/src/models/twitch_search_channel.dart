import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_search_channel.freezed.dart';
part 'twitch_search_channel.g.dart';

@freezed
class TwitchSearchChannel with _$TwitchSearchChannel {
  const factory TwitchSearchChannel({
    /// ID of the game being played on the stream
    @JsonKey(name: 'game_id') required String gameId,

    /// Name of the game being played on the stream.
    @JsonKey(name: 'game_name') required String gameName,

    /// Channel ID
    required String id,

    /// Login of the broadcaster.
    @JsonKey(name: 'broadcaster_login') required String broadcasterLogin,

    /// Display name corresponding to `userId`
    @JsonKey(name: 'display_name') required String displayName,

    /// Channel language. A language value is either the [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
    /// two-letter code for a [supported stream language](https://help.twitch.tv/s/article/languages-on-twitch?language=en_US#streamlang)
    /// or “other”.
    @JsonKey(name: 'broadcaster_language') required String broadcasterLanguage,

    /// Channel title
    required String title,

    /// Thumbnail URL of the stream. All image URLs have variable width and
    /// height. You can replace `{width}` and `{height}` with any values to get
    /// that size image.
    @JsonKey(name: 'thumbnail_url') required String thumbnailUrl,

    /// Live status
    @JsonKey(name: 'is_live') required bool isLive,

    /// UTC timestamp. (live only)
    @JsonKey(name: 'started_at') DateTime? startedAt,

    /// Shows tag IDs that apply to the stream (live only).See
    /// https://www.twitch.tv/directory/all/tags for tag types Note: Category
    /// Tags are not returned
    @JsonKey(name: 'tag_ids') required List<String> tagIds,
  }) = _TwitchSearchChannel;

  factory TwitchSearchChannel.fromJson(Map<String, dynamic> json) =>
      _$TwitchSearchChannelFromJson(json);
}
