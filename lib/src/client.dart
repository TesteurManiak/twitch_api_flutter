import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:twitch_api/src/exceptions/twitch_api_exception.dart';
import 'package:twitch_api/src/models/twitch_channel_info.dart';
import 'package:twitch_api/src/models/twitch_game_analytic.dart';
import 'package:twitch_api/src/models/twitch_start_commercial.dart';
import 'package:twitch_api/src/models/twitch_token.dart';
import 'package:meta/meta.dart';
import 'package:twitch_api/src/models/twitch_user.dart';
import 'package:twitch_api/src/models/twitch_users_follows.dart';
import 'package:twitch_api/twitch_api.dart';

import 'models/twitch_api_scopes.dart';

class TwitchClient {
  static const basePath = 'helix';
  static const oauthPath = 'oauth2';
  static const authPath = 'authorize';

  static final baseUrl = Uri(scheme: 'https', host: 'api.twitch.tv');
  static final oauth2Url = Uri(scheme: 'https', host: 'id.twitch.tv');
  final _dio = Dio();

  final String redirectUri;
  final String clientId;

  TwitchToken _accessToken;
  TwitchToken get accessToken => _accessToken;

  Uri authorizeUri(List<TwitchApiScope> scopes) {
    final scopesSet = Set<String>()
      ..add('viewing_activity_read')
      ..addAll(scopes.map((e) => TwitchApiScopes.getScopeString(e)).toSet());
    return oauth2Url.replace(
      pathSegments: <String>[oauthPath]..addAll([authPath]),
      queryParameters: {
        'response_type': 'token',
        'client_id': clientId,
        'redirect_uri': redirectUri,
        'scope': scopesSet.join(' '),
      },
    );
  }

  TwitchClient({
    @required this.clientId,
    @required this.redirectUri,
    TwitchToken token,
  })  : this._accessToken = token,
        assert(clientId != null),
        assert(redirectUri != null);

  /// Method to initialize the token the first time after connection.
  ///
  /// `twitchToken`: Token obtained with the first connection.
  void initializeToken(TwitchToken twitchToken) => _accessToken ??= twitchToken;

  Future<TwitchToken> validateToken() async {
    try {
      final options = Options(
        headers: {
          HttpHeaders.authorizationHeader: 'OAuth ${accessToken.token}'
        },
      );
      final response = await _dio.getUri(
        oauth2Url.replace(
            pathSegments: <String>[oauthPath]..addAll(['validate'])),
        options: options,
      );
      _accessToken = TwitchToken.fromValidation(_accessToken, response.data);

      if (_accessToken == null ||
          _accessToken.token == null ||
          _accessToken.token.isEmpty ||
          !_accessToken.isValid)
        throw TwitchNotConnectedException(
            'You are not connected to your Twitch account.');
      return _accessToken;
    } catch (e) {
      throw e;
    }
  }

  /// Generic method for authenticated GET calls.
  Future<dynamic> getCall(
    Iterable<String> pathSegments, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    try {
      await validateToken();
      if (_accessToken.isValid) {
        final options = Options(headers: {
          'Client-Id': clientId,
          HttpHeaders.authorizationHeader: 'Bearer ${accessToken.token}',
        });
        final response = await _dio.getUri(
          baseUrl.replace(
            pathSegments: <String>[basePath]..addAll(pathSegments),
            queryParameters: queryParameters,
          ),
          options: options,
        );
        return response.data;
      } else {
        throw TwitchApiException('OAuth token is not valid');
      }
    } on DioError catch (dioError) {
      throw dioError.response.data['message'];
    } catch (e) {
      throw e;
    }
  }

  /// Generic method for authenticated POST calls.
  Future<dynamic> postCall(
    Iterable<String> pathSegments,
    dynamic data, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    try {
      await validateToken();
      if (_accessToken.isValid) {
        final options = Options(headers: {
          'Client-Id': clientId,
          HttpHeaders.authorizationHeader: 'Bearer ${accessToken.token}',
          'Content-Type': 'application/json',
        });
        final response = await _dio.postUri(
          baseUrl.replace(
            pathSegments: <String>[basePath]..addAll(pathSegments),
            queryParameters: queryParameters,
          ),
          options: options,
          data: data,
        );
        return response.data;
      } else {
        throw TwitchApiException('OAuth token is not valid');
      }
    } on DioError catch (dioError) {
      throw dioError.response.data['message'];
    } catch (e) {
      throw e;
    }
  }

  void close() {}

  void dispose() {
    close();
    _accessToken = null;
  }

  /// Starts a commercial on a specified channel.
  ///
  /// Required scope: `TwitchApiScope.channelEditCommercial`
  ///
  /// `broadcasterId`: ID of the channel requesting a commercial.
  ///
  /// `length`: Desired length of the commercial in seconds. Valid options are
  /// `30, 60, 90, 120, 150, 180`.
  Future<List<TwitchStartCommercial>> startCommercial(
      String broadcasterId, int length) async {
    assert(broadcasterId == _accessToken.userId);
    assert(length > 29 && length < 181 && length % 30 == 0);
    try {
      final data = await postCall(['channels', 'commercial'],
          {'broadcaster_id': broadcasterId, 'length': length.toString()});
      return (data['data'] as Iterable)
          .map((e) => TwitchStartCommercial.fromJson(e))
          .toList();
    } catch (e) {
      throw TwitchStartCommercialException(e.toString());
    }
  }

  /// Gets a URL that Extension developers can use to download analytics reports
  /// (CSV files) for their Extensions. The URL is valid for 5 minutes.
  ///
  /// If you specify a future date, the response will be “Report Not Found For
  /// Date Range.” If you leave both `startedAt` and `endedAt` blank, the API
  /// returns the most recent date of data.
  ///
  /// Required scope: `TwitchApiScope.analyticsReadExtensions`
  ///
  /// `after`: Cursor for forward pagination: tells the server where to start
  /// fetching the next set of results, in a multi-page response. This applies
  /// only to queries without `extensionId`. If an `extensionId` is specified,
  /// it supersedes any cursor/offset combinations. The cursor value specified
  /// here is from the `pagination` response field of a prior query.
  ///
  /// `endedAt`: Ending date/time for returned reports, in RFC3339 format with
  /// the hours, minutes, and seconds zeroed out and the UTC timezone:
  /// `YYYY-MM-DDT00:00:00Z`. The report covers the entire ending date; e.g., if
  /// `2018-05-01T00:00:00Z` is specified, the report covers up to
  /// `2018-05-01T23:59:59Z`.
  /// If this is provided, `startedAt` also must be specified. If `endedAt` is
  /// later than the default end date, the default date is used. Default: 1-2
  /// days before the request was issued (depending on report availability).
  ///
  /// `extensionId`: Client ID value assigned to the extension when it is
  /// created. If this is specified, the returned URL points to an analytics
  /// report for just the specified extension. If this is not specified, the
  /// response includes multiple URLs (paginated), pointing to separate
  /// analytics reports for each of the authenticated user’s Extensions.
  ///
  /// `first`: Maximum number of objects to return. Maximum: 100. Default: 20.
  ///
  /// `startedAt`: Starting date/time for returned reports, in RFC3339 format
  /// with the hours, minutes, and seconds zeroed out and the UTC timezone:
  /// `YYYY-MM-DDT00:00:00Z`. This must be on or after January 31, 2018.
  /// If this is provided, `endedAt` also must be specified. If `startedAt` is
  /// earlier than the default start date, the default date is used.
  /// The file contains one row of data per day.
  ///
  /// `type`: Type of analytics report that is returned. Currently, this field
  /// has no affect on the response as there is only one report type. If
  /// additional types were added, using this field would return only the URL
  /// for the specified report. Limit: 1. Valid values: `"overview_v2"`.
  Future<TwitchExtensionAnalytics> getExtensionAnalytics({
    String after,
    String endedAt,
    String extensionId,
    int first = 20,
    String startedAt,
    String type,
  }) async {
    assert((endedAt == null && startedAt == null) ||
        (endedAt != null && startedAt != null));
    assert(first < 101 && first > 0 && first != null);

    Map<String, dynamic> queryParameters = {'first': first.toString()};
    if (after != null) queryParameters['after'] = after;
    if (endedAt != null && startedAt != null) {
      queryParameters['ended_at'] = endedAt;
      queryParameters['started_at'] = startedAt;
    }
    if (extensionId != null) queryParameters['extension_id'] = extensionId;
    if (type != null) queryParameters['type'] = type;

    try {
      final data = await getCall(['analytics', 'extensions'],
          queryParameters: queryParameters);
      return TwitchExtensionAnalytics.fromJson(data);
    } catch (e) {
      throw TwitchGetExtensionAnalyticsException(e.toString());
    }
  }

  /// Gets a URL that game developers can use to download analytics reports
  /// (CSV files) for their games. The URL is valid for 5 minutes.
  ///
  /// Required scope: `TwitchApiScope.analyticsReadGames`
  ///
  /// `after`: Cursor for forward pagination: tells the server where to start
  /// fetching the next set of results, in a multi-page response. This applies
  /// only to queries without `gameId`. If a `gameId` is specified, it supersedes
  /// any cursor/offset combinations. The cursor value specified here is from
  /// the `pagination` response field of a prior query.
  Future<List<TwitchGameAnalytic>> getGameAnalytics({
    String after,
    String endedAt,
    int first = 20,
    String gameId,
    String startedAt,
    String type,
  }) async {
    assert((endedAt == null && startedAt == null) ||
        (endedAt != null && startedAt != null));
    assert(first < 101 && first > 0 && first != null);

    Map<String, dynamic> queryParameters = {'first': first.toString()};
    if (after != null && gameId == null) queryParameters['after'] = after;
    if (endedAt != null && startedAt != null) {
      queryParameters['ended_at'] = endedAt;
      queryParameters['started_at'] = startedAt;
    }
    if (gameId != null) queryParameters['game_id'] = gameId;
    if (type != null) queryParameters['type'] = type;

    final data =
        await getCall(['analytics', 'games'], queryParameters: queryParameters);
    return (data['data'] as Iterable)
        .map<TwitchGameAnalytic>((e) => TwitchGameAnalytic.fromJson(e))
        .toList();
  }

  /// Gets information about one or more specified Twitch users. Users are
  /// identified by optional user IDs and/or login name. If neither a user ID
  /// nor a login name is specified, the user is looked up by Bearer token.
  ///
  /// Required scrope: `TwitchApiScope.userReadEmail`
  ///
  /// `ids`: User ID. Multiple user IDs can be specified. Limit: 100.
  ///
  /// `logins`: User login name. Multiple login names can be specified. Limit:
  /// 100.
  ///
  /// Note: The limit of 100 IDs and login names is the total limit. You can
  /// request, for example, 50 of each or 100 of one of them. You cannot request
  /// 100 of both.
  Future<List<TwitchUser>> getUsers(
      {List<String> ids = const [], List<String> logins = const []}) async {
    assert(ids != null && ids.length < 101);
    assert(logins != null && logins.length < 101);
    assert(ids.length + logins.length < 101);

    Map<String, dynamic> queryParameters = {};
    if (ids.isNotEmpty) queryParameters['id'] = ids.join(',');
    if (logins.isNotEmpty) queryParameters['login'] = logins.join(',');

    final data = await getCall(['users'], queryParameters: queryParameters);
    return (data['data'] as Iterable)
        .map((e) => TwitchUser.fromJson(e))
        .toList();
  }

  /// Gets information on follow relationships between two Twitch users. This
  /// can return information like “who is qotrok following,” “who is following
  /// qotrok,” or “is user X following user Y.” Information returned is sorted
  /// in order, most recent follow first.
  ///
  /// At minimum, `fromId` or `toId` must be provided for a query to be valid.
  Future<TwitchUsersFollows> getUsersFollows({
    String after,
    int first = 20,
    String fromId,
    String toId,
  }) async {
    assert(first < 101 && first > 0 && first != null);
    assert(fromId != null || toId != null);

    Map<String, dynamic> queryParameters = {'first': first.toString()};
    if (after != null) queryParameters['after'] = after;
    if (fromId != null) queryParameters['from_id'] = fromId;
    if (toId != null) queryParameters['to_id'] = toId;

    final data =
        await getCall(['users', 'follows'], queryParameters: queryParameters);
    return TwitchUsersFollows.fromJson(data);
  }

  /// Fetch Channel info corresponding to [broadcasterId]. If parameters is
  /// empty it will fetch info from the current [accessToken.userId]'s channel.
  Future<List<TwitchChannelInfo>> getChannelInfo({String broadcasterId}) async {
    final data = await getCall(
      ['channels'],
      queryParameters: {'broadcaster_id': broadcasterId ?? _accessToken.userId},
    );
    return (data['data'] as Iterable)
        .map<TwitchChannelInfo>((e) => TwitchChannelInfo.fromJson(e))
        .toList();
  }
}
