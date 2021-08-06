class TwitchChannelInfo {
  /// Twitch User ID of this channel owner
  final String broadcasterId;

  /// Twitch user display name of this channel owner
  final String broadcasterName;

  /// Name of the game being played on the channel
  final String gameName;

  /// Current game ID being played on the channel
  final String gameId;

  /// Language of the channel. A language value is either the ISO 639-1
  /// two-letter code for a supported stream language or “other”.
  final String broadcasterLanguage;

  /// Title of the stream
  final String title;

  /// Stream delay in seconds
  final int delay;

  TwitchChannelInfo({
    required this.broadcasterId,
    required this.broadcasterName,
    required this.gameName,
    required this.gameId,
    required this.broadcasterLanguage,
    required this.title,
    required this.delay,
  });

  factory TwitchChannelInfo.fromJson(Map<String, dynamic> json) =>
      TwitchChannelInfo(
        broadcasterId: json['broadcaster_id'] as String,
        broadcasterName: json['broadcaster_name'] as String,
        gameName: json['game_name'] as String,
        gameId: json['game_id'] as String,
        broadcasterLanguage: json['broadcaster_language'] as String,
        title: json['title'] as String,
        delay: json['delay'] as int,
      );
}
