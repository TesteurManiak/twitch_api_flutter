import 'package:twitch_api/twitch_api.dart';

class TwitchStreamsInfo {
  final List<TwitchStreamInfo> data;

  /// A cursor value, to be used in a subsequent request to specify the starting
  /// point of the next set of results.
  final Map<String, dynamic> pagination;

  TwitchStreamsInfo({this.data, this.pagination});

  factory TwitchStreamsInfo.fromJson(Map<String, dynamic> json) =>
      TwitchStreamsInfo(
        data: (json['data'] as Iterable)
            .map((e) => TwitchStreamInfo.fromJson(e))
            .toList(),
        pagination: json['pagination'],
      );
}
