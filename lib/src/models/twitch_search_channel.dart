class TwitchSearchChannel {
  final String gameId;
  final String id;
  final String broadcasterLogin;
  final String displayName;
  final String broadcasterLanguage;
  final String title;
  final String thumbnailUrl;
  final bool isLive;
  final DateTime startedAt;

  TwitchSearchChannel({
    this.gameId,
    this.id,
    this.broadcasterLogin,
    this.displayName,
    this.broadcasterLanguage,
    this.title,
    this.thumbnailUrl,
  });

  factory TwitchSearchChannel.fromJson(Map<String, dynamic> json) =>
      TwitchSearchChannel(
        gameId: json['game_id'],
        id: json['id'],
        broadcasterLogin: json['broadcaster_login'],
      );
}
