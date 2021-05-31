class TwitchChannelInfo {
  final String broadcasterId;
  final String broadcasterName;
  final String gameName;
  final String gameId;
  final String broadcasterLanguage;
  final String title;

  TwitchChannelInfo({
    required this.broadcasterId,
    required this.broadcasterName,
    required this.gameName,
    required this.gameId,
    required this.broadcasterLanguage,
    required this.title,
  });

  factory TwitchChannelInfo.fromJson(Map<String, dynamic> json) =>
      TwitchChannelInfo(
        broadcasterId: json['broadcaster_id'] as String,
        broadcasterName: json['broadcaster_name'] as String,
        gameName: json['game_name'] as String,
        gameId: json['game_id'] as String,
        broadcasterLanguage: json['broadcaster_language'] as String,
        title: json['title'] as String,
      );
}
