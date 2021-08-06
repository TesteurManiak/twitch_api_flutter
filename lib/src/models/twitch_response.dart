import 'package:twitch_api/src/models/twitch_bits_leaderboard.dart';
import 'package:twitch_api/src/models/twitch_broadcaster_subscription.dart';
import 'package:twitch_api/src/models/twitch_channel_editor.dart';
import 'package:twitch_api/src/models/twitch_channel_info.dart';
import 'package:twitch_api/src/models/twitch_date_range.dart';
import 'package:twitch_api/src/models/twitch_extension_analytic.dart';
import 'package:twitch_api/src/models/twitch_extension_transaction.dart';
import 'package:twitch_api/src/models/twitch_game.dart';
import 'package:twitch_api/src/models/twitch_game_analytic.dart';
import 'package:twitch_api/src/models/twitch_search_channel.dart';
import 'package:twitch_api/src/models/twitch_start_commercial.dart';
import 'package:twitch_api/src/models/twitch_stream_info.dart';
import 'package:twitch_api/src/models/twitch_user.dart';
import 'package:twitch_api/src/models/twitch_user_follow.dart';
import 'package:twitch_api/twitch_api.dart';

/// Generic class for Twitch's API response using pagination.
class TwitchResponse<T> {
  /// List of data from the response parsed into an object.
  final List<T>? data;

  /// A cursor value, to be used in a subsequent request to specify the starting
  /// point of the next set of results.
  final Map<String, dynamic>? pagination;

  /// Total number of results returned.
  final int? total;

  /// Date range of the returned data.
  final TwitchDateRange? dateRange;

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
            .map<T>((e) =>
                TwitchSearchChannel.fromJson(e as Map<String, dynamic>) as T)
            .toList(),
        pagination: json['pagination'] as Map<String, dynamic>,
      );

  /// Constructor for request containing [TwitchExtentsionAnalytic].
  factory TwitchResponse.extensionAnalytics(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) =>
                TwitchExtensionAnalytic.fromJson(e as Map<String, dynamic>)
                    as T)
            .toList(),
        pagination: json['pagination'] as Map<String, dynamic>?,
      );

  /// Constructor for request containing [TwitchGameAnalytic].
  factory TwitchResponse.gameAnalytics(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) =>
                TwitchGameAnalytic.fromJson(e as Map<String, dynamic>) as T)
            .toList(),
        pagination: json['pagination'] as Map<String, dynamic>?,
      );

  /// Constructor for request containing [TwitchStreamInfo].
  factory TwitchResponse.streamsInfo(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) =>
                TwitchStreamInfo.fromJson(e as Map<String, dynamic>) as T)
            .toList(),
        pagination: json['pagination'] as Map<String, dynamic>?,
      );

  /// Constructor for request containing [TwitchBroadcasterSubscription].
  factory TwitchResponse.broadcasterSubscriptions(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) => TwitchBroadcasterSubscription.fromJson(
                e as Map<String, dynamic>) as T)
            .toList(),
        pagination: json['pagination'] as Map<String, dynamic>?,
        total: json['total'] as int,
      );

  /// Constructor for request containing [TwitchBitsLeaderboard].
  factory TwitchResponse.bitsLeaderboard(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) =>
                TwitchBitsLeaderboard.fromJson(e as Map<String, dynamic>) as T)
            .toList(),
        dateRange: TwitchDateRange.fromJson(
            json['date_range'] as Map<String, dynamic>),
        total: json['total'] as int,
      );

  /// Constructor for request containing [TwitchStartCommercial].
  factory TwitchResponse.startCommercial(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) =>
                TwitchStartCommercial.fromJson(e as Map<String, dynamic>) as T)
            .toList(),
      );

  /// Constructor for request containing [TwitchUser].
  factory TwitchResponse.users(Map<String, dynamic> json) => TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) => TwitchUser.fromJson(e as Map<String, dynamic>) as T)
            .toList(),
      );

  /// Constructor for request containing [TwitchUserFollow].
  factory TwitchResponse.usersFollows(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) =>
                TwitchUserFollow.fromJson(e as Map<String, dynamic>) as T)
            .toList(),
        pagination: json['pagination'] as Map<String, dynamic>,
        total: json['total'] as int,
      );

  /// Constructor for request containing [TwitchGame].
  factory TwitchResponse.games(Map<String, dynamic> json) => TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) => TwitchGame.fromJson(e as Map<String, dynamic>) as T)
            .toList(),
        pagination: json['pagination'] as Map<String, dynamic>,
      );

  /// Constructor for request containing [TwitchChannelInfo].
  factory TwitchResponse.channelInformations(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) =>
                TwitchChannelInfo.fromJson(e as Map<String, dynamic>) as T)
            .toList(),
      );

  /// Constructor for request containing [TwitchCheermote].
  factory TwitchResponse.cheermotes(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>(
                (e) => TwitchCheermote.fromJson(e as Map<String, dynamic>) as T)
            .toList(),
      );

  /// Constructor for request containing [TwitchExtensionTransaction].
  factory TwitchResponse.extensionTransaction(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) =>
                TwitchExtensionTransaction.fromJson(e as Map<String, dynamic>)
                    as T)
            .toList(),
      );

  factory TwitchResponse.channelEditor(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) =>
                TwitchChannelEditor.fromJson(e as Map<String, dynamic>) as T)
            .toList(),
      );

  factory TwitchResponse.customReward(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) =>
                TwitchCustomReward.fromJson(e as Map<String, dynamic>) as T)
            .toList(),
      );

  factory TwitchResponse.customRewardRedemption(Map<String, dynamic> json) =>
      TwitchResponse(
        data: (json['data'] as Iterable)
            .map<T>((e) =>
                TwitchCustomRewardRedemption.fromJson(e as Map<String, dynamic>)
                    as T)
            .toList(),
      );
}
