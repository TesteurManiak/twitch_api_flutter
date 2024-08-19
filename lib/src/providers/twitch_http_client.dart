import 'package:twitch_api/src/models/twitch_code.dart';
import 'package:twitch_api/src/models/twitch_token.dart';

abstract class TwitchHttpClient {
  TwitchToken? get twitchToken;
  TwitchCode? get twitchCode;

  /// Method to initialize the token the first time after connection.
  ///
  /// [twitchToken]: Token obtained with the first connection.
  void initializeToken(TwitchToken twitchToken);
  void initializeCode(TwitchCode twitchCode);

  /// Generic method for authenticated GET calls.
  Future<T> getCall<T>(
    Iterable<String> pathSegments, {
    Map<String, dynamic> queryParameters = const {},
  });

  /// Generic method for authenticated POST calls.
  Future<T> postCall<T>(
    Iterable<String> pathSegments,
    Object data, {
    Map<String, dynamic> queryParameters = const {},
  });

  /// Generic method for authenticated POST calls.
  Future<T> postCallRefreshToken<T>(
    Iterable<String> pathSegments,
    Object data, {
    Map<String, dynamic> queryParameters = const {},
  });

  /// Generic method for authenticated PATCH calls.
  Future<T> patchCall<T>(
    Iterable<String> pathSegments,
    Object data, {
    Map<String, dynamic> queryParameters = const {},
  });

  /// Generic method for authenticated DELETE calls.
  Future<T?> deleteCall<T>(
    Iterable<String> pathSegments, {
    Map<String, dynamic> queryParameters = const {},
  });

  Future<TwitchToken> validateToken();
}
