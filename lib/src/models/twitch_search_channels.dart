import 'package:twitch_api/twitch_api.dart';

class TwitchSearchChannels {
  final List<TwitchSearchChannel> data;
  final Map<String, dynamic> pagination;

  TwitchSearchChannels({this.data, this.pagination});

  factory TwitchSearchChannels.fromJson(Map<String, dynamic> json) =>
      TwitchSearchChannels(
        data: (json['data'] as Iterable)
            .map<TwitchSearchChannel>((e) => TwitchSearchChannel.fromJson(e))
            .toList(),
        pagination: json['pagination'],
      );
}
