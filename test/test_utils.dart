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
      case 'channel_points/custom_rewards':
        if (queryParameters['only_manageable_rewards'] as bool == true) {
          return jsonDecode(
            await readFileStringAsync('get_custom_rewards_2.json'),
          );
        } else if (queryParameters['id'] ==
            '92af127c-7326-4483-a52b-b0da0be61c01') {
          return jsonDecode(
            await readFileStringAsync('get_custom_rewards_3.json'),
          );
        } else {
          return jsonDecode(
            await readFileStringAsync('get_custom_rewards_1.json'),
          );
        }
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
