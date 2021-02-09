import 'package:twitch_api/src/models/twitch_user_follow.dart';

class TwitchUsersFollows {
  final int total;
  final Map<String, dynamic> pagination;
  final List<TwitchUserFollow> data;

  TwitchUsersFollows({this.data, this.pagination, this.total});

  factory TwitchUsersFollows.fromJson(Map<String, dynamic> json) =>
      TwitchUsersFollows(
        data: (json['data'] as Iterable)
            .map((e) => TwitchUserFollow.fromJson(e))
            .toList(),
        pagination: json['pagination'],
        total: json['total'],
      );
}
