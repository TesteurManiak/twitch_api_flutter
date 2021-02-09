import 'package:twitch_api/twitch_api.dart';

class TwitchGameAnalytic {
  final TwitchDateRange dateRange;
  final String gameId;
  final Map<String, dynamic> pagination;
  final String type;
  final String url;

  TwitchGameAnalytic({
    this.gameId,
    this.pagination,
    this.type,
    this.url,
    this.dateRange,
  });

  factory TwitchGameAnalytic.fromJson(Map<String, dynamic> json) =>
      TwitchGameAnalytic(
        gameId: json['game_id'],
        pagination: json['pagination'],
        type: json['type'],
        url: json['URL'],
        dateRange: TwitchDateRange.fromJson(json['date_range']),
      );
}
