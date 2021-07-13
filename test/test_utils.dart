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
        throw 'Unknown endpoints';
    }
  }

  @override
  void initializeToken(_) {}

  @override
  Future patchCall(Iterable<String> pathSegments, data,
      {Map<String, dynamic> queryParameters = const {}}) {
    // TODO: implement patchCall
    throw UnimplementedError();
  }

  @override
  Future postCall(Iterable<String> pathSegments, data,
      {Map<String, dynamic> queryParameters = const {}}) {
    // TODO: implement postCall
    throw UnimplementedError();
  }

  @override
  // TODO: implement twitchToken
  TwitchToken get twitchToken => throw UnimplementedError();

  @override
  Future<TwitchToken?> validateToken() {
    // TODO: implement validateToken
    throw UnimplementedError();
  }
}
