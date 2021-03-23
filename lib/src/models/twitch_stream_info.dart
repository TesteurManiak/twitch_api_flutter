class TwitchStreamInfo {
  /// Stream ID.
  final String id;

  final String userId;
  final String userLogin;
  final String userName;

  /// ID of the game being played on the stream.
  final String gameId;

  /// Name of the game being played.
  final String gameName;

  final String type;
  final String title;
  final int viewerCount;
  final DateTime startedAt;
  final String language;
  final String thumbnailUrl;
  final List<String> tagIds;

  TwitchStreamInfo({
    this.id,
    this.userId,
    this.userLogin,
    this.userName,
    this.gameId,
    this.gameName,
    this.type,
    this.title,
    this.viewerCount,
    this.startedAt,
    this.language,
    this.thumbnailUrl,
    this.tagIds,
  });

  factory TwitchStreamInfo.fromJson(Map<String, dynamic> json) =>
      TwitchStreamInfo(
        id: json['id'],
        userId: json['user_id'],
        userLogin: json['user_login'],
        userName: json['user_name'],
        gameId: json['game_id'],
        gameName: json['game_name'],
        type: json['type'],
        title: json['title'],
        viewerCount: json['viewer_count'],
        startedAt: DateTime.parse(json['started_at']),
        language: json['language'],
        thumbnailUrl: json['thumbnail_url'],
        tagIds: List<String>.from(json['tag_ids']),
      );
}
