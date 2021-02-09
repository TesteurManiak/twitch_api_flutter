import 'package:twitch_api/src/models/twitch_extension_analytic.dart';

class TwitchExtensionAnalytics {
  final List<TwitchExtentsionAnalytic> data;

  /// A cursor value, to be used in a subsequent request to specify the starting
  /// point of the next set of results. This is returned only if `extensionId`
  /// is not specified in the request.
  final Map<String, dynamic> pagination;

  TwitchExtensionAnalytics({this.data, this.pagination});

  factory TwitchExtensionAnalytics.fromJson(Map<String, dynamic> json) =>
      TwitchExtensionAnalytics(
        data: (json['data'] as Iterable)
            .map((e) => TwitchExtentsionAnalytic.fromJson(e))
            .toList(),
        pagination: json['pagination'],
      );
}
