import 'package:twitch_api/src/models/twitch_token.dart';

abstract class TwitchHttpClient {
  TwitchToken get twitchToken;

  /// Method to initialize the token the first time after connection.
  ///
  /// [twitchToken]: Token obtained with the first connection.
  void initializeToken(TwitchToken twitchToken);

  /// Generic method for authenticated GET calls.
  Future getCall(
    Iterable<String> pathSegments, {
    Map<String, dynamic> queryParameters = const {},
  });

  /// Generic method for authenticated POST calls.
  Future postCall(
    Iterable<String> pathSegments,
    dynamic data, {
    Map<String, dynamic> queryParameters = const {},
  });

  /// Generic method for authenticated PATCH calls.
  Future patchCall(
    Iterable<String> pathSegments,
    dynamic data, {
    Map<String, dynamic> queryParameters = const {},
  });

  /// Generic method for authenticated DELETE calls.
  Future deleteCall(
    Iterable<String> pathSegments, {
    Map<String, dynamic> queryParameters = const {},
  });

  Future<TwitchToken?> validateToken();
}
