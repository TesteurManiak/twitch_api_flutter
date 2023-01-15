import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_api/src/models/twitch_channel_editor.dart';
import 'package:twitch_api/src/models/twitch_emotes.dart';
import 'package:twitch_api/src/models/twitch_game_analytic.dart';
import 'package:twitch_api/src/models/twitch_start_commercial.dart';
import 'package:twitch_api/twitch_api.dart';

part 'twitch_response.freezed.dart';
part 'twitch_response.g.dart';

typedef TwitchModelParser = dynamic Function(Map<String, dynamic> json);

List<T> _parseObjects<T>(
  Map<String, dynamic> json,
  TwitchModelParser parser,
) {
  return (json['data'] as Iterable)
      .cast<Map<String, dynamic>>()
      .map<T>((e) => parser(e) as T)
      .toList();
}

/// Generic class for Twitch's API response using pagination.
class TwitchResponse<T> {
  TwitchResponse({
    this.data,
    this.pagination,
    this.total,
    this.dateRange,
  });

  factory TwitchResponse.customRewardRedemption(Map<String, dynamic> json) =>
      TwitchResponse(
        data: _parseObjects(json, TwitchCustomRewardRedemption.fromJson),
      );

  factory TwitchResponse.customReward(Map<String, dynamic> json) =>
      TwitchResponse(data: _parseObjects(json, TwitchCustomReward.fromJson));

  factory TwitchResponse.channelEditor(Map<String, dynamic> json) =>
      TwitchResponse(data: _parseObjects(json, TwitchChannelEditor.fromJson));

  /// Constructor for request containing [TwitchExtensionTransaction].
  factory TwitchResponse.extensionTransaction(Map<String, dynamic> json) =>
      TwitchResponse(
        data: _parseObjects(json, TwitchExtensionTransaction.fromJson),
      );

  /// Constructor for request containing [TwitchChannelInfo].
  factory TwitchResponse.channelInformations(Map<String, dynamic> json) =>
      TwitchResponse(data: _parseObjects(json, TwitchChannelInfo.fromJson));

  /// Constructor for request containing [TwitchGame].
  factory TwitchResponse.games(Map<String, dynamic> json) => TwitchResponse(
        data: _parseObjects(json, TwitchGame.fromJson),
        pagination: json['pagination'] as Map<String, dynamic>?,
      );

  /// Constructor for request containing [TwitchUserFollow].
  factory TwitchResponse.usersFollows(Map<String, dynamic> json) =>
      TwitchResponse(
        data: _parseObjects(json, TwitchUserFollow.fromJson),
        pagination: json['pagination'] as Map<String, dynamic>?,
        total: json['total'] as int,
      );

  /// Constructor for request containing [TwitchUser].
  factory TwitchResponse.users(Map<String, dynamic> json) => TwitchResponse(
        data: _parseObjects(json, TwitchUser.fromJson),
      );

  /// Constructor for request containing [TwitchBitsLeaderboard].
  factory TwitchResponse.bitsLeaderboard(Map<String, dynamic> json) =>
      TwitchResponse(
        data: _parseObjects(json, TwitchBitsLeaderboard.fromJson),
        dateRange: TwitchDateRange.fromJson(
          json['date_range'] as Map<String, dynamic>,
        ),
        total: json['total'] as int,
      );

  /// Constructor for request containing [TwitchBroadcasterSubscription].
  factory TwitchResponse.broadcasterSubscriptions(Map<String, dynamic> json) =>
      TwitchResponse(
        data: _parseObjects(json, TwitchBroadcasterSubscription.fromJson),
        pagination: json['pagination'] as Map<String, dynamic>?,
        total: json['total'] as int,
      );

  /// Constructor for request containing [TwitchStreamInfo].
  factory TwitchResponse.streamsInfo(Map<String, dynamic> json) =>
      TwitchResponse(
        data: _parseObjects(json, TwitchStreamInfo.fromJson),
        pagination: json['pagination'] as Map<String, dynamic>?,
      );

  /// Constructor for request containing [TwitchGameAnalytic].

  /// Constructor for request containing [TwitchSearchChannel].
  factory TwitchResponse.searchChannels(Map<String, dynamic> json) =>
      TwitchResponse(
        data: _parseObjects(json, TwitchSearchChannel.fromJson),
        pagination: json['pagination'] as Map<String, dynamic>?,
      );

  /// {@template twitchResponse.data}
  /// List of data from the response parsed into an object.
  /// {@endtemplate}
  final List<T>? data;

  /// A cursor value, to be used in a subsequent request to specify the starting
  /// point of the next set of results.
  final Map<String, dynamic>? pagination;

  /// Total number of results returned.
  final int? total;

  /// Date range of the returned data.
  final TwitchDateRange? dateRange;
}

/// Full specs can be found at: https://dev.twitch.tv/docs/api/reference/#start-commercial
@freezed
class StartCommercialResponse with _$StartCommercialResponse {
  const factory StartCommercialResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchStartCommercial> data,
  }) = _StartCommercialResponse;

  factory StartCommercialResponse.fromJson(Map<String, dynamic> json) =>
      _$StartCommercialResponseFromJson(json);
}

/// Full specs can be found at: https://dev.twitch.tv/docs/api/reference/#get-extension-analytics
@freezed
class ExtensionAnalyticsResponse with _$ExtensionAnalyticsResponse {
  const factory ExtensionAnalyticsResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchExtensionAnalytic> data,

    /// {@template twitchResponse.pagination}
    /// A cursor value, to be used in a subsequent request to specify the
    /// starting point of the next set of results.
    /// {@endtemplate}
    required Map<String, dynamic>? pagination,
  }) = _ExtensionAnalyticsResponse;

  factory ExtensionAnalyticsResponse.fromJson(Map<String, dynamic> json) =>
      _$ExtensionAnalyticsResponseFromJson(json);
}

/// Full specs can be found at: https://dev.twitch.tv/docs/api/reference/#get-game-analytics
@freezed
class GameAnalyticsResponse with _$GameAnalyticsResponse {
  const factory GameAnalyticsResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchGameAnalytic> data,

    /// {@macro twitchResponse.pagination}
    required Map<String, dynamic>? pagination,
  }) = _GameAnalyticsResponse;

  factory GameAnalyticsResponse.fromJson(Map<String, dynamic> json) =>
      _$GameAnalyticsResponseFromJson(json);
}

@freezed
class CheermotesResponse with _$CheermotesResponse {
  const factory CheermotesResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchCheermote> data,
  }) = _CheermotesResponse;

  factory CheermotesResponse.fromJson(Map<String, dynamic> json) =>
      _$CheermotesResponseFromJson(json);
}

@freezed
class ChannelEmotesResponse with _$ChannelEmotesResponse {
  const factory ChannelEmotesResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchEmotes> data,

    /// {@template twitchResponse.template}
    /// A templated URL. Use the values from id, format, scale, and theme_mode to
    /// replace the like-named placeholder strings in the templated URL to create
    /// a CDN (content delivery network) URL that you use to fetch the emote. For
    /// information about what the template looks like and how to use it to fetch
    /// emotes, see [Emote CDN URL format](https://dev.twitch.tv/docs/irc/emotes#cdn-template).
    /// {@endtemplate}
    required String template,
  }) = _ChannelEmotesResponse;

  factory ChannelEmotesResponse.fromJson(Map<String, dynamic> json) =>
      _$ChannelEmotesResponseFromJson(json);
}

@freezed
class ChannelGlobalEmotesResponse with _$ChannelGlobalEmotesResponse {
  const factory ChannelGlobalEmotesResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchGlobalEmotes> data,

    /// {@macro twitchResponse.template}
    required String template,
  }) = _ChannelGlobalEmotesResponse;

  factory ChannelGlobalEmotesResponse.fromJson(Map<String, dynamic> json) =>
      _$ChannelGlobalEmotesResponseFromJson(json);
}

@freezed
class EmoteSetsResponse with _$EmoteSetsResponse {
  const factory EmoteSetsResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchEmoteSets> data,

    /// {@macro twitchResponse.template}
    required String template,
  }) = _EmoteSetsResponse;

  factory EmoteSetsResponse.fromJson(Map<String, dynamic> json) =>
      _$EmoteSetsResponseFromJson(json);
}
