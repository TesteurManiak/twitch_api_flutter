class TwitchChannelInfo {
  final String broadcasterId;
  final String broadcasterName;
  final String gameName;
  final String gameId;
  final String broadcasterLanguage;
  final String title;

  TwitchChannelInfo({
    this.broadcasterId,
    this.broadcasterName,
    this.gameName,
    this.gameId,
    this.broadcasterLanguage,
    this.title,
  });

  factory TwitchChannelInfo.fromJson(Map<String, dynamic> json) =>
      TwitchChannelInfo(
        broadcasterId: json['broadcaster_id'],
        broadcasterName: json['broadcaster_name'],
        gameName: json['game_name'],
        gameId: json['game_id'],
        broadcasterLanguage: json['broadcaster_language'],
        title: json['title'],
      );
}
