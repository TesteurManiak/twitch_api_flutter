class TwitchChannelInfo {
  final String broadcasterId;
  final String broadcasterName;
  final String gameName;
  final String gameId;
  final String broadcasterLanguage;
  final String title;

  static const broadcasterIdEntry = 'broadcaster_id';
  static const broadcasterNameEntry = 'broadcaster_name';
  static const gameNameEntry = 'game_name';
  static const gameIdEntry = 'game_id';
  static const broadcasterLanguageEntry = 'broadcaster_language';
  static const titleEntry = 'title';

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
        broadcasterId: json[broadcasterIdEntry],
        broadcasterName: json[broadcasterNameEntry],
        gameName: json[gameNameEntry],
        gameId: json[gameIdEntry],
        broadcasterLanguage: json[broadcasterLanguageEntry],
        title: json[titleEntry],
      );
}
