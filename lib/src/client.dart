import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:twitch_api/src/exceptions/twitch_api_exception.dart';
import 'package:twitch_api/src/models/twitch_channel_info.dart';
import 'package:twitch_api/src/models/twitch_token.dart';
import 'package:twitch_api/src/pages/webview_page.dart';

class TwitchClient {
  static const _basePath = 'helix';

  static final _baseUrl = Uri(scheme: 'https', host: 'api.twitch.tv');
  static final _oauth2Url = Uri(scheme: 'https', host: 'id.twitch.tv');

  final _flutterWebviewPlugin = FlutterWebviewPlugin();
  final _dio = Dio();

  final String redirectUri;
  final String clientId;
  final HttpClient _httpClient;

  TwitchToken _accessToken;
  TwitchToken get accessToken => _accessToken;

  TwitchClient({
    @required this.clientId,
    @required this.redirectUri,
    HttpClient httpClient,
    TwitchToken token,
  })  : this._httpClient = httpClient ?? HttpClient(),
        this._accessToken = token,
        assert(clientId != null),
        assert(redirectUri != null);

  void _urlListener(String url) {
    if (url.startsWith(redirectUri)) {
      _accessToken = TwitchToken.fromUrl(url);
      _flutterWebviewPlugin.close();
    }
  }

  Future<TwitchToken> openConnectionPage(BuildContext context,
      {bool forceConnection = false}) {
    assert(forceConnection != null);
    if (!forceConnection && _accessToken != null)
      return Future<TwitchToken>.value(_accessToken);
    _flutterWebviewPlugin.onUrlChanged.listen(_urlListener);
    _flutterWebviewPlugin.onDestroy
        .listen((_) => Navigator.pop<TwitchToken>(context, accessToken));
    return Navigator.push<TwitchToken>(
      context,
      MaterialPageRoute(
        builder: (context) => WebViewPage(
          'https://id.twitch.tv/oauth2/authorize?response_type=token&client_id=$clientId&redirect_uri=$redirectUri&scope=viewing_activity_read',
        ),
      ),
    ).then((_) => validateToken());
  }

  Future<TwitchToken> validateToken() async {
    try {
      final options = Options(
        headers: {
          HttpHeaders.authorizationHeader: 'OAuth ${accessToken.token}'
        },
      );
      final response = await _dio.getUri(
        _oauth2Url.replace(
            pathSegments: <String>['oauth2']..addAll(['validate'])),
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

  Future<dynamic> call(
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
          _baseUrl.replace(
            pathSegments: <String>[_basePath]..addAll(pathSegments),
            queryParameters: queryParameters,
          ),
          options: options,
        );
        return response.data;
      } else {
        throw TwitchApiException('OAuth token is not valid');
      }
    } catch (e) {
      print(e.response.data);
      throw e;
    }
  }

  void close() {
    _httpClient.close();
    _flutterWebviewPlugin.close();
  }

  void dispose() {
    close();
    _flutterWebviewPlugin.dispose();
  }

  /// Fetch Channel info corresponding to [broadcasterId]. If parameters is
  /// empty it will fetch info from the current [accessToken.userId]'s channel.
  Future<List<TwitchChannelInfo>> getChannelInfo({String broadcasterId}) async {
    final data = await call(
      ['channels'],
      queryParameters: {'broadcaster_id': broadcasterId},
    );
    return (data['data'] as Iterable)
        .map<TwitchChannelInfo>((e) => TwitchChannelInfo.fromJson(e))
        .toList();
  }
}
