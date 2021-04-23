import 'package:twitch_api/src/models/twitch_date_range.dart';

class TwitchExtensionAnalytic {
  final TwitchDateRange dateRange;

  /// ID of the extension whose analytics data is being provided.
  final String extensionId;

  /// Type of report.
  final String type;

  /// URL to the downloadable CSV file containing analytics data. Valid for 5
  /// minutes.
  final String url;

  TwitchExtensionAnalytic({
    this.dateRange,
    this.extensionId,
    this.type,
    this.url,
  });

  factory TwitchExtensionAnalytic.fromJson(Map<String, dynamic> json) =>
      TwitchExtensionAnalytic(
        dateRange: TwitchDateRange.fromJson(json['date_range']),
        extensionId: json['extension_id'],
        type: json['type'],
        url: json['URL'],
      );
}
