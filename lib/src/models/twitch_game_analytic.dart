import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_api/src/models/twitch_date_range.dart';

part 'twitch_game_analytic.freezed.dart';
part 'twitch_game_analytic.g.dart';

@freezed
class TwitchGameAnalytic with _$TwitchGameAnalytic {
  const factory TwitchGameAnalytic({
    @JsonKey(name: 'game_id') required String gameId,
    required String type,
    @JsonKey(name: 'URL') required String url,
    @JsonKey(name: 'date_range') required TwitchDateRange dateRange,
  }) = _TwitchGameAnalytic;

  factory TwitchGameAnalytic.fromJson(Map<String, dynamic> json) =>
      _$TwitchGameAnalyticFromJson(json);
}
