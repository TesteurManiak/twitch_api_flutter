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
    required this.dateRange,
    required this.extensionId,
    required this.type,
    required this.url,
  });

  factory TwitchExtensionAnalytic.fromJson(Map<String, dynamic> json) =>
      TwitchExtensionAnalytic(
        dateRange: TwitchDateRange.fromJson(
            json['date_range'] as Map<String, dynamic>),
        extensionId: json['extension_id'] as String,
        type: json['type'] as String,
        url: json['URL'] as String,
      );
}
