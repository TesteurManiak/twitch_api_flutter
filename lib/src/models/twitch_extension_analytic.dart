import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_api/src/models/twitch_date_range.dart';

part 'twitch_extension_analytic.freezed.dart';
part 'twitch_extension_analytic.g.dart';

@freezed
class TwitchExtensionAnalytic with _$TwitchExtensionAnalytic {
  const factory TwitchExtensionAnalytic({
    @JsonKey(name: 'date_range') required TwitchDateRange dateRange,

    /// ID of the extension whose analytics data is being provided.
    @JsonKey(name: 'extension_id') required String extensionId,

    /// Type of report.
    required String type,

    /// URL to the downloadable CSV file containing analytics data. Valid for 5
    /// minutes.
    @JsonKey(name: 'URL') required String url,
  }) = _TwitchExtensionAnalytic;

  factory TwitchExtensionAnalytic.fromJson(Map<String, dynamic> json) =>
      _$TwitchExtensionAnalyticFromJson(json);
}
