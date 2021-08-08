class TwitchSearchChannel {
  /// ID of the game being played on the stream
  final String gameId;

  /// Name of the game being played on the stream.
  final String gameName;

  /// Channel ID
  final String id;

  /// Login of the broadcaster.
  final String broadcasterLogin;

  /// Display name corresponding to `userId`
  final String displayName;

  /// Channel language. A language value is either the [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
  /// two-letter code for a [supported stream language](https://help.twitch.tv/s/article/languages-on-twitch?language=en_US#streamlang)
  /// or “other”.
  final String broadcasterLanguage;

  /// Channel title
  final String title;

  /// Thumbnail URL of the stream. All image URLs have variable width and
  /// height. You can replace `{width}` and `{height}` with any values to get
  /// that size image.
  final String thumbnailUrl;

  /// Live status
  final bool isLive;

  /// UTC timestamp. (live only)
  final DateTime? startedAt;

  /// Shows tag IDs that apply to the stream (live only).See
  /// https://www.twitch.tv/directory/all/tags for tag types Note: Category Tags
  /// are not returned
  final List<String> tagIds;

  TwitchSearchChannel({
    required this.gameId,
    required this.gameName,
    required this.id,
    required this.broadcasterLogin,
    required this.displayName,
    required this.broadcasterLanguage,
    required this.title,
    required this.thumbnailUrl,
    required this.isLive,
    this.startedAt,
    required this.tagIds,
  });

  factory TwitchSearchChannel.fromJson(Map<String, dynamic> json) =>
      TwitchSearchChannel(
        gameId: json['game_id'] as String,
        gameName: json['game_name'] as String,
        id: json['id'] as String,
        broadcasterLogin: json['broadcaster_login'] as String,
        displayName: json['display_name'] as String,
        broadcasterLanguage: json['broadcaster_language'] as String,
        title: json['title'] as String,
        thumbnailUrl: json['thumbnail_url'] as String,
        isLive: json['is_live'] as bool,
        startedAt: (json['is_live'] as bool)
            ? DateTime.parse(json['started_at'] as String)
            : null,
        tagIds: List<String>.from(json['tag_ids'] as Iterable),
      );
}
