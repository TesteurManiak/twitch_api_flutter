import '../extensions/string_extensions.dart';

enum TwitchStreamType { live, error }

class TwitchStreamInfo {
  /// Stream ID.
  final String id;

  /// ID of the user who is streaming.
  final String userId;

  /// Login of the user who is streaming.
  final String userLogin;

  /// Display name corresponding to `userId`.
  final String userName;

  /// ID of the game being played on the stream.
  final String gameId;

  /// Name of the game being played.
  final String gameName;

  /// Stream type: `TwitchStreamType.live` or `TwitchStreamType.error`
  /// (in case of error).
  final TwitchStreamType type;

  /// Stream title.
  final String title;

  /// Number of viewers watching the stream at the time of the query.
  final int viewerCount;

  /// UTC timestamp.
  final DateTime startedAt;

  /// Stream language. A language value is either the [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
  /// two-letter code for a [supported stream language](https://help.twitch.tv/s/article/languages-on-twitch?language=en_US#streamlang)
  /// or “other”.
  final String language;

  /// Thumbnail URL of the stream. All image URLs have variable width and
  /// height. You can replace `{width}` and `{height}` with any values to get
  /// that size image
  final String thumbnailUrl;

  /// Shows tag IDs that apply to the stream.
  final List<String> tagIds;

  final bool isMature;

  TwitchStreamInfo({
    required this.id,
    required this.userId,
    required this.userLogin,
    required this.userName,
    required this.gameId,
    required this.gameName,
    required this.type,
    required this.title,
    required this.viewerCount,
    required this.startedAt,
    required this.language,
    required this.thumbnailUrl,
    required this.tagIds,
    required this.isMature,
  });

  factory TwitchStreamInfo.fromJson(Map<String, dynamic> json) =>
      TwitchStreamInfo(
        id: json['id'] as String,
        userId: json['user_id'] as String,
        userLogin: json['user_login'] as String,
        userName: json['user_name'] as String,
        gameId: json['game_id'] as String,
        gameName: json['game_name'] as String,
        type: json['type'].toString().toStreamType(),
        title: json['title'] as String,
        viewerCount: json['viewer_count'] as int,
        startedAt: DateTime.parse(json['started_at'] as String),
        language: json['language'] as String,
        thumbnailUrl: json['thumbnail_url'] as String,
        tagIds: List<String>.from(json['tag_ids'] as Iterable),
        isMature: json['is_mature'] as bool,
      );
}
