import 'dart:convert';
import 'dart:io';

import 'package:twitch_api/twitch_api.dart';

String readFileStringSync(String name) =>
    File('test/test_resources/$name').readAsStringSync();

Future<String> readFileStringAsync(String name) =>
    File('test/test_resources/$name').readAsString();

class TwitchMockProvider extends TwitchHttpClient {
  @override
  Future getCall(Iterable<String> pathSegments,
      {Map<String, dynamic> queryParameters = const {}}) async {
    switch (pathSegments.join('/')) {
      case 'bits/cheermotes':
        return jsonDecode(await readFileStringAsync('get_cheermotes.json'));
      case 'streams':
        return jsonDecode(await readFileStringAsync('get_streams_1.json'));
      case 'channels/editors':
        return jsonDecode(
            await readFileStringAsync('get_channel_editors.json'));
      default:
        throw 'Bad Request: Query Parameter missing or invalid';
    }
  }

  @override
  void initializeToken(_) {}

  @override
  Future patchCall(Iterable<String> pathSegments, _,
      {Map<String, dynamic> queryParameters = const {}}) {
    // TODO: implement patchCall
    throw UnimplementedError();
  }

  @override
  Future postCall(Iterable<String> pathSegments, _,
      {Map<String, dynamic> queryParameters = const {}}) async {
    switch (pathSegments.join('/')) {
      case 'channel_points/custom_rewards':
        return jsonDecode(
            await readFileStringAsync('create_custom_rewards.json'));
      default:
        throw 'Bad Request: Query Parameter missing or invalid';
    }
  }

  @override
  TwitchToken get twitchToken => throw UnimplementedError();

  @override
  Future<TwitchToken?> validateToken() => throw UnimplementedError();

  @override
  Future deleteCall(Iterable<String> pathSegments,
      {Map<String, dynamic> queryParameters = const {}}) async {
    switch (pathSegments.join('/')) {
      case 'channel_points/custom_rewards':
        return '204 No Content';
      default:
        throw 'Bad Request: Query Parameter missing or invalid';
    }
  }
}
