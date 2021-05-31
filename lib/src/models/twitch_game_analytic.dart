import 'package:twitch_api/twitch_api.dart';

class TwitchGameAnalytic {
  final TwitchDateRange dateRange;
  final String gameId;
  final String type;
  final String url;

  TwitchGameAnalytic({
    required this.gameId,
    required this.type,
    required this.url,
    required this.dateRange,
  });

  factory TwitchGameAnalytic.fromJson(Map<String, dynamic> json) =>
      TwitchGameAnalytic(
        gameId: json['game_id'] as String,
        type: json['type'] as String,
        url: json['URL'] as String,
        dateRange: TwitchDateRange.fromJson(
            json['date_range'] as Map<String, dynamic>),
      );
}
