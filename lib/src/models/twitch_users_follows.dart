import 'package:twitch_api/src/models/twitch_user_follow.dart';

class TwitchUsersFollows {
  /// Total number of items returned.
  ///
  /// - If only `fromId` was in the request, this is the total number of
  /// followed users.
  ///
  /// - If only `toId` was in the request, this is the total number of
  /// followers.
  ///
  /// - If both `fromId` and `toId` were in the request, this is 1 (if the
  /// "from" user follows the "to" user) or 0.
  final int total;

  /// A cursor value, to be used in a subsequent request to specify the starting
  /// point of the next set of results.
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
