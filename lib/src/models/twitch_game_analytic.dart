import 'package:twitch_api/twitch_api.dart';

class TwitchGameAnalytic {
  final TwitchDateRange dateRange;
  final String gameId;
  final String type;
  final String url;

  TwitchGameAnalytic({
    this.gameId,
    this.type,
    this.url,
    this.dateRange,
  });

  factory TwitchGameAnalytic.fromJson(Map<String, dynamic> json) =>
      TwitchGameAnalytic(
        gameId: json['game_id'],
        type: json['type'],
        url: json['URL'],
        dateRange: TwitchDateRange.fromJson(json['date_range']),
      );
}
