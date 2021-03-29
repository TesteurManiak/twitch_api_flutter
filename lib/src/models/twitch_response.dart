import 'package:twitch_api/src/models/twitch_bits_leaderboard.dart';
import 'package:twitch_api/src/models/twitch_broadcaster_subscription.dart';
import 'package:twitch_api/src/models/twitch_channel_info.dart';
import 'package:twitch_api/src/models/twitch_date_range.dart';
import 'package:twitch_api/src/models/twitch_extension_analytic.dart';
import 'package:twitch_api/src/models/twitch_game.dart';
import 'package:twitch_api/src/models/twitch_game_analytic.dart';
import 'package:twitch_api/src/models/twitch_search_category.dart';
import 'package:twitch_api/src/models/twitch_search_channel.dart';
import 'package:twitch_api/src/models/twitch_start_commercial.dart';
import 'package:twitch_api/src/models/twitch_stream_info.dart';
import 'package:twitch_api/src/models/twitch_top_game.dart';
import 'package:twitch_api/src/models/twitch_user.dart';
import 'package:twitch_api/src/models/twitch_user_follow.dart';
import 'package:twitch_api/twitch_api.dart';

/// Generic class for Twitch's API response using pagination.
class TwitchResponse<T> {
  /// List of data from the response parsed into an object.
  final List<T> data;

  /// A cursor value, to be used in a subsequent request to specify the starting
  /// point of the next set of results.
  final Map<String, dynamic> pagination;

  /// Total number of results returned.
  final int total;

  /// Date range of the returned data.
  final TwitchDateRange dateRange;

  TwitchResponse({
    this.data,
    this.pagination,
    this.total,
    this.dateRange,
  });

  /// Constructor for request containing [TwitchSearchChannel].
  factory TwitchResponse.searchChannels(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) => TwitchSearchChannel.fromJson(e) as T)
            .toList(),
        pagination: json['pagination'],
      );

  /// Constructor for request containing [TwitchExtentsionAnalytic].
  factory TwitchResponse.extentionAnalytics(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) => TwitchExtentsionAnalytic.fromJson(e) as T)
            .toList(),
        pagination: json['pagination'],
      );

  /// Constructor for request containing [TwitchGameAnalytic].
  factory TwitchResponse.gameAnalytics(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) => TwitchGameAnalytic.fromJson(e) as T)
            .toList(),
        pagination: json['pagination'],
      );

  /// Constructor for request containing [TwitchStreamInfo].
  factory TwitchResponse.streamsInfo(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) => TwitchStreamInfo.fromJson(e) as T)
            .toList(),
        pagination: json['pagination'],
      );

  /// Constructor for request containing [TwitchTopGame].
  factory TwitchResponse.topGames(Map<String, dynamic> json) => TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) => TwitchTopGame.fromJson(e) as T)
            .toList(),
        pagination: json['pagination'],
      );

  /// Constructor for request containing [TwitchSearchCategory].
  factory TwitchResponse.searchCategories(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) => TwitchSearchCategory.fromJson(e) as T)
            .toList(),
        pagination: json['pagination'],
      );

  /// Constructor for request containing [TwitchBroadcasterSubscription].
  factory TwitchResponse.broadcasterSubscriptions(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) => TwitchBroadcasterSubscription.fromJson(e) as T)
            .toList(),
        pagination: json['pagination'],
      );

  /// Constructor for request containing [TwitchBitsLeaderboard].
  factory TwitchResponse.bitsLeaderboard(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) => TwitchBitsLeaderboard.fromJson(e) as T)
            .toList(),
        dateRange: TwitchDateRange.fromJson(json['date_range']),
        total: json['total'],
      );

  /// Constructor for request containing [TwitchStartCommercial].
  factory TwitchResponse.startCommercial(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) => TwitchStartCommercial.fromJson(e) as T)
            .toList(),
      );

  /// Constructor for request containing [TwitchUser].
  factory TwitchResponse.users(Map<String, dynamic> json) => TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) => TwitchUser.fromJson(e) as T)
            .toList(),
      );

  /// Constructor for request containing [TwitchUserFollow].
  factory TwitchResponse.usersFollows(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) => TwitchUserFollow.fromJson(e) as T)
            .toList(),
        pagination: json['pagination'],
        total: json['total'],
      );

  /// Constructor for request containing [TwitchGame].
  factory TwitchResponse.games(Map<String, dynamic> json) => TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) => TwitchGame.fromJson(e) as T)
            .toList(),
        pagination: json['pagination'],
      );

  /// Constructor for request containing [TwitchChannelInfo].
  factory TwitchResponse.channelInformations(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) => TwitchChannelInfo.fromJson(e) as T)
            .toList(),
      );

  /// Constructor for request containing [TwitchCheermote].
  factory TwitchResponse.cheermotes(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json as Iterable)
            .map<T>((e) => TwitchCheermote.fromJson(e) as T)
            .toList(),
      );
}
