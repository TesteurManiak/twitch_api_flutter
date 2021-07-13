import 'package:dio/dio.dart';
import 'package:twitch_api/src/client.dart';
import 'package:twitch_api/src/exceptions/twitch_api_exception.dart';
import 'package:twitch_api/src/models/twitch_token.dart';
import 'package:twitch_api/src/providers/twitch_http_client.dart';

class TwitchDioProvider extends TwitchHttpClient {
  final _dio = Dio();
  final String clientId;

  late TwitchToken _twitchToken;

  @override
  TwitchToken get twitchToken => _twitchToken;

  TwitchDioProvider({required this.clientId});

  @override
  Future<dynamic> getCall(
    Iterable<String> pathSegments, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    try {
      final accessToken = await validateToken();
      if (accessToken != null && accessToken.isValid) {
        final options = Options(headers: {
          'Client-Id': clientId,
          'Authorization': 'Bearer ${accessToken.token}',
        });
        final response = await _dio.getUri(
          TwitchClient.baseUrl.replace(
            pathSegments: <String>[TwitchClient.basePath, ...pathSegments],
            queryParameters: queryParameters,
          ),
          options: options,
        );
        return response.data;
      } else {
        throw const TwitchApiException('OAuth token is not valid');
      }
    } on DioError catch (dioError) {
      throw dioError.response!.data['message'] as String;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<dynamic> postCall(
    Iterable<String> pathSegments,
    dynamic data, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    try {
      final accessToken = await validateToken();
      if (accessToken != null && accessToken.isValid) {
        final options = Options(headers: {
          'Client-Id': clientId,
          'Authorization': 'Bearer ${accessToken.token}',
          'Content-Type': 'application/json',
        });
        final response = await _dio.postUri(
          TwitchClient.baseUrl.replace(
            pathSegments: <String>[TwitchClient.basePath, ...pathSegments],
            queryParameters: queryParameters,
          ),
          options: options,
          data: data,
        );
        return response.data;
      } else {
        throw const TwitchApiException('OAuth token is not valid');
      }
    } on DioError catch (dioError) {
      throw dioError.response!.data['message'] as String;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<dynamic> patchCall(
    Iterable<String> pathSegments,
    dynamic data, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    try {
      final accessToken = await validateToken();
      if (accessToken != null && accessToken.isValid) {
        final options = Options(headers: {
          'Client-Id': clientId,
          'Authorization': 'Bearer ${accessToken.token}',
          'Content-Type': 'application/json',
        });
        final response = await _dio.patchUri(
          TwitchClient.baseUrl.replace(
            pathSegments: <String>[TwitchClient.basePath, ...pathSegments],
            queryParameters: queryParameters,
          ),
          options: options,
          data: data,
        );
        return response.data;
      } else {
        throw const TwitchApiException('OAuth token is not valid');
      }
    } on DioError catch (dioError) {
      throw dioError.response!.data['message'] as String;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<TwitchToken?> validateToken() async {
    try {
      final options = Options(
        headers: {'Authorization': 'OAuth ${_twitchToken.token}'},
      );
      final response = await _dio.getUri(
        TwitchClient.oauth2Url.replace(
          pathSegments: <String>[TwitchClient.oauthPath, 'validate'],
        ),
        options: options,
      );
      _twitchToken = TwitchToken.fromValidation(
          _twitchToken, response.data as Map<String, dynamic>);

      if (_twitchToken.token.isEmpty || !_twitchToken.isValid) {
        throw const TwitchNotConnectedException(
            'You are not connected to your Twitch account.');
      }
      return _twitchToken;
    } catch (e) {
      throw TwitchApiException('Error with tokenValidation: $e');
    }
  }

  @override
  void initializeToken(TwitchToken twitchToken) => _twitchToken = twitchToken;
}
