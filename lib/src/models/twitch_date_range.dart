import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitch_date_range.freezed.dart';
part 'twitch_date_range.g.dart';

@freezed
class TwitchDateRange with _$TwitchDateRange {
  const factory TwitchDateRange({
    /// Report end date/time.
    @JsonKey(name: 'ended_at') required String endedAt,

    /// Report start date/time. Note this may differ from (be later than) the
    /// `startedAt` value in the request; the response value is the date when
    /// data for the extension is available.
    @JsonKey(name: 'started_at') required String startedAt,
  }) = _TwitchDateRange;

  factory TwitchDateRange.fromJson(Map<String, dynamic> json) =>
      _$TwitchDateRangeFromJson(json);
}
