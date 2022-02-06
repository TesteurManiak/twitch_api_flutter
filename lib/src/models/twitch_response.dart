import '../../twitch_api.dart';
import 'twitch_channel_editor.dart';
import 'twitch_emotes.dart';
import 'twitch_game_analytic.dart';
import 'twitch_start_commercial.dart';

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
        data: _parseObjects(json, TwitchSearchChannel.fromJson),
        pagination: json['pagination'] as Map<String, dynamic>?,
      );

  /// Constructor for request containing [TwitchExtentsionAnalytic].
  factory TwitchResponse.extensionAnalytics(Map<String, dynamic> json) =>
      TwitchResponse(
        data: _parseObjects(json, TwitchExtensionAnalytic.fromJson),
        pagination: json['pagination'] as Map<String, dynamic>?,
      );

  /// Constructor for request containing [TwitchGameAnalytic].
  factory TwitchResponse.gameAnalytics(Map<String, dynamic> json) =>
      TwitchResponse(
        data: _parseObjects(json, TwitchGameAnalytic.fromJson),
        pagination: json['pagination'] as Map<String, dynamic>?,
      );

  /// Constructor for request containing [TwitchStreamInfo].
  factory TwitchResponse.streamsInfo(Map<String, dynamic> json) =>
      TwitchResponse(
        data: _parseObjects(json, TwitchStreamInfo.fromJson),
        pagination: json['pagination'] as Map<String, dynamic>?,
      );

  /// Constructor for request containing [TwitchBroadcasterSubscription].
  factory TwitchResponse.broadcasterSubscriptions(Map<String, dynamic> json) =>
      TwitchResponse(
        data: _parseObjects(json, TwitchBroadcasterSubscription.fromJson),
        pagination: json['pagination'] as Map<String, dynamic>?,
        total: json['total'] as int,
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

  /// Constructor for request containing [TwitchStartCommercial].
  factory TwitchResponse.startCommercial(Map<String, dynamic> json) =>
      TwitchResponse(data: _parseObjects(json, TwitchStartCommercial.fromJson));

  /// Constructor for request containing [TwitchUser].
  factory TwitchResponse.users(Map<String, dynamic> json) => TwitchResponse(
        data: _parseObjects(json, TwitchUser.fromJson),
      );

  /// Constructor for request containing [TwitchUserFollow].
  factory TwitchResponse.usersFollows(Map<String, dynamic> json) =>
      TwitchResponse(
        data: _parseObjects(json, TwitchUserFollow.fromJson),
        pagination: json['pagination'] as Map<String, dynamic>?,
        total: json['total'] as int,
      );

  /// Constructor for request containing [TwitchGame].
  factory TwitchResponse.games(Map<String, dynamic> json) => TwitchResponse(
        data: _parseObjects(json, TwitchGame.fromJson),
        pagination: json['pagination'] as Map<String, dynamic>?,
      );

  /// Constructor for request containing [TwitchChannelInfo].
  factory TwitchResponse.channelInformations(Map<String, dynamic> json) =>
      TwitchResponse(data: _parseObjects(json, TwitchChannelInfo.fromJson));

  /// Constructor for request containing [TwitchCheermote].
  factory TwitchResponse.cheermotes(Map<String, dynamic> json) =>
      TwitchResponse(data: _parseObjects(json, TwitchCheermote.fromJson));

  /// Constructor for request containing [TwitchExtensionTransaction].
  factory TwitchResponse.extensionTransaction(Map<String, dynamic> json) =>
      TwitchResponse(
        data: _parseObjects(json, TwitchExtensionTransaction.fromJson),
      );

  factory TwitchResponse.channelEditor(Map<String, dynamic> json) =>
      TwitchResponse(data: _parseObjects(json, TwitchChannelEditor.fromJson));

  factory TwitchResponse.customReward(Map<String, dynamic> json) =>
      TwitchResponse(data: _parseObjects(json, TwitchCustomReward.fromJson));

  factory TwitchResponse.customRewardRedemption(Map<String, dynamic> json) =>
      TwitchResponse(
        data: _parseObjects(json, TwitchCustomRewardRedemption.fromJson),
      );
}

class ChannelEmotesResponse extends TwitchResponse<TwitchEmotes> {
  /// A templated URL. Use the values from id, format, scale, and theme_mode to
  /// replace the like-named placeholder strings in the templated URL to create
  /// a CDN (content delivery network) URL that you use to fetch the emote. For
  /// information about what the template looks like and how to use it to fetch
  /// emotes, see [Emote CDN URL format](https://dev.twitch.tv/docs/irc/emotes#cdn-template).
  final String template;

  ChannelEmotesResponse({
    required List<TwitchEmotes> data,
    required this.template,
  }) : super(data: data);

  factory ChannelEmotesResponse.fromJson(Map<String, dynamic> json) =>
      ChannelEmotesResponse(
        data: _parseObjects(json, TwitchEmotes.fromJson),
        template: json['template'] as String,
      );
}

class ChannelGlobalEmotesResponse extends TwitchResponse<TwitchGlobalEmotes> {
  /// A templated URL. Use the values from id, format, scale, and theme_mode to
  /// replace the like-named placeholder strings in the templated URL to create
  /// a CDN (content delivery network) URL that you use to fetch the emote. For
  /// information about what the template looks like and how to use it to fetch
  /// emotes, see [Emote CDN URL format](https://dev.twitch.tv/docs/irc/emotes#cdn-template).
  final String template;

  ChannelGlobalEmotesResponse({
    required List<TwitchGlobalEmotes> data,
    required this.template,
  }) : super(data: data);

  factory ChannelGlobalEmotesResponse.fromJson(Map<String, dynamic> json) =>
      ChannelGlobalEmotesResponse(
        data: _parseObjects(json, TwitchGlobalEmotes.fromJson),
        template: json['template'] as String,
      );
}
