import 'dart:async';

import 'package:twitch_api/src/models/twitch_chat_badge.dart';
import 'package:twitch_api/src/models/twitch_chat_settings.dart';
import 'package:twitch_api/src/providers/twitch_dio_client.dart';
import 'package:twitch_api/twitch_api.dart';

class TwitchClient {
  /// By default the `twitchHttpClient` will be a [TwitchDioClient].
  TwitchClient({
    required this.clientId,
    required this.redirectUri,
    this.clientSecret = "",
    TwitchHttpClient? twitchHttpClient,
    TwitchToken? token,
    TwitchCode? code,
  }) : twitchHttpClient = twitchHttpClient ?? TwitchDioClient(clientId: clientId) {
    if (token != null) {
      initializeToken(token);
    }
    if (code != null) {
      initializeFromCode(code);
    }
  }

  static const basePath = 'helix';
  static const oauthPath = 'oauth2';
  static const authPath = 'authorize';

  static final baseUrl = Uri(scheme: 'https', host: 'api.twitch.tv');
  static final oauth2Url = Uri(scheme: 'https', host: 'id.twitch.tv');

  final String redirectUri;
  final String clientId;
  final String clientSecret;
  final TwitchHttpClient twitchHttpClient;

  /// Return the authorization Uri for the Twitch API.
  ///
  /// ```dart
  /// final client = TwitchClient(
  ///   clientId: '<your client id>',
  ///   redirectUri: '<your redirect uri>',
  /// );
  ///
  /// // https://id.twitch.tv/oauth2/authorize?client_id=<your client id>&redirect_uri=<your redirect uri>&response_type=token&scope=viewing_activity_read
  /// client.authorizeUri([]);
  /// ```
  Uri authorizeUri(List<TwitchApiScope> scopes) {
    final scopesSet = <String>{}
      ..add(TwitchApiScope.viewingActivityRead.string)
      ..addAll(scopes.map((e) => e.string));

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

  /// Return the authorization Uri for the Twitch API.
  ///
  /// ```dart
  /// final client = TwitchClient(
  ///   clientId: '<your client id>',
  ///   redirectUri: '<your redirect uri>',
  /// );
  ///  documentation : https://dev.twitch.tv/docs/authentication/getting-tokens-oauth/#authorization-code-grant-flow
  /// // https://id.twitch.tv/oauth2/authorize?client_id=<your client id>&redirect_uri=<your redirect uri>&response_type=code&scope=viewing_activity_read&state=< unique identifier >
  /// client.authorizeUri([]);
  /// ```
  Uri authorizeCodeUri(List<TwitchApiScope> scopes, String state) {
    final scopesSet = <String>{}
      ..add(TwitchApiScope.viewingActivityRead.string)
      ..addAll(scopes.map((e) => e.string));

    String actualState = state;
    if (actualState.isEmpty) {
      final int secondsSinceEpoch = DateTime.now().toUtc().millisecondsSinceEpoch ~/ 1000;
      actualState = secondsSinceEpoch.toString();
    }

    return oauth2Url.replace(
      pathSegments: <String>[oauthPath, authPath],
      queryParameters: {
        'response_type': 'code',
        'client_id': clientId,
        'redirect_uri': redirectUri,
        'scope': scopesSet.join(' '),
        'state': actualState,
      },
    );
  }

  /// Method to initialize the token the first time after connection.
  ///
  /// [twitchToken]: Token obtained with the first connection.
  void initializeToken(TwitchToken twitchToken) => twitchHttpClient.initializeToken(twitchToken);

  /// Method to initialize the code the first time after connection.
  ///
  /// [twitchToken]: Token obtained with the first connection.
  void initializeFromCode(TwitchCode twitchCode) => twitchHttpClient.initializeCode(twitchCode);

  /// Starts a commercial on a specified channel.
  ///
  /// Required scope: `TwitchApiScope.channelEditCommercial`
  ///
  /// `broadcasterId`: ID of the channel requesting a commercial.
  ///
  /// `length`: Desired length of the commercial in seconds. Valid options are
  /// `30, 60, 90, 120, 150, 180`.
  Future<StartCommercialResponse> startCommercial({
    required String broadcasterId,
    required int length,
  }) async {
    assert(length >= 30 && length <= 180 && length % 30 == 0);

    final data = await twitchHttpClient.postCall<Map<String, dynamic>>(
      ['channels', 'commercial'],
      {
        'broadcaster_id': broadcasterId,
        'length': length.toString(),
      },
    );
    return StartCommercialResponse.fromJson(data);
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
  Future<ExtensionAnalyticsResponse> getExtensionAnalytics({
    String? after,
    String? endedAt,
    String? extensionId,
    int first = 20,
    String? startedAt,
    String? type,
  }) async {
    assert(
      (endedAt == null && startedAt == null) || (endedAt != null && startedAt != null),
    );
    assert(first < 101 && first > 0);

    final queryParameters = <String, String>{
      'first': first.toString(),
      if (after != null) 'after': after,
      if (endedAt != null && startedAt != null) ...{
        'ended_at': endedAt,
        'started_at': startedAt,
      },
      if (extensionId != null) 'extension_id': extensionId,
      if (type != null) 'type': type,
    };

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['analytics', 'extensions'],
      queryParameters: queryParameters,
    );
    return ExtensionAnalyticsResponse.fromJson(data);
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
  Future<GameAnalyticsResponse> getGameAnalytics({
    String? after,
    String? endedAt,
    int first = 20,
    String? gameId,
    String? startedAt,
    String? type,
  }) async {
    assert(
      (endedAt == null && startedAt == null) || (endedAt != null && startedAt != null),
    );
    assert(first < 101 && first > 0);

    final queryParameters = <String, String?>{
      'first': first.toString(),
      if (after != null && gameId == null) 'after': after,
      if (endedAt != null && startedAt != null) ...{
        'ended_at': endedAt,
        'started_at': startedAt,
      },
      if (gameId != null) 'game_id': gameId,
      if (type != null) 'type': type,
    };

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['analytics', 'games'],
      queryParameters: queryParameters,
    );
    return GameAnalyticsResponse.fromJson(data);
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
  Future<BitsLeaderboardResponse> getBitsLeaderboard({
    int count = 10,
    TwitchTimePeriod period = TwitchTimePeriod.all,
    String? startedAt,
    String? userId,
  }) async {
    assert(count > 0 && count < 101);

    final queryParameters = <String, String>{
      'count': count.toString(),
      'period': period.name,
      if (startedAt != null) 'started_at': startedAt,
      if (userId != null) 'user_id': userId,
    };

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['bits', 'leaderboard'],
      queryParameters: queryParameters,
    );
    return BitsLeaderboardResponse.fromJson(data);
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
  Future<UsersResponse> getUsers({
    List<String> ids = const [],
    List<String> logins = const [],
  }) async {
    assert(ids.length < 101, 'You can only request 100 ids at a time');
    assert(logins.length < 101, 'You can only request 100 logins at a time');
    assert(
      (ids.length + logins.length) < 101,
      'You can only request 100 ids or logins at a time',
    );

    final queryParameters = <String, String>{
      if (ids.isNotEmpty) 'id': ids.join(','),
      if (logins.isNotEmpty) 'login': logins.join(','),
    };

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['users'],
      queryParameters: queryParameters,
    );
    return UsersResponse.fromJson(data);
  }

  /// Gets information on follow relationships between two Twitch users. This
  /// can return information like “who is qotrok following,” “who is following
  /// qotrok,” or “is user X following user Y.” Information returned is sorted
  /// in order, most recent follow first.
  ///
  /// At minimum, `fromId` or `toId` must be provided for a query to be valid.
  Future<UsersFollowsResponse> getUsersFollows({
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

    final queryParameters = <String, String>{
      'first': first.toString(),
      if (after != null) 'after': after,
      if (fromId != null) 'from_id': fromId,
      if (toId != null) 'to_id': toId,
    };

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['users', 'follows'],
      queryParameters: queryParameters,
    );
    return UsersFollowsResponse.fromJson(data);
  }

  /// Gets games sorted by number of current viewers on Twitch, most popular
  /// first.
  Future<TopGamesResponse> getTopGames({
    String? after,
    String? before,
    int first = 20,
  }) async {
    assert(first < 101 && first > 0);

    final queryParameters = <String, String>{
      'first': first.toString(),
      if (after != null) 'after': after,
      if (before != null) 'before': before,
    };

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['games', 'top'],
      queryParameters: queryParameters,
    );
    return TopGamesResponse.fromJson(data);
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
  Future<GamesResponse> getGames({
    List<String> ids = const [],
    List<String> names = const [],
  }) async {
    assert(ids.isNotEmpty || names.isNotEmpty);
    assert(ids.length < 101);
    assert(names.length < 101);

    final queryParameters = <String, String>{
      if (ids.isNotEmpty) 'id': ids.join(','),
      if (names.isNotEmpty) 'name': names.join(','),
    };

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['games'],
      queryParameters: queryParameters,
    );
    return GamesResponse.fromJson(data);
  }

  /// Gets channel information for users.
  ///
  /// [broadcasterId]: ID of the channel to be updated.
  Future<ChannelInformationResponse> getChannelInformations(
    String broadcasterId,
  ) async {
    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['channels'],
      queryParameters: {'broadcaster_id': broadcasterId},
    );
    return ChannelInformationResponse.fromJson(data);
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
  Future<SearchCategoriesResponse> searchCategories({
    required String query,
    int first = 20,
    String? after,
  }) async {
    assert(query.isNotEmpty);
    assert(first > 0 && first < 101);

    final queryParameters = <String, String>{
      'query': query,
      'first': first.toString(),
      if (after != null) 'after': after,
    };

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['search', 'categories'],
      queryParameters: queryParameters,
    );
    return SearchCategoriesResponse.fromJson(data);
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
  Future<SearchChannelsResponse> searchChannels({
    required String query,
    int first = 20,
    String? after,
    bool liveOnly = false,
  }) async {
    assert(first > 0 && first < 101);

    final queryParameters = <String, String>{
      'query': query,
      'first': first.toString(),
      'live_only': liveOnly.toString(),
      if (after != null) 'after': after,
    };

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['search', 'channels'],
      queryParameters: queryParameters,
    );
    return SearchChannelsResponse.fromJson(data);
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
  Future<StreamsResponse> getStreams({
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

    final queryParameters = <String, String>{
      'first': first.toString(),
      if (after != null) 'after': after,
      if (before != null) 'before': before,
      if (gameIds.isNotEmpty) 'game_id': gameIds.join(','),
      if (languages.isNotEmpty) 'language': languages.join(','),
      if (userIds.isNotEmpty) 'user_id': userIds.join(','),
      if (userLogins.isNotEmpty) 'user_login': userLogins.join(','),
    };

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['streams'],
      queryParameters: queryParameters,
    );
    return StreamsResponse.fromJson(data);
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
  Future<BroadcasterSubscriptionsResponse> getBroadcasterSubscriptions({
    required String broadcasterId,
    List<String> userIds = const [],
    String? after,
    int first = 20,
  }) async {
    assert(first > 0 && first < 101);
    assert(userIds.length < 101);

    final queryParameters = <String, String>{
      'broadcaster_id': broadcasterId,
      'first': first.toString(),
      if (userIds.isNotEmpty) 'user_id': userIds.join(','),
      if (after != null) 'after': after,
    };

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['subscriptions'],
      queryParameters: queryParameters,
    );
    return BroadcasterSubscriptionsResponse.fromJson(data);
  }

  /// Retrieves the list of available Cheermotes, animated emotes to which
  /// viewers can assign Bits, to cheer in chat. Cheermotes returned are
  /// available throughout Twitch, in all Bits-enabled channels.
  ///
  /// `broadcasterId`: ID for the broadcaster who might own specialized
  /// Cheermotes.
  Future<CheermotesResponse> getCheermotes({
    String? broadcasterId,
  }) async {
    final queryParameters = <String, String>{
      if (broadcasterId != null) 'broadcaster_id': broadcasterId,
    };
    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['bits', 'cheermotes'],
      queryParameters: queryParameters,
    );
    return CheermotesResponse.fromJson(data);
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
  Future<ExtensionTransactionsResponse> getExtensionTransactions({
    required String extensionId,
    String? id,
    String? after,
    int first = 20,
  }) async {
    assert(first > 0 && first < 101);

    final queryParameters = <String, String>{
      'extension_id': extensionId,
      'first': first.toString(),
      if (id != null) 'id': id,
      if (after != null) 'after': after,
    };

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['extensions', 'transactions'],
      queryParameters: queryParameters,
    );
    return ExtensionTransactionsResponse.fromJson(data);
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
      gameId != null || broadcasterLanguage != null || title != null || delay != null,
      'At least one optional parameter must be provided.',
    );
    assert(
      broadcasterLanguage == null || broadcasterLanguage == 'other' || broadcasterLanguage.length == 2,
    );
    assert(
      title == null || title.isNotEmpty,
      'The title must not be an empty string.',
    );
    assert(delay == null || delay > 0);

    final data = <String, Object>{
      if (gameId != null) 'game_id': gameId,
      if (broadcasterLanguage != null) 'broadcaster_language': broadcasterLanguage,
      if (title != null) 'title': title,
      if (delay != null) 'delay': delay,
    };

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
  Future<ChannelEditorsResponse> getChannelEditors({
    required String broadcasterId,
  }) async {
    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['channels', 'editors'],
      queryParameters: {'broadcaster_id': broadcasterId},
    );
    return ChannelEditorsResponse.fromJson(data);
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
  /// `shouldRedemptionsSkipQueue`: Should redemptions be set to
  /// [TwitchRewardRedemptionStatus.fulfilled] status immediately when redeemed
  /// and skip the request queue instead of the normal
  /// [TwitchRewardRedemptionStatus.unfulfilled] status.
  Future<CustomRewardResponse> createCustomRewards({
    required String broadcasterId,
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
    final body = <String, Object>{
      'title': title,
      'cost': cost,
      'is_enabled': isEnabled,
      'is_user_input_required': isUserInputRequired,
      'is_max_per_stream_enabled': isMaxPerStreamEnabled,
      'is_max_per_user_per_stream_enabled': isMaxPerUserPerStreamEnabled,
      'is_global_cooldown_enabled': isGlobalCooldownEnabled,
      'should_redemptions_skip_request_queue': shouldRedemptionsSkipQueue,
      if (prompt != null) 'prompt': prompt,
      if (backgroundColor != null) 'background_color': backgroundColor,
      if (maxPerStream != null) 'max_per_stream': maxPerStream,
      if (maxPerUserPerStream != null) 'max_per_user_per_stream': maxPerUserPerStream,
      if (globalCooldownSeconds != null) 'global_cooldown_seconds': globalCooldownSeconds,
    };

    final data = await twitchHttpClient.postCall<Map<String, dynamic>>(
      ['channel_points', 'custom_rewards'],
      body,
      queryParameters: <String, String>{
        'broadcaster_id': broadcasterId,
      },
    );
    return CustomRewardResponse.fromJson(data);
  }

  /// Deletes a Custom Reward on a channel.
  ///
  /// `rewardId`: ID of the Custom Reward to delete, must match a Custom Reward
  /// on [broadcasterId]’s channel.
  Future<String?> deleteCustomReward({
    required String broadcasterId,
    required String rewardId,
  }) async {
    final data = await twitchHttpClient.deleteCall<String>(
      ['channel_points', 'custom_rewards'],
      queryParameters: <String, String>{
        'broadcaster_id': broadcasterId,
        'id': rewardId,
      },
    );
    return data;
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
  Future<CustomRewardResponse> getCustomRewards({
    required String broadcasterId,
    List<String> ids = const [],
    bool onlyManageableRewards = false,
  }) async {
    assert(ids.length <= 50, 'ids.length cannot exceed 50');

    final queryParameters = <String, String>{
      'broadcaster_id': broadcasterId,
      'only_manageable_rewards': onlyManageableRewards.toString(),
      if (ids.isNotEmpty) 'id': ids.join(','),
    };

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['channel_points', 'custom_rewards'],
      queryParameters: queryParameters,
    );
    return CustomRewardResponse.fromJson(data);
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
  Future<CustomRewardRedemptionResponse> getCustomRewardRedemptions({
    required String broadcasterId,
    required String rewardId,
    List<String> ids = const [],
    TwitchRewardRedemptionStatus? status,
    TwitchRedemptionSort sort = TwitchRedemptionSort.oldest,
    String? after,
    int first = 20,
  }) async {
    assert(ids.length <= 50, 'ids.length cannot exceed 50');
    assert(
      ids.isNotEmpty || status != null,
      'If ids is not provided you need to define a status.',
    );
    assert(first <= 50 && first >= 0, 'first cannot exceed 50');

    final queryParameters = <String, String>{
      'broadcaster_id': broadcasterId,
      'reward_id': rewardId,
      'sort': sort.name.toUpperCase(),
      'first': first.toString(),
      if (ids.isNotEmpty) 'id': ids.join(','),
      if (status != null) 'status': status.name.toUpperCase(),
      if (after != null) 'after': after,
    };

    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['channel_points', 'custom_rewards', 'redemptions'],
      queryParameters: queryParameters,
    );
    return CustomRewardRedemptionResponse.fromJson(data);
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
  /// `cost`: The cost of the reward in channel points. The minimum is 1 point.
  ///
  /// `backgroundColor`: Custom background color for the reward as a hexadecimal
  /// value. Example: `#00E5CB`.
  ///
  /// `isEnabled`: Is the reward currently enabled, if false the reward won’t
  /// show up to viewers.
  ///
  /// `maxPerStream`: The maximum number per stream if enabled. The minimum
  /// value is 1.
  ///
  /// `maxPerUserPerStream`: The maximum number per user per stream if enabled.
  /// The minimum value is 1.
  ///
  /// `globalCooldownSeconds`: The global cooldown in seconds if enabled. The
  /// minimum value is 1; however, for it to be shown in the Twitch UX, the
  /// minimum value is 60.
  ///
  /// `isPaused`: Is the reward currently paused, if true viewers cannot redeem.
  ///
  /// `shouldRedemptionsSkipRequestQueue`: Should redemptions be set to
  /// [TwitchRewardRedemptionStatus.fulfilled] status immediately when redeemed
  /// and skip the request queue instead of the normal
  /// [TwitchRewardRedemptionStatus.unfulfilled] status.
  Future<CustomRewardResponse> updateCustomReward({
    required String broadcasterId,
    required String rewardId,
    String? title,
    String? prompt,
    int cost = 0,
    String? backgroundColor,
    bool? isEnabled,
    int maxPerStream = 0,
    int maxPerUserPerStream = 0,
    int globalCooldownSeconds = 0,
    bool? isPaused,
    bool? shouldRedemptionsSkipRequestQueue,
  }) async {
    final queryParameters = <String, String>{
      'broadcaster_id': broadcasterId,
      'id': rewardId,
    };

    final body = <String, dynamic>{
      if (title != null) 'title': title,
      if (prompt != null) 'prompt': prompt,
      if (cost > 0) 'cost': cost.toString(),
      if (backgroundColor != null) 'background_color': backgroundColor,
      if (isEnabled != null) 'is_enabled': isEnabled,
      if (prompt != null) 'is_user_input_required': true,
      if (maxPerStream > 0) 'is_max_per_stream_enabled': true,
      if (maxPerStream > 0) 'max_per_stream': maxPerStream.toString(),
      if (maxPerUserPerStream > 0) 'is_max_per_user_per_stream_enabled': true,
      if (maxPerUserPerStream > 0) 'max_per_user_per_stream': maxPerUserPerStream.toString(),
      if (globalCooldownSeconds > 0) 'is_global_cooldown_enabled': true,
      if (globalCooldownSeconds > 0) 'global_cooldown_seconds': globalCooldownSeconds.toString(),
      if (isPaused != null) 'is_paused': isPaused,
      if (shouldRedemptionsSkipRequestQueue != null) 'should_redemptions_skip_request_queue': shouldRedemptionsSkipRequestQueue,
    };

    final data = await twitchHttpClient.patchCall<Map<String, dynamic>>(
      ['channel_points', 'custom_rewards'],
      body,
      queryParameters: queryParameters,
    );

    return CustomRewardResponse.fromJson(data);
  }

  /// Updates the status of Custom Reward Redemption objects on a channel that
  /// are in the [TwitchRewardRedemptionStatus.unfulfilled] status.
  ///
  /// The Custom Reward Redemption specified by id must be for a Custom Reward
  /// created by the [clientId] attached to the user OAuth token.
  ///
  /// Required scope: [TwitchApiScope.channelManageRedemptions]
  ///
  /// `ids`: ID of the Custom Reward Redemption to update, must match a Custom
  /// Reward Redemption on `broadcasterId`’s channel. Maximum: 50.
  ///
  /// `broadcasterId`: Provided `broadcasterId` must match the `userId` in the
  /// user OAuth token.
  ///
  /// `rewardId`: ID of the Custom Reward the redemptions to be updated are for.
  ///
  /// `status`: The new status to set redemptions to. Can be either
  /// [TwitchRewardRedemptionStatus.fulfilled] or
  /// [TwitchRewardRedemptionStatus.canceled]. Updating to
  /// [TwitchRewardRedemptionStatus.canceled] will refund the user their Channel
  /// Points.
  Future<CustomRewardRedemptionResponse> updateRedemptionStatus({
    required List<String> ids,
    required String broadcasterId,
    required String rewardId,
    required TwitchRewardRedemptionStatus status,
  }) async {
    assert(ids.length <= 50 && ids.isNotEmpty);
    assert(
      status == TwitchRewardRedemptionStatus.fulfilled || status == TwitchRewardRedemptionStatus.canceled,
    );
    final body = <String, dynamic>{
      'status': status.name.toUpperCase(),
    };
    final data = await twitchHttpClient.patchCall<Map<String, dynamic>>(
      ['channel_points', 'custom_rewards', 'redemptions'],
      body,
      queryParameters: <String, String?>{
        'id': ids.join(','),
        'broadcaster_id': broadcasterId,
        'reward_id': rewardId,
      },
    );
    return CustomRewardRedemptionResponse.fromJson(data);
  }

  /// Gets all emotes that the specified Twitch channel created. Broadcasters
  /// create these custom emotes for users who subscribe to or follow the
  /// channel, or cheer Bits in the channel’s chat window. For information about
  /// the custom emotes, see [subscriber emotes]https://help.twitch.tv/s/article/subscriber-emote-guide?language=en_US),
  /// [Bits tier emotes](https://help.twitch.tv/s/article/custom-bit-badges-guide?language=bg#slots),
  /// and [follower emotes](https://blog.twitch.tv/en/2021/06/04/kicking-off-10-years-with-our-biggest-emote-update-ever/).
  ///
  /// `broadcasterId`: An ID that identifies the broadcaster to get the emotes
  /// from.
  Future<ChannelEmotesResponse> getChannelEmotes({
    required String broadcasterId,
  }) async {
    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['chat', 'emotes'],
      queryParameters: <String, String>{'broadcaster_id': broadcasterId},
    );
    return ChannelEmotesResponse.fromJson(data);
  }

  /// Gets all [global emotes](https://www.twitch.tv/creatorcamp/en/learn-the-basics/emotes/).
  /// Global emotes are Twitch-created emoticons that users can use in any
  /// Twitch chat.
  Future<ChannelGlobalEmotesResponse> getGlobalEmotes() async {
    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['chat', 'emotes', 'global'],
    );
    return ChannelGlobalEmotesResponse.fromJson(data);
  }

  /// Gets emotes for one or more specified emote sets.
  ///
  /// An emote set groups emotes that have a similar context. For example,
  /// Twitch places all the subscriber emotes that a broadcaster uploads for
  /// their channel in the same emote set.
  Future<EmoteSetsResponse> getEmoteSets({required String emoteSetId}) async {
    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['chat', 'emotes', 'set'],
      queryParameters: <String, String>{'emote_set_id': emoteSetId},
    );
    return EmoteSetsResponse.fromJson(data);
  }

  /// Gets a list of custom chat badges that can be used in chat for the
  /// specified channel. This includes subscriber badges and Bit badges.
  ///
  /// `broadcasterId`: The broadcaster whose chat badges are being requested.
  /// Provided `broadcasterId` must match the `userId` in the user OAuth token.
  Future<List<TwitchChatBadge>> getChannelChatBadges({
    required String broadcasterId,
  }) async {
    assert(broadcasterId == twitchHttpClient.twitchToken?.userId);
    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['chat', 'badges'],
      queryParameters: <String, String>{'broadcaster_id': broadcasterId},
    );
    return (data['data'] as Iterable).cast<Map<String, dynamic>>().map<TwitchChatBadge>(TwitchChatBadge.fromJson).toList();
  }

  /// Gets a list of chat badges that can be used in chat for any channel.
  Future<List<TwitchChatBadge>> getGlobalChatBadges() async {
    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['chat', 'badges', 'global'],
    );
    return (data['data'] as Iterable).cast<Map<String, dynamic>>().map<TwitchChatBadge>(TwitchChatBadge.fromJson).toList();
  }

  /// Gets the broadcaster’s chat settings.
  ///
  /// To include the `non_moderator_chat_delay` or `non_moderator_chat_delay_duration`
  /// settings in the response, you must specify a User access token with scope
  /// set to [TwitchApiScope.moderatorReadChatSettings].
  ///
  /// `broadcasterId`: The ID of the broadcaster whose chat settings you want to
  /// get.
  ///
  /// `moderatorId`: Required only to access the `non_moderator_chat_delay` or
  /// `non_moderator_chat_delay_duration` settings. The ID of a user that has
  /// permission to moderate the broadcaster’s chat room. This ID must match the
  /// user ID associated with the user OAuth token. If the broadcaster wants to
  /// get their own settings (instead of having the moderator do it), set this
  /// parameter to the broadcaster’s ID, too.
  Future<List<TwitchChatSettings>> getChatSettings({
    required String broadcasterId,
    String? moderatorId,
  }) async {
    final data = await twitchHttpClient.getCall<Map<String, dynamic>>(
      ['chat', 'settings'],
      queryParameters: <String, String>{
        'broadcaster_id': broadcasterId,
        if (moderatorId != null) 'moderator_id': moderatorId,
      },
    );
    return (data['data'] as Iterable).cast<Map<String, dynamic>>().map<TwitchChatSettings>(TwitchChatSettings.fromJson).toList();
  }

  /// Get refresh token from the authorization code fetched with authorizeCodeUri method
  ///
  /// clientSecret must be passed to TwitchClient class
  Future<TwitchTokenRefresh> getRefreshToken() async {
    assert(clientSecret.isNotEmpty, "Client secret must be initialized in TwitchClient object");
    assert(twitchHttpClient.twitchCode?.code.isNotEmpty ?? false, "Twitch authorization code must be initialized, look at authorizeCodeUri method");

    final data = await twitchHttpClient.postCallRefreshToken<Map<String, dynamic>>(
      [oauthPath, 'token'],
      {
        'client_id': clientId,
        'client_secret': clientSecret,
        'code': twitchHttpClient.twitchCode?.code,
        'grant_type': 'authorization_code',
        'redirect_uri': redirectUri,
      },
    );
    return TwitchTokenRefresh.fromJson(data);
  }

  /// Refresh a token
  ///
  /// clientSecret must be passed to TwitchClient class
  /// `refreshToken` required
  ///
  /// documentation : https://dev.twitch.tv/docs/authentication/refresh-tokens/
  Future<TwitchTokenRefresh> refreshToken({required String refreshToken}) async {
    assert(clientSecret.isNotEmpty, "Client secret must be initialized in TwitchClient object");
    assert(refreshToken.isNotEmpty, "Refresh token can't be empty");

    final data = await twitchHttpClient.postCallRefreshToken<Map<String, dynamic>>(
      [oauthPath, 'token'],
      {'client_id': clientId, 'client_secret': clientSecret, 'refresh_token': refreshToken, 'grant_type': 'refresh_token', "token_type": "bearer"},
    );
    return TwitchTokenRefresh.fromJson(data);
  }
}
