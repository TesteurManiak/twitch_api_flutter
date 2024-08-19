import 'package:dio/dio.dart';
import 'package:twitch_api/src/client.dart';
import 'package:twitch_api/src/errors/exceptions.dart';
import 'package:twitch_api/src/models/twitch_code.dart';
import 'package:twitch_api/src/models/twitch_token.dart';
import 'package:twitch_api/src/providers/twitch_http_client.dart';

class TwitchDioClient extends TwitchHttpClient {
  TwitchDioClient({
    required this.clientId,
  });

  final dio = Dio();
  final String clientId;

  TwitchToken? _twitchToken;
  TwitchCode? _twitchCode;

  @override
  TwitchToken? get twitchToken => _twitchToken;

  @override
  TwitchCode? get twitchCode => _twitchCode;

  @override
  Future<T> getCall<T>(
    Iterable<String> pathSegments, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    final accessToken = await validateToken();
    if (accessToken.isValid) {
      final options = Options(
        headers: {
          'Client-Id': clientId,
          'Authorization': 'Bearer ${accessToken.token}',
        },
      );
      final response = await dio.getUri<T>(
        TwitchClient.baseUrl.replace(
          pathSegments: <String>[TwitchClient.basePath, ...pathSegments],
          queryParameters: queryParameters,
        ),
        options: options,
      );
      return response.data!;
    } else {
      throw const TwitchApiException(msg: 'OAuth token is not valid');
    }
  }

  @override
  Future<T> postCall<T>(
    Iterable<String> pathSegments,
    Object data, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    final accessToken = await validateToken();
    if (accessToken.isValid) {
      final options = Options(
        headers: {
          'Client-Id': clientId,
          'Authorization': 'Bearer ${accessToken.token}',
          'Content-Type': 'application/json',
        },
      );
      final response = await dio.postUri<T>(
        TwitchClient.baseUrl.replace(
          pathSegments: <String>[TwitchClient.basePath, ...pathSegments],
          queryParameters: queryParameters,
        ),
        options: options,
        data: data,
      );
      return response.data!;
    } else {
      throw const TwitchApiException(msg: 'OAuth token is not valid');
    }
  }

  @override
  Future<T> patchCall<T>(
    Iterable<String> pathSegments,
    Object data, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    final accessToken = await validateToken();
    if (accessToken.isValid) {
      final options = Options(
        headers: {
          'Client-Id': clientId,
          'Authorization': 'Bearer ${accessToken.token}',
          'Content-Type': 'application/json',
        },
      );
      final response = await dio.patchUri<T>(
        TwitchClient.baseUrl.replace(
          pathSegments: <String>[TwitchClient.basePath, ...pathSegments],
          queryParameters: queryParameters,
        ),
        options: options,
        data: data,
      );
      return response.data!;
    } else {
      throw const TwitchApiException(msg: 'OAuth token is not valid');
    }
  }

  @override
  Future<TwitchToken> validateToken() async {
    assert(_twitchToken != null);
    final options = Options(
      headers: {'Authorization': 'OAuth ${_twitchToken!.token}'},
    );
    final response = await dio.getUri<Map<String, dynamic>>(
      TwitchClient.oauth2Url.replace(
        pathSegments: <String>[TwitchClient.oauthPath, 'validate'],
      ),
      options: options,
    );
    _twitchToken = TwitchToken.fromValidation(_twitchToken!, response.data!);

    if (_twitchToken!.token.isEmpty || !_twitchToken!.isValid) {
      throw const TwitchApiException(
        msg: 'You are not connected to your Twitch account.',
      );
    }
    return _twitchToken!;
  }

  @override
  void initializeToken(TwitchToken twitchToken) => _twitchToken = twitchToken;

  @override
  void initializeCode(TwitchCode twitchCode) => _twitchCode = twitchCode;

  @override
  Future<T?> deleteCall<T>(
    Iterable<String> pathSegments, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    final accessToken = await validateToken();
    if (accessToken.isValid) {
      final options = Options(
        headers: {
          'Client-Id': clientId,
          'Authorization': 'Bearer ${accessToken.token}',
          'Content-Type': 'application/json',
        },
      );
      final response = await dio.deleteUri<T>(
        TwitchClient.baseUrl.replace(
          pathSegments: <String>[TwitchClient.basePath, ...pathSegments],
        ),
        options: options,
      );
      return response.data;
    }
    return null;
  }

  @override
  Future<T> postCallRefreshToken<T>(Iterable<String> pathSegments, Object data, {Map<String, dynamic> queryParameters = const {}}) async {
    final options = Options(headers: {
      'Content-Type': 'application/json',
    });

    final response = await dio.postUri<T>(
      TwitchClient.oauth2Url.replace(
        pathSegments: pathSegments,
        queryParameters: queryParameters,
      ),
      options: options,
      data: data,
    );
    return response.data!;
  }
}
