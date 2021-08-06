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
      case 'channel_points/custom_rewards/redemptions':
        if (queryParameters['status'] == 'CANCELED') {
          return jsonDecode(
            await readFileStringAsync('get_custom_reward_redemption_1.json'),
          );
        } else {
          return jsonDecode(
            await readFileStringAsync('get_custom_reward_redemption_2.json'),
          );
        }
      case 'bits/leaderboard':
        return jsonDecode(
          await readFileStringAsync('get_bits_leaderboard.json'),
        );
      case 'subscriptions':
        return jsonDecode(
          await readFileStringAsync('get_broadcaster_subscriptions.json'),
        );
      case 'analytics/extensions':
        return jsonDecode(
          await readFileStringAsync('get_extension_analytics.json'),
        );
      case 'analytics/games':
        if (queryParameters['started_at'] != null &&
            queryParameters['ended_at'] != null) {
          return jsonDecode(
            await readFileStringAsync('get_game_analytics_1.json'),
          );
        } else {
          return jsonDecode(
            await readFileStringAsync('get_game_analytics_2.json'),
          );
        }
      case 'users':
        return jsonDecode(await readFileStringAsync('get_users.json'));
      case 'channels':
        return jsonDecode(
          await readFileStringAsync('get_channel_informations.json'),
        );
      case 'games':
        return jsonDecode(await readFileStringAsync('get_games.json'));
      case 'users/follows':
        return jsonDecode(await readFileStringAsync('get_users_follows.json'));
      case 'games/top':
        return jsonDecode(await readFileStringAsync('get_top_games.json'));
      case 'search/categories':
        return jsonDecode(
          await readFileStringAsync('get_search_categories.json'),
        );
      case 'search/channels':
        return jsonDecode(
          await readFileStringAsync('get_search_channels.json'),
        );
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
      case 'channels/commercial':
        return jsonDecode(await readFileStringAsync('start_commercial.json'));
      default:
        throw 'Bad Request: Query Parameter missing or invalid';
    }
  }

  @override
  final TwitchToken twitchToken = TwitchToken(
    scope: '',
    token: '',
    tokenType: '',
    userId: '',
  );

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
