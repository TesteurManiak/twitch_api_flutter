import 'dart:async';

import 'package:dio/dio.dart';
import 'package:twitch_api/src/exceptions/twitch_api_exception.dart';
import 'package:twitch_api/src/models/twitch_bits_leaderboard.dart';
import 'package:twitch_api/src/models/twitch_broadcaster_subscription.dart';
import 'package:twitch_api/src/models/twitch_channel_editor.dart';
import 'package:twitch_api/src/models/twitch_channel_info.dart';
import 'package:twitch_api/src/models/twitch_cheermote.dart';
import 'package:twitch_api/src/models/twitch_custom_reward_redemption.dart';
import 'package:twitch_api/src/models/twitch_extension_transaction.dart';
import 'package:twitch_api/src/models/twitch_game.dart';
import 'package:twitch_api/src/models/twitch_game_analytic.dart';
import 'package:twitch_api/src/models/twitch_response.dart';
import 'package:twitch_api/src/models/twitch_start_commercial.dart';
import 'package:twitch_api/src/models/twitch_time_period.dart';
import 'package:twitch_api/src/models/twitch_token.dart';
import 'package:twitch_api/src/models/twitch_user.dart';
import 'package:twitch_api/src/providers/twitch_dio_provider.dart';
import 'package:twitch_api/src/providers/twitch_http_client.dart';
import 'package:twitch_api/twitch_api.dart';
import 'extensions/enum_extensions.dart';

import 'models/twitch_api_scopes.dart';

class TwitchClient {
  static const basePath = 'helix';
  static const oauthPath = 'oauth2';
  static const authPath = 'authorize';

  static final baseUrl = Uri(scheme: 'https', host: 'api.twitch.tv');
  static final oauth2Url = Uri(scheme: 'https', host: 'id.twitch.tv');

  final String redirectUri;
  final String clientId;
  final TwitchHttpClient twitchHttpClient;

  Uri authorizeUri(List<TwitchApiScope> scopes) {
    final scopesSet = <String>{}
      ..add('viewing_activity_read')
      ..addAll(scopes.map((e) => e.string).toSet());
    return oauth2Url.replace(
      pathSegments: <String>[oauthPath, authPath],
      queryParameters: {
        'response_type': 'token',
        'client_id': clientId,
        'redirect_uri': redirectUri,
        'scope': scopesSet.join(' '),
      },
    );
  }

  /// By default the `twitchHttpClient` will be a [TwitchDioProvider].
  TwitchClient({
    required this.clientId,
    required this.redirectUri,
    TwitchHttpClient? twitchHttpClient,
    TwitchToken? token,
  }) : twitchHttpClient = twitchHttpClient ??
            TwitchDioProvider(clientId: clientId, dio: Dio()) {
    if (token != null) {
      initializeToken(token);
    }
  }

  @Deprecated('Use [twitchHttpClient.twitchToken]')
  TwitchToken? get accessToken => twitchHttpClient.twitchToken;

  @Deprecated('Use [twitchHttpClient.validateToken()]')
  Future<TwitchToken?> validateToken() => twitchHttpClient.validateToken();

  /// Method to initialize the token the first time after connection.
  ///
  /// [twitchToken]: Token obtained with the first connection.
  void initializeToken(TwitchToken twitchToken) =>
      twitchHttpClient.initializeToken(twitchToken);

  /// Starts a commercial on a specified channel.
  ///
  /// Required scope: `TwitchApiScope.channelEditCommercial`
  ///
  /// `broadcasterId`: ID of the channel requesting a commercial.
  ///
  /// `length`: Desired length of the commercial in seconds. Valid options are
  /// `30, 60, 90, 120, 150, 180`.
  Future<TwitchResponse<TwitchStartCommercial>> startCommercial({
    required String broadcasterId,
    required int length,
  }) async {
    assert(broadcasterId == twitchHttpClient.twitchToken.userId);
    assert(length >= 30 && length <= 180 && length % 30 == 0);
    try {
      final data = await twitchHttpClient.postCall<Map<String, dynamic>>(
        ['channels', 'commercial'],
        {'broadcaster_id': broadcasterId, 'length': length.toString()},
      );
      return TwitchResponse.startCommercial(data!);
    } catch (e) {
      throw TwitchStartCommercialException(e.toString());
    }
  }

  /// Gets a URL that Extension developers can use to download analytics reports
  /// (CSV files) for their Extensions. The URL is valid for 5 minutes.
  ///
  /// If you specify a future date, the response will be “Report Not Found For
  /// Date Range.” If you leave both [startedAt] and [endedAt] blank, the API
  /// returns the most recent date of data.
  ///
  /// Required scope: `TwitchApiScope.analyticsReadExtensions`
  ///
  /// [after]: Cursor for forward pagination: tells the server where to start
  /// fetching the next set of results, in a multi-page response. This applies
  /// only to queries without [extensionId]. If an [extensionId] is specified,
  /// it supersedes any cursor/offset combinations. The cursor value specified
  /// here is from the `pagination` response field of a prior query.
  ///
  /// [endedAt]: Ending date/time for returned reports, in RFC3339 format with
  /// the hours, minutes, and seconds zeroed out and the UTC timezone:
  /// `YYYY-MM-DDT00:00:00Z`. The report covers the entire ending date; e.g., if
  /// `2018-05-01T00:00:00Z` is specified, the report covers up to
  /// `2018-05-01T23:59:59Z`.
  /// If this is provided, [startedAt] also must be specified. If [endedAt] is
  /// later than the default end date, the default date is used. Default: 1-2
  /// days before the request was issued (depending on report availability).
  ///
  /// [extensionId]: Client ID value assigned to the extension when it is
  /// created. If this is specified, the returned URL points to an analytics
  /// report for just the specified extension. If this is not specified, the
  /// response includes multiple URLs (paginated), pointing to separate
  /// analytics reports for each of the authenticated user’s Extensions.
  ///
  /// [first]: Maximum number of objects to return. Maximum: 100. Default: 20.
  ///
  /// [startedAt]: Starting date/time for returned reports, in RFC3339 format
  /// with the hours, minutes, and seconds zeroed out and the UTC timezone:
  /// `YYYY-MM-DDT00:00:00Z`. This must be on or after January 31, 2018.
  /// If this is provided, [endedAt] also must be specified. If [startedAt] is
  /// earlier than the default start date, the default date is used.
  /// The file contains one row of data per day.
  ///
  /// [type]: Type of analytics report that is returned. Currently, this field
  /// has no affect on the response as there is only one report type. If
  /// additional types were added, using this field would return only the URL
  /// for the specified report. Limit: 1. Valid values: `"overview_v2"`.
  Future<TwitchResponse<TwitchExtensionAnalytic>> getExtensionAnalytics({
    String? after,
    String? endedAt,
    String? extensionId,
    int first = 20,
    String? startedAt,
    String? type,
  }) async {
    assert((endedAt == null && startedAt == null) ||
        (endedAt != null && startedAt != null));
    assert(first < 101 && first > 0);

    final queryParameters = <String, dynamic>{'first': first.toString()};
    if (after != null) queryParameters['after'] = after;
    if (endedAt != null && startedAt != null) {
      queryParameters['ended_at'] = endedAt;
      queryParameters['started_at'] = startedAt;
    }
    if (extensionId != null) queryParameters['extension_id'] = extensionId;
    if (type != null) queryParameters['type'] = type;

    try {
      final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
        ['analytics', 'extensions'],
        queryParameters: queryParameters,
      );
      return TwitchResponse<TwitchExtensionAnalytic>.extensionAnalytics(data!);
    } catch (e) {
      throw TwitchGetExtensionAnalyticsException(e.toString());
    }
  }

  /// Gets a URL that game developers can use to download analytics reports
  /// (CSV files) for their games. The URL is valid for 5 minutes.
  ///
  /// Required scope: [TwitchApiScope.analyticsReadGames]
  ///
  /// `after`: Cursor for forward pagination: tells the server where to start
  /// fetching the next set of results, in a multi-page response. This applies
  /// only to queries without `gameId`. If a `gameId` is specified, it supersedes
  /// any cursor/offset combinations. The cursor value specified here is from
  /// the `pagination` response field of a prior query.
  Future<TwitchResponse<TwitchGameAnalytic>> getGameAnalytics({
    String? after,
    String? endedAt,
    int first = 20,
    String? gameId,
    String? startedAt,
    String? type,
  }) async {
    assert((endedAt == null && startedAt == null) ||
        (endedAt != null && startedAt != null));
    assert(first < 101 && first > 0);

    final queryParameters = <String, dynamic>{'first': first.toString()};
    if (after != null && gameId == null) queryParameters['after'] = after;
    if (endedAt != null && startedAt != null) {
      queryParameters['ended_at'] = endedAt;
      queryParameters['started_at'] = startedAt;
    }
    if (gameId != null) queryParameters['game_id'] = gameId;
    if (type != null) queryParameters['type'] = type;

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['analytics', 'games'],
      queryParameters: queryParameters,
    );
    return TwitchResponse<TwitchGameAnalytic>.gameAnalytics(data!);
  }

  /// Gets a ranked list of Bits leaderboard information for an authorized
  /// broadcaster.
  ///
  /// Required scope: [TwitchApiScop.bitsRead]
  ///
  /// `count`: Number of results to be returned. Maximum: 100. Default: 10.
  ///
  /// `period`: Time period over which data is aggregated (PST time zone).
  /// Default: [TwitchTimePeriod.all].
  ///
  /// `startedAt`: Timestamp for the period over which the returned data is
  /// aggregated. Must be in RFC 3339 format. If this is not provided, data is
  /// aggregated over the current period; e.g., the current day/week/month/year.
  /// This value is ignored if `period` is [TwitchTimePeriod.all].
  ///
  /// `userId`: ID of the user whose results are returned; i.e., the person who
  /// paid for the Bits. As long as `count` is greater than 1, the returned data
  /// includes additional users, with Bits amounts above and below the user
  /// specified by `userId`. If `userId` is not provided, the endpoint returns
  /// the Bits leaderboard data across top users (subject to the value of
  /// `count`).
  Future<TwitchResponse<TwitchBitsLeaderboard>> getBitsLeaderboard({
    int count = 10,
    TwitchTimePeriod period = TwitchTimePeriod.all,
    String? startedAt,
    String? userId,
  }) async {
    assert(count > 0 && count < 101);

    final queryParameters = <String, dynamic>{
      'count': count.toString(),
      'period': period.string,
    };
    if (startedAt != null) queryParameters['started_at'] = startedAt;
    if (userId != null) queryParameters['user_id'] = userId;

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['bits', 'leaderboard'],
      queryParameters: queryParameters,
    );
    return TwitchResponse.bitsLeaderboard(data!);
  }

  /// Gets information about one or more specified Twitch users. Users are
  /// identified by optional user IDs and/or login name. If neither a user ID
  /// nor a login name is specified, the user is looked up by Bearer token.
  ///
  /// Required scrope: [TwitchApiScope.userReadEmail]
  ///
  /// `ids`: User ID. Multiple user IDs can be specified. Limit: 100.
  ///
  /// `logins`: User login name. Multiple login names can be specified. Limit:
  /// 100.
  ///
  /// Note: The limit of 100 IDs and login names is the total limit. You can
  /// request, for example, 50 of each or 100 of one of them. You cannot request
  /// 100 of both.
  Future<TwitchResponse<TwitchUser>> getUsers({
    List<String> ids = const [],
    List<String> logins = const [],
  }) async {
    assert(ids.length < 101);
    assert(logins.length < 101);
    assert(ids.length + logins.length < 101);

    final queryParameters = <String, dynamic>{};
    if (ids.isNotEmpty) queryParameters['id'] = ids.join(',');
    if (logins.isNotEmpty) queryParameters['login'] = logins.join(',');

    final data = await twitchHttpClient
        .getCall(['users'], queryParameters: queryParameters);
    return TwitchResponse.users(data as Map<String, dynamic>);
  }

  /// Gets information on follow relationships between two Twitch users. This
  /// can return information like “who is qotrok following,” “who is following
  /// qotrok,” or “is user X following user Y.” Information returned is sorted
  /// in order, most recent follow first.
  ///
  /// At minimum, `fromId` or `toId` must be provided for a query to be valid.
  Future<TwitchResponse<TwitchUserFollow>> getUsersFollows({
    String? after,
    int first = 20,
    String? fromId,
    String? toId,
  }) async {
    assert(first < 101 && first > 0);
    assert(
      fromId != null || toId != null,
      'At minimum, fromId or toId must be provided for a query to be valid.',
    );

    final queryParameters = <String, dynamic>{'first': first.toString()};
    if (after != null) queryParameters['after'] = after;
    if (fromId != null) queryParameters['from_id'] = fromId;
    if (toId != null) queryParameters['to_id'] = toId;

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['users', 'follows'],
      queryParameters: queryParameters,
    );
    return TwitchResponse.usersFollows(data!);
  }

  /// Gets games sorted by number of current viewers on Twitch, most popular
  /// first.
  Future<TwitchResponse<TwitchGame>> getTopGames({
    String? after,
    String? before,
    int first = 20,
  }) async {
    assert(first < 101 && first > 0);

    final queryParameters = <String, dynamic>{'first': first.toString()};
    if (after != null) queryParameters['after'] = after;
    if (before != null) queryParameters['before'] = before;

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['games', 'top'],
      queryParameters: queryParameters,
    );
    return TwitchResponse.games(data!);
  }

  /// Gets game information by game ID or name.
  ///
  /// For a query to be valid, [names] and/or [ids] must be specified.
  ///
  /// [ids]: Game IDs. At most 100 id values can be specified.
  ///
  /// [names]: Game names. The name must be an exact match. For example,
  /// “Pokemon” will not return a list of Pokemon games; instead, query any
  /// specific Pokemon games in which you are interested. At most 100 name
  /// values can be specified.
  Future<TwitchResponse<TwitchGame>> getGames(
      {List<String> ids = const [], List<String> names = const []}) async {
    assert((ids.isNotEmpty) || (names.isNotEmpty));
    assert(ids.length < 101);
    assert(names.length < 101);

    final queryParameters = <String, dynamic>{};
    if (ids.isNotEmpty) queryParameters['id'] = ids.join(',');
    if (names.isNotEmpty) queryParameters['name'] = names.join(',');

    final data = await twitchHttpClient
        .getCall(['games'], queryParameters: queryParameters);
    return TwitchResponse.games(data as Map<String, dynamic>);
  }

  /// Gets channel information for users.
  ///
  /// [broadcasterId]: ID of the channel to be updated.
  Future<TwitchResponse<TwitchChannelInfo>> getChannelInformations(
      String broadcasterId) async {
    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['channels'],
      queryParameters: {'broadcaster_id': broadcasterId},
    );
    return TwitchResponse.channelInformations(data!);
  }

  /// Returns a list of games or categories that match the query via name either
  /// entirely or partially.
  ///
  /// [query]: URl encoded search query
  ///
  /// [first]: Maximum number of objects to return. Maximum: 100. Default: 200.
  ///
  /// [after]: Cursor for forward pagination: tells the server where to start
  /// fetching the next set of results, in a multi-page response. The cursor
  /// value specified here is from the `pagination` response field of a prior
  /// query.
  Future<TwitchResponse<TwitchGame>> searchCategories({
    required String query,
    int first = 20,
    String? after,
  }) async {
    assert(first > 0 && first < 101);

    final queryParameters = <String, dynamic>{
      'query': query,
      'first': first.toString(),
    };
    if (after != null) queryParameters['after'] = after;
    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['search', 'categories'],
      queryParameters: queryParameters,
    );
    return TwitchResponse.games(data!);
  }

  /// Returns a list of channels (users who have streamed within the past 6
  /// months) that match the query via channel name or description either
  /// entirely or partially. Results include both live and offline channels.
  /// Online channels will have additional metadata (e.g. `started_at`,
  /// `tag_ids`).
  ///
  /// `query`: URl encoded search query
  ///
  /// `first`: Maximum number of objects to return. Maximum: 100 Default: 20
  ///
  /// `after`: Tells the server where to start fetching the next set of results,
  /// in a multi-page response. The cursor value specified here is from the
  /// `pagination` response field of a prior query.
  ///
  /// `liveOnly`: Filter results for live streams only. Default: `false`
  Future<TwitchResponse<TwitchSearchChannel>> searchChannels({
    required String query,
    int first = 20,
    String? after,
    bool liveOnly = false,
  }) async {
    assert(first > 0 && first < 101);

    final queryParameters = <String, dynamic>{
      'query': query,
      'first': first.toString(),
      'live_only': liveOnly.toString(),
    };
    if (after != null && after.isNotEmpty) queryParameters['after'] = after;

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['search', 'channels'],
      queryParameters: queryParameters,
    );
    return TwitchResponse<TwitchSearchChannel>.searchChannels(data!);
  }

  /// Gets information about active streams. Streams are returned sorted by
  /// number of current viewers, in descending order. Across multiple pages of
  /// results, there may be duplicate or missing streams, as viewers join and
  /// leave streams.
  ///
  /// `after`: Tells the server where to start fetching the next set of results,
  /// in a multi-page response. The cursor value specified here is from the
  /// `pagination` response field of a prior query.
  ///
  /// `before`: Tells the server where to start fetching the next set of
  /// results, in a multi-page response. The cursor value specified here is from
  /// the `pagination` response field of a prior query.
  ///
  /// `first`: Maximum number of objects to return. Maximum: 100. Default: 20.
  ///
  /// `gameIds`: Returns streams broadcasting specified game IDs. You can
  /// specify up to 100 IDs.
  ///
  /// `languages`: Stream language. You can specify up to 100 languages. A
  /// language value must be either the [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
  /// two-letter code for a [supported stream language](https://help.twitch.tv/s/article/languages-on-twitch?language=en_US#streamlang)
  /// or “other”.
  ///
  /// `userIds`: Returns streams broadcast by one or more specified user IDs.
  /// You can specify up to 100 IDs.
  ///
  /// `userLogins`: Returns streams broadcast by one or more specified user
  /// login names. You can specify up to 100 names.
  Future<TwitchResponse<TwitchStreamInfo>> getStreams({
    String? after,
    String? before,
    int first = 20,
    List<String> gameIds = const [],
    List<String> languages = const [],
    List<String> userIds = const [],
    List<String> userLogins = const [],
  }) async {
    assert(first > 0 && first < 101);
    assert(gameIds.length < 101);
    assert(languages.length < 101);
    assert(userIds.length < 101);
    assert(userLogins.length < 101);

    final queryParameters = <String, dynamic>{'first': first.toString()};
    if (after != null && after.isNotEmpty) queryParameters['after'] = after;
    if (before != null && before.isNotEmpty) queryParameters['before'] = before;
    if (gameIds.isNotEmpty) queryParameters['game_id'] = gameIds.join(',');
    if (languages.isNotEmpty) {
      queryParameters['languages'] = languages.join(',');
    }
    if (userIds.isNotEmpty) queryParameters['user_id'] = userIds.join(',');
    if (userLogins.isNotEmpty) {
      queryParameters['user_login'] = userLogins.join(',');
    }

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['streams'],
      queryParameters: queryParameters,
    );
    return TwitchResponse.streamsInfo(data!);
  }

  /// Get all of a broadcaster’s subscriptions.
  ///
  /// Required scope: [TwitchApiScope.channelReadSubscriptions]
  ///
  /// [userIds]: Filters results to only include potential subscriptions made by
  /// the provided user IDs. Accepts up to 100 values.
  ///
  /// [after]: tells the server where to start fetching the next set of results
  /// in a multi-page response. This applies only to queries without [userIds].
  /// If a [userIds] is specified, it supersedes any cursor/offset combinations.
  /// The cursor value specified here is from the `pagination` response field of
  /// a prior query.
  ///
  /// [first]: Maximum number of objects to return. Maximum: 100. Default: 20.
  Future<TwitchResponse<TwitchBroadcasterSubscription>>
      getBroadcasterSubscriptions({
    List<String> userIds = const [],
    String? after,
    int first = 20,
  }) async {
    assert(first > 0 && first < 101);
    assert(userIds.length < 101);

    final queryParameters = <String, dynamic>{
      'broadcaster_id': twitchHttpClient.twitchToken.userId,
      'first': first.toString(),
    };
    if (userIds.isNotEmpty) queryParameters['user_id'] = userIds.join(',');
    if (after != null) queryParameters['after'] = after;

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['subscriptions'],
      queryParameters: queryParameters,
    );
    return TwitchResponse<
        TwitchBroadcasterSubscription>.broadcasterSubscriptions(data!);
  }

  /// Retrieves the list of available Cheermotes, animated emotes to which
  /// viewers can assign Bits, to cheer in chat. Cheermotes returned are
  /// available throughout Twitch, in all Bits-enabled channels.
  ///
  /// `broadcasterId`: ID for the broadcaster who might own specialized
  /// Cheermotes.
  Future<TwitchResponse<TwitchCheermote>> getCheermotes(
      {String? broadcasterId}) async {
    final queryParameters = <String, dynamic>{};
    if (broadcasterId != null) {
      queryParameters['broadcaster_id'] = broadcasterId;
    }
    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['bits', 'cheermotes'],
      queryParameters: queryParameters,
    );
    return TwitchResponse.cheermotes(data!);
  }

  /// Allows extension back end servers to fetch a list of transactions that
  /// have occurred for their extension across all of Twitch. A transaction is a
  /// record of a user exchanging Bits for an in-Extension digital good.
  ///
  /// `extensionId`: ID of the extension to list transactions for. Maximum: 1
  ///
  /// `id`: Transaction IDs to look up. Can include multiple to fetch multiple
  /// transactions in a single request.
  /// ```
  /// /helix/extensions/transactions?extension_id=1234&id=1&id=2&id=3
  /// ```
  ///
  /// `after`: The cursor used to fetch the next page of data. This only applies
  /// to queries without ID. If an ID is specified, it supersedes the cursor.
  ///
  /// `first`: Maximum number of objects to return. Maximum: 100. Default: 20
  Future<TwitchResponse<TwitchExtensionTransaction>> getExtensionTransaction({
    required String extensionId,
    String? id,
    String? after,
    int first = 20,
  }) async {
    assert(first > 0 && first < 101);

    final queryParameters = <String, dynamic>{
      'extension_id': extensionId,
      'first': first.toString(),
    };
    if (id != null) queryParameters['id'] = id;
    if (after != null) queryParameters['after'] = after;

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['extensions', 'transactions'],
      queryParameters: queryParameters,
    );
    return TwitchResponse.extensionTransaction(data!);
  }

  /// Modifies channel information for users.
  ///
  /// Required scope: [TwitchApiScope.channelManageBroadcast]
  ///
  /// `broadcasterId`: ID of the channel to be updated
  ///
  /// At least one of those parameter must be provided:
  ///
  /// `gameId`: The current game ID being played on the channel. Use `"0"` or
  /// `""` (an empty string) to unset the game.
  ///
  /// `broadcasterLanguage`: The language of the channel. A language value must
  /// be either the ISO 639-1 two-letter code for a supported stream language or
  /// "other".
  ///
  /// `title`: The title of the stream. Value must not be an empty string.
  ///
  /// `delay`: Stream delay in seconds. Stream delay is a Twitch Partner
  /// feature; trying to set this value for other account types will return a
  /// 400 error.
  Future<void> modifyChannelinformation({
    required String broadcasterId,
    String? gameId,
    String? broadcasterLanguage,
    String? title,
    int? delay,
  }) {
    assert(
      gameId != null ||
          broadcasterLanguage != null ||
          title != null ||
          delay != null,
      'At least one optional parameter must be provided.',
    );
    if (broadcasterLanguage != null) {
      assert(broadcasterLanguage == 'other' || broadcasterLanguage.length == 2);
    }
    if (title != null) {
      assert(title.isNotEmpty, 'The title must not be an empty string.');
    }
    if (delay != null) assert(delay > 0);

    final data = <String, dynamic>{};
    if (gameId != null) data['game_id'] = gameId;
    if (broadcasterLanguage != null) {
      data['broadcaster_language'] = broadcasterLanguage;
    }
    if (title != null) data['title'] = title;
    if (delay != null) data['delay'] = delay;

    return twitchHttpClient.patchCall(
      ['channels'],
      data,
      queryParameters: {'broadcaster_id': broadcasterId},
    );
  }

  /// Gets a list of users who have editor permissions for a specific channel.
  ///
  /// Required scope: [TwitchApiScope.channelReadEditors]
  ///
  /// `broadcasterId`: Broadcaster’s user ID associated with the channel.
  Future<TwitchResponse<TwitchChannelEditor>> getChannelEditors({
    required String broadcasterId,
  }) async {
    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['channels', 'editors'],
      queryParameters: {'broadcaster_id': broadcasterId},
    );
    return TwitchResponse.channelEditor(data!);
  }

  /// Creates a Custom Reward on a channel.
  ///
  /// `title`: The title of the reward.
  ///
  /// `cost`: The cost of the reward.
  ///
  /// `prompt`: The prompt for the viewer when redeeming the reward.
  ///
  /// `isEnabled`: Is the reward currently enabled, if false the reward won’t
  /// show up to viewers.
  ///
  /// `backgroundColor`: Custom background color for the reward. Format: Hex
  /// with # prefix. Example: `#00E5CB`.
  ///
  /// `isUserInputRequired`: Does the user need to enter information when
  /// redeeming the reward.
  ///
  /// `maxPerStream`: The maximum number per stream if enabled.
  ///
  /// `maxPerUserPerStream`: The maximum number per user per stream if enabled.
  ///
  /// `globalCooldownSeconds`: The cooldown in seconds if enabled.
  ///
  /// `shouldRedemptionsSkipQueue`: Should redemptions be set to FULFILLED
  /// status immediately when redeemed and skip the request queue instead of the
  /// normal UNFULFILLED status.
  Future<TwitchResponse<TwitchCustomReward>> createCustomRewards({
    required String title,
    required int cost,
    String? prompt,
    bool isEnabled = true,
    String? backgroundColor,
    bool isUserInputRequired = false,
    int? maxPerStream,
    int? maxPerUserPerStream,
    int? globalCooldownSeconds,
    bool shouldRedemptionsSkipQueue = false,
  }) async {
    final isMaxPerStreamEnabled = maxPerStream != null;
    final isMaxPerUserPerStreamEnabled = maxPerUserPerStream != null;
    final isGlobalCooldownEnabled = globalCooldownSeconds != null;
    final body = <String, dynamic>{
      'title': title,
      'cost': cost,
      'is_enabled': isEnabled,
      'is_user_input_required': isUserInputRequired,
      'is_max_per_stream_enabled': isMaxPerStreamEnabled,
      'is_max_per_user_per_stream_enabled': isMaxPerUserPerStreamEnabled,
      'is_global_cooldown_enabled': isGlobalCooldownEnabled,
      'should_redemptions_skip_request_queue': shouldRedemptionsSkipQueue,
    };
    if (prompt != null) body['prompt'] = prompt;
    if (backgroundColor != null) body['background_color'] = backgroundColor;
    if (maxPerStream != null) body['max_per_stream'] = maxPerStream;
    if (maxPerUserPerStream != null) {
      body['max_per_user_per_stream'] = maxPerUserPerStream;
    }
    if (globalCooldownSeconds != null) {
      body['global_cooldown_seconds'] = globalCooldownSeconds;
    }
    final data = await twitchHttpClient.postCall<Map<String, dynamic>>(
      ['channel_points', 'custom_rewards'],
      body,
      queryParameters: {'broadcaster_id': twitchHttpClient.twitchToken.userId},
    );
    return TwitchResponse.customReward(data!);
  }

  /// Deletes a Custom Reward on a channel.
  ///
  /// `id`: ID of the Custom Reward to delete, must match a Custom Reward on
  /// `broadcasterId`’s channel.
  Future<String> deleteCustomReward({required String id}) async {
    final data = await twitchHttpClient.deleteCall<String>(
      ['channel_points', 'custom_rewards'],
      queryParameters: {
        'broadcaster_id': twitchHttpClient.twitchToken.userId,
        'id': id,
      },
    );
    return data!;
  }

  /// Returns a list of Custom Reward objects for the Custom Rewards on a channel.
  ///
  /// Required scope: [TwitchApiScope.channelReadRedemptions]
  ///
  /// `ids`: When used, this parameter filters the results and only returns
  /// reward objects for the Custom Rewards with matching ID. Maximum length: 50
  ///
  /// `onlyManageableRewards`: When set to true, only returns Custom Rewards that
  /// the calling `clientId` can manage. Default: false.
  Future<TwitchResponse<TwitchCustomReward>> getCustomRewards({
    List<String> ids = const [],
    bool onlyManageableRewards = false,
  }) async {
    assert(ids.length <= 50, 'ids.length cannot exceed 50');

    final queryParameters = <String, dynamic>{
      'broadcaster_id': twitchHttpClient.twitchToken.userId,
      'only_manageable_rewards': onlyManageableRewards,
    };
    if (ids.isNotEmpty) queryParameters['id'] = ids.join(',');

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['channel_points', 'custom_rewards'],
      queryParameters: queryParameters,
    );
    return TwitchResponse.customReward(data!);
  }

  /// Returns Custom Reward Redemption objects for a Custom Reward on a channel
  /// that was created by the same `clientId`.
  ///
  /// Developers only have access to get and update redemptions for the rewards
  /// created programmatically by the same `clientId`.
  ///
  /// Required scope: [TwitchApiScope.channelReadRedemptions]
  ///
  /// `rewardId`: When ID is not provided, this parameter returns paginated
  /// Custom Reward Redemption objects for redemptions of the Custom Reward with
  /// ID `rewardId`.
  ///
  /// `ids`: When used, this param filters the results and only returns Custom
  /// Reward Redemption objects for the redemptions with matching ID. Maximum:
  /// 50
  ///
  /// `status`: When `id` is not provided, this param is required and filters
  /// the paginated Custom Reward Redemption objects for redemptions with the
  /// matching status.
  ///
  /// `sort`: Sort order of redemptions returned when getting the paginated
  /// Custom Reward Redemption objects for a reward.
  ///
  /// `after`: Cursor for forward pagination: tells the server where to start
  /// fetching the next set of results, in a multi-page response. This applies
  /// only to queries without ID. If an ID is specified, it supersedes any
  /// cursor/offset combinations. The cursor value specified here is from the
  /// pagination response field of a prior query.
  ///
  /// `first`: Number of results to be returned when getting the paginated
  /// Custom Reward Redemption objects for a reward. Limit: 50.
  Future<TwitchResponse<TwitchCustomRewardRedemption>>
      getCustomRewardRedemptions({
    required String rewardId,
    List<String> ids = const [],
    TwitchRewardRedemptionStatus? status,
    TwitchRedemptionSort sort = TwitchRedemptionSort.oldest,
    String? after,
    int first = 20,
  }) async {
    assert(ids.length <= 50, 'ids.length cannot exceed 50');
    assert(ids.isNotEmpty || status != null);
    assert(first <= 50 && first >= 0, 'first cannot exceed 50');

    final queryParameters = <String, dynamic>{
      'broadcaster_id': twitchHttpClient.twitchToken.userId,
      'reward_id': rewardId,
      'sort': sort.string,
      'first': first.toString(),
    };
    if (ids.isNotEmpty) queryParameters['id'] = ids.join(',');
    if (status != null) queryParameters['status'] = status.string;
    if (after != null) queryParameters['after'] = after;

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['channel_points', 'custom_rewards', 'redemptions'],
      queryParameters: queryParameters,
    );
    return TwitchResponse.customRewardRedemption(data!);
  }

  /// Updates a Custom Reward created on a channel.
  ///
  /// The Custom Reward specified by `id` must have been created by the
  /// [clientId] attached to the user OAuth token.
  ///
  /// Required scope: [TwitchApiScope.channelManageRedemptions]
  ///
  /// `broadcasterId`: Provided `broadcasterId` must match the user_id in the
  /// user OAuth token.
  ///
  /// `id`: ID of the Custom Reward to update. Must match a Custom Reward on the
  /// channel of the `broadcasterId`.
  ///
  /// `title`: The title of the reward.
  ///
  /// `prompt`: The prompt for the viewer when they are redeeming the reward.
  ///
  /// `cost`: The cost of the reward.
  ///
  /// `backgroundColor`: Custom background color for the reward as a hexadecimal
  /// value. Example: `#00E5CB`.
  ///
  /// `isEnabled`: Is the reward currently enabled, if false the reward won’t
  /// show up to viewers.
  ///
  /// `isUserInputRequired`: Does the user need to enter information when
  /// redeeming the reward.
  ///
  /// `isMaxPerStreamEnabled`: Whether a maximum per stream is enabled. Required
  /// when any value of `maxPerStream` is included.
  ///
  /// `maxPerStream`: The maximum number per stream if enabled. Required when
  /// any value of `isMaxPerStreamEnabled` is included.
  ///
  /// `isMaxPerUserPerStreamEnabled`: Whether a maximum per user per stream is
  /// enabled. Required when any value of `maxPerUserPerStream` is included.
  ///
  /// `maxPerUserPerStream`: The maximum number per user per stream if enabled.
  /// Required when any value of `isMaxPerUserPerStreamEnabled` is included.
  ///
  /// `isGlobalCooldownEnabled`: Whether a global cooldown is enabled. Required
  /// when any value of `globalCooldownSeconds` is included.
  ///
  /// `globalCooldownSeconds`: The global cooldown in seconds if enabled.
  /// Required when any value of `isGlobalCooldownEnabled` is included.
  ///
  /// `isPaused`: Is the reward currently paused, if true viewers cannot redeem.
  ///
  /// `shouldRedemptionsSkipRequestQueue`: Should redemptions be set to
  /// FULFILLED status immediately when redeemed and skip the request queue
  /// instead of the normal UNFULFILLED status.
  Future<TwitchResponse<TwitchCustomReward>> updateCustomReward({
    required String broadcasterId,
    required String id,
    String? title,
    String? prompt,
    int? cost,
    String? backgroundColor,
    bool? isEnabled,
    bool? isUserInputRequired,
    bool? isMaxPerStreamEnabled,
    int? maxPerStream,
    bool? isMaxPerUserPerStreamEnabled,
    int? maxPerUserPerStream,
    bool? isGlobalCooldownEnabled,
    int? globalCooldownSeconds,
    bool? isPaused,
    bool? shouldRedemptionsSkipRequestQueue,
  }) async {
    assert(cost == null || cost >= 0);
    assert(
      isMaxPerStreamEnabled == null ||
          !isMaxPerStreamEnabled ||
          maxPerStream != null,
      'Required when any value of maxPerStream is included.',
    );
    assert(
      maxPerStream == null ||
          (maxPerStream >= 0 &&
              isMaxPerStreamEnabled != null &&
              isMaxPerStreamEnabled),
      'Required when any value of isMaxPerStreamEnabled is included.',
    );
    assert(
      isMaxPerUserPerStreamEnabled == null ||
          !isMaxPerUserPerStreamEnabled ||
          maxPerUserPerStream != null,
    );
    assert(
      maxPerUserPerStream == null ||
          (maxPerUserPerStream >= 0 &&
              isMaxPerUserPerStreamEnabled != null &&
              isMaxPerUserPerStreamEnabled),
      'Required when any value of isMaxPerUserPerStreamEnabled is included.',
    );
    assert(
      isGlobalCooldownEnabled == null ||
          !isGlobalCooldownEnabled ||
          globalCooldownSeconds != null,
      'Required when any value of globalCooldownSeconds is included.',
    );
    assert(
      globalCooldownSeconds == null ||
          (globalCooldownSeconds >= 0 &&
              isGlobalCooldownEnabled != null &&
              isGlobalCooldownEnabled),
      'Required when any value of isGlobalCooldownEnabled is included.',
    );

    final queryParameters = <String, dynamic>{
      'broadcaster_id': broadcasterId,
      'id': id,
    };

    final body = <String, dynamic>{};
    if (title != null) body['title'] = title;
    if (prompt != null) body['prompt'] = prompt;
    if (cost != null) body['cost'] = cost.toString();
    if (backgroundColor != null) body['background_color'] = backgroundColor;
    if (isEnabled != null) body['is_enabled'] = isEnabled;
    if (isUserInputRequired != null) {
      body['is_user_input_required'] = isUserInputRequired;
    }
    if (isMaxPerStreamEnabled != null) {
      body['is_max_per_stream_enabled'] = isMaxPerStreamEnabled;
    }
    if (maxPerStream != null) {
      body['max_per_stream'] = maxPerStream.toString();
    }
    if (isMaxPerUserPerStreamEnabled != null) {
      body['is_max_per_user_per_stream_enabled'] = isMaxPerUserPerStreamEnabled;
    }
    if (maxPerUserPerStream != null) {
      body['max_per_user_per_stream'] = maxPerUserPerStream.toString();
    }
    if (isGlobalCooldownEnabled != null) {
      body['is_global_cooldown_enabled'] = isGlobalCooldownEnabled;
    }
    if (globalCooldownSeconds != null) {
      body['global_cooldown_seconds'] = globalCooldownSeconds.toString();
    }
    if (isPaused != null) body['is_paused'] = isPaused;
    if (shouldRedemptionsSkipRequestQueue != null) {
      body['should_redemptions_skip_request_queue'] =
          shouldRedemptionsSkipRequestQueue;
    }

    final data = await twitchHttpClient.patchCall<Map<String, dynamic>>(
      ['channel_points', 'custom_rewards'],
      body,
      queryParameters: queryParameters,
    );

    return TwitchResponse.customReward(data!);
  }
}
