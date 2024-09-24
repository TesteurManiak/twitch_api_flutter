import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_api/src/models/twitch_channel_editor.dart';
import 'package:twitch_api/src/models/twitch_emotes.dart';
import 'package:twitch_api/src/models/twitch_game_analytic.dart';
import 'package:twitch_api/src/models/twitch_start_commercial.dart';
import 'package:twitch_api/twitch_api.dart';

part 'twitch_response.freezed.dart';
part 'twitch_response.g.dart';

/// Full specs can be found at: https://dev.twitch.tv/docs/api/reference/#start-commercial
@Freezed(toJson: false, fromJson: true)
class StartCommercialResponse with _$StartCommercialResponse {
  const factory StartCommercialResponse({
    /// {@template twitchResponse.data}
    /// List of data from the response parsed into an object.
    /// {@endtemplate}
    required List<TwitchStartCommercial> data,
  }) = _StartCommercialResponse;

  factory StartCommercialResponse.fromJson(Map<String, dynamic> json) => _$StartCommercialResponseFromJson(json);
}

/// Full specs can be found at: https://dev.twitch.tv/docs/api/reference/#get-extension-analytics
@Freezed(toJson: false, fromJson: true)
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

  factory ExtensionAnalyticsResponse.fromJson(Map<String, dynamic> json) => _$ExtensionAnalyticsResponseFromJson(json);
}

/// Full specs can be found at: https://dev.twitch.tv/docs/api/reference/#get-game-analytics
@Freezed(toJson: false, fromJson: true)
class GameAnalyticsResponse with _$GameAnalyticsResponse {
  const factory GameAnalyticsResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchGameAnalytic> data,

    /// {@macro twitchResponse.pagination}
    required Map<String, dynamic>? pagination,
  }) = _GameAnalyticsResponse;

  factory GameAnalyticsResponse.fromJson(Map<String, dynamic> json) => _$GameAnalyticsResponseFromJson(json);
}

/// Full specs can be found at: https://dev.twitch.tv/docs/api/reference/#get-bits-leaderboard
@Freezed(toJson: false, fromJson: true)
class BitsLeaderboardResponse with _$BitsLeaderboardResponse {
  const factory BitsLeaderboardResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchBitsLeaderboard> data,

    /// {@macro twitchResponse.dateRange}
    @JsonKey(name: 'date_range') required TwitchDateRange dateRange,

    /// {@template twitchResponse.total}
    /// Total number of results returned.
    /// {@endtemplate}
    required int total,
  }) = _BitsLeaderboardResponse;

  factory BitsLeaderboardResponse.fromJson(Map<String, dynamic> json) => _$BitsLeaderboardResponseFromJson(json);
}

/// Full specs can be found at: https://dev.twitch.tv/docs/api/reference/#get-users
@Freezed(toJson: false, fromJson: true)
class UsersResponse with _$UsersResponse {
  const factory UsersResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchUser> data,
  }) = _UsersResponse;

  factory UsersResponse.fromJson(Map<String, dynamic> json) => _$UsersResponseFromJson(json);
}

/// Specs: https://dev.twitch.tv/docs/api/reference/#get-users-follows
@Freezed(toJson: false, fromJson: true)
class UsersFollowsResponse with _$UsersFollowsResponse {
  const factory UsersFollowsResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchUserFollow> data,

    /// {@macro twitchResponse.pagination}
    required Map<String, dynamic>? pagination,

    /// {@macro twitchResponse.total}
    required int total,
  }) = _UsersFollowsResponse;

  factory UsersFollowsResponse.fromJson(Map<String, dynamic> json) => _$UsersFollowsResponseFromJson(json);
}

/// Specs: https://dev.twitch.tv/docs/api/reference/#get-top-games
@Freezed(toJson: false, fromJson: true)
class TopGamesResponse with _$TopGamesResponse {
  const factory TopGamesResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchGame> data,

    /// {@macro twitchResponse.pagination}
    required Map<String, dynamic>? pagination,
  }) = _TopGamesResponse;

  factory TopGamesResponse.fromJson(Map<String, dynamic> json) => _$TopGamesResponseFromJson(json);
}

/// Specs: https://dev.twitch.tv/docs/api/reference/#get-games
@Freezed(toJson: false, fromJson: true)
class GamesResponse with _$GamesResponse {
  const factory GamesResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchGame> data,
  }) = _GamesResponse;

  factory GamesResponse.fromJson(Map<String, dynamic> json) => _$GamesResponseFromJson(json);
}

/// Specs: https://dev.twitch.tv/docs/api/reference/#get-channel-information
@Freezed(toJson: false, fromJson: true)
class ChannelInformationResponse with _$ChannelInformationResponse {
  const factory ChannelInformationResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchChannelInfo> data,
  }) = _ChannelInformationResponse;

  factory ChannelInformationResponse.fromJson(Map<String, dynamic> json) => _$ChannelInformationResponseFromJson(json);
}

/// Specs: https://dev.twitch.tv/docs/api/reference/#search-categories
@Freezed(toJson: false, fromJson: true)
class SearchCategoriesResponse with _$SearchCategoriesResponse {
  const factory SearchCategoriesResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchGame> data,
  }) = _SearchCategoriesResponse;

  factory SearchCategoriesResponse.fromJson(Map<String, dynamic> json) => _$SearchCategoriesResponseFromJson(json);
}

/// Specs: https://dev.twitch.tv/docs/api/reference/#search-channels
@Freezed(toJson: false, fromJson: true)
class SearchChannelsResponse with _$SearchChannelsResponse {
  const factory SearchChannelsResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchSearchChannel> data,

    /// {@macro twitchResponse.pagination}
    required Map<String, dynamic>? pagination,
  }) = _SearchChannelsResponse;

  factory SearchChannelsResponse.fromJson(Map<String, dynamic> json) => _$SearchChannelsResponseFromJson(json);
}

/// Specs: https://dev.twitch.tv/docs/api/reference/#get-streams
@Freezed(toJson: false, fromJson: true)
class StreamsResponse with _$StreamsResponse {
  const factory StreamsResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchStreamInfo> data,

    /// {@macro twitchResponse.pagination}
    required Map<String, dynamic>? pagination,
  }) = _StreamsResponse;

  factory StreamsResponse.fromJson(Map<String, dynamic> json) => _$StreamsResponseFromJson(json);
}

/// Specs: https://dev.twitch.tv/docs/api/reference/#get-broadcaster-subscriptions
@Freezed(toJson: false, fromJson: true)
class BroadcasterSubscriptionsResponse with _$BroadcasterSubscriptionsResponse {
  const factory BroadcasterSubscriptionsResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchBroadcasterSubscription> data,

    /// {@macro twitchResponse.pagination}
    required Map<String, dynamic>? pagination,

    /// {@macro twitchResponse.total}
    required int total,

    /// The current number of subscriber points earned by this broadcaster.
    /// Points are based on the subscription tier of each user that subscribes
    /// to this broadcaster. For example, a Tier 1 subscription is worth 1
    /// point, Tier 2 is worth 2 points, and Tier 3 is worth 6 points. The
    /// number of points determines the number of emote slots that are unlocked
    /// for the broadcaster (see [Subscriber Emote Slots](https://help.twitch.tv/s/article/subscriber-emote-guide?language=en_US#emoteslots)).
    required int points,
  }) = _BroadcasterSubscriptionsResponse;

  factory BroadcasterSubscriptionsResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BroadcasterSubscriptionsResponseFromJson(json);
}

@Freezed(toJson: false, fromJson: true)
class CheermotesResponse with _$CheermotesResponse {
  const factory CheermotesResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchCheermote> data,
  }) = _CheermotesResponse;

  factory CheermotesResponse.fromJson(Map<String, dynamic> json) => _$CheermotesResponseFromJson(json);
}

/// Specs: https://dev.twitch.tv/docs/api/reference/#get-extension-transactions
@Freezed(toJson: false, fromJson: true)
class ExtensionTransactionsResponse with _$ExtensionTransactionsResponse {
  const factory ExtensionTransactionsResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchExtensionTransaction> data,

    /// {@macro twitchResponse.pagination}
    required Map<String, dynamic>? pagination,
  }) = _ExtensionTransactionsResponse;

  factory ExtensionTransactionsResponse.fromJson(Map<String, dynamic> json) => _$ExtensionTransactionsResponseFromJson(json);
}

@Freezed(toJson: false, fromJson: true)
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

  factory ChannelEmotesResponse.fromJson(Map<String, dynamic> json) => _$ChannelEmotesResponseFromJson(json);
}

@Freezed(toJson: false, fromJson: true)
class ChannelGlobalEmotesResponse with _$ChannelGlobalEmotesResponse {
  const factory ChannelGlobalEmotesResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchGlobalEmotes> data,

    /// {@macro twitchResponse.template}
    required String template,
  }) = _ChannelGlobalEmotesResponse;

  factory ChannelGlobalEmotesResponse.fromJson(Map<String, dynamic> json) => _$ChannelGlobalEmotesResponseFromJson(json);
}

@Freezed(toJson: false, fromJson: true)
class EmoteSetsResponse with _$EmoteSetsResponse {
  const factory EmoteSetsResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchEmoteSets> data,

    /// {@macro twitchResponse.template}
    required String template,
  }) = _EmoteSetsResponse;

  factory EmoteSetsResponse.fromJson(Map<String, dynamic> json) => _$EmoteSetsResponseFromJson(json);
}

/// Specs: https://dev.twitch.tv/docs/api/reference/#get-channel-editors
@Freezed(toJson: false, fromJson: true)
class ChannelEditorsResponse with _$ChannelEditorsResponse {
  const factory ChannelEditorsResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchChannelEditor> data,
  }) = _ChannelEditorsResponse;

  factory ChannelEditorsResponse.fromJson(Map<String, dynamic> json) => _$ChannelEditorsResponseFromJson(json);
}

/// Specs: https://dev.twitch.tv/docs/api/reference/#get-custom-reward
@Freezed(toJson: false, fromJson: true)
class CustomRewardResponse with _$CustomRewardResponse {
  const factory CustomRewardResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchCustomReward> data,
  }) = _CustomRewardResponse;

  factory CustomRewardResponse.fromJson(Map<String, dynamic> json) => _$CustomRewardResponseFromJson(json);
}

@Freezed(toJson: false, fromJson: true)
class CustomRewardRedemptionResponse with _$CustomRewardRedemptionResponse {
  const factory CustomRewardRedemptionResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchCustomRewardRedemption> data,

    /// {@macro twitchResponse.pagination}
    required Map<String, dynamic>? pagination,
  }) = _CustomRewardRedemptionResponse;

  factory CustomRewardRedemptionResponse.fromJson(Map<String, dynamic> json) => _$CustomRewardRedemptionResponseFromJson(json);
}

@Freezed(toJson: false)
class TwitchCreateClipResponse with _$TwitchCreateClipResponse {
  const factory TwitchCreateClipResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchCreateClip> data,
  }) = _TwitchCreateClipResponse;

  factory TwitchCreateClipResponse.fromJson(Map<String, dynamic> json) => _$TwitchCreateClipResponseFromJson(json);
}

@Freezed(toJson: false)
class TwitchClipResponse with _$TwitchClipResponse {
  const factory TwitchClipResponse({
    /// {@macro twitchResponse.data}
    required List<TwitchClip> data,

    /// {@macro twitchResponse.pagination}
    required Map<String, dynamic>? pagination,
  }) = _TwitchClipResponse;

  factory TwitchClipResponse.fromJson(Map<String, dynamic> json) => _$TwitchClipResponseFromJson(json);
}
