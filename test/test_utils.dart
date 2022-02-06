import 'dart:convert';
import 'dart:io';

import 'package:twitch_api/twitch_api.dart';

String readFileStringSync(String name) =>
    File('test/test_resources/$name').readAsStringSync();

Future<String> readFileStringAsync(String name) =>
    File('test/test_resources/$name').readAsString();

class TwitchMockProvider extends TwitchHttpClient {
  @override
  Future<T> getCall<T>(
    Iterable<String> pathSegments, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    switch (pathSegments.join('/')) {
      case 'bits/cheermotes':
        return jsonDecode(await readFileStringAsync('get_cheermotes.json'))
            as T;
      case 'streams':
        if (queryParameters['after'] ==
            'eyJiIjp7IkN1cnNvciI6ImV5SnpJam8zT0RNMk5TNDBORFF4TlRjMU1UY3hOU3dpWkNJNlptRnNjMlVzSW5RaU9uUnlkV1Y5In0sImEiOnsiQ3Vyc29yIjoiZXlKeklqb3hOVGs0TkM0MU56RXhNekExTVRZNU1ESXNJbVFpT21aaGJITmxMQ0owSWpwMGNuVmxmUT09In19') {
          return jsonDecode(await readFileStringAsync('get_streams_2.json'))
              as T;
        }
        return jsonDecode(await readFileStringAsync('get_streams_1.json')) as T;
      case 'channels/editors':
        return jsonDecode(await readFileStringAsync('get_channel_editors.json'))
            as T;
      case 'channel_points/custom_rewards':
        if (queryParameters['only_manageable_rewards'] as String == 'true') {
          return jsonDecode(
            await readFileStringAsync('get_custom_rewards_2.json'),
          ) as T;
        } else if (queryParameters['id'] ==
            '92af127c-7326-4483-a52b-b0da0be61c01') {
          return jsonDecode(
            await readFileStringAsync('get_custom_rewards_3.json'),
          ) as T;
        } else {
          return jsonDecode(
            await readFileStringAsync('get_custom_rewards_1.json'),
          ) as T;
        }
      case 'channel_points/custom_rewards/redemptions':
        if (queryParameters['status'] == 'CANCELED') {
          return jsonDecode(
            await readFileStringAsync('get_custom_reward_redemption_1.json'),
          ) as T;
        } else {
          return jsonDecode(
            await readFileStringAsync('get_custom_reward_redemption_2.json'),
          ) as T;
        }
      case 'bits/leaderboard':
        return jsonDecode(
          await readFileStringAsync('get_bits_leaderboard.json'),
        ) as T;
      case 'subscriptions':
        return jsonDecode(
          await readFileStringAsync('get_broadcaster_subscriptions.json'),
        ) as T;
      case 'analytics/extensions':
        return jsonDecode(
          await readFileStringAsync('get_extension_analytics.json'),
        ) as T;
      case 'analytics/games':
        if (queryParameters['started_at'] != null &&
            queryParameters['ended_at'] != null) {
          return jsonDecode(
            await readFileStringAsync('get_game_analytics_1.json'),
          ) as T;
        } else {
          return jsonDecode(
            await readFileStringAsync('get_game_analytics_2.json'),
          ) as T;
        }
      case 'users':
        return jsonDecode(await readFileStringAsync('get_users.json')) as T;
      case 'channels':
        return jsonDecode(
          await readFileStringAsync('get_channel_informations.json'),
        ) as T;
      case 'games':
        return jsonDecode(await readFileStringAsync('get_games.json')) as T;
      case 'users/follows':
        return jsonDecode(await readFileStringAsync('get_users_follows.json'))
            as T;
      case 'games/top':
        return jsonDecode(await readFileStringAsync('get_top_games.json')) as T;
      case 'search/categories':
        return jsonDecode(
          await readFileStringAsync('get_search_categories.json'),
        ) as T;
      case 'search/channels':
        return jsonDecode(await readFileStringAsync('get_search_channels.json'))
            as T;
      case 'chat/emotes':
        return jsonDecode(await readFileStringAsync('get_channel_emotes.json'))
            as T;
      case 'chat/emotes/global':
        return jsonDecode(await readFileStringAsync('get_global_emotes.json'))
            as T;
      default:
        throw 'Bad Request: Query Parameter missing or invalid';
    }
  }

  @override
  void initializeToken(_) {}

  @override
  Future<T> patchCall<T>(
    Iterable<String> pathSegments,
    dynamic data, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    final _data = data as Map<String, dynamic>;
    switch (pathSegments.join('/')) {
      case 'channel_points/custom_rewards':
        final isEnabled = _data['is_enabled'] as bool?;
        if (isEnabled != null && !isEnabled) {
          return jsonDecode(
            await readFileStringAsync('update_custom_reward_1.json'),
          ) as T;
        } else {
          return jsonDecode(
            await readFileStringAsync('update_custom_reward_2.json'),
          ) as T;
        }
      case 'channel_points/custom_rewards/redemptions':
        return jsonDecode(
          await readFileStringAsync('update_redemption_status.json'),
        ) as T;
      default:
        throw 'Bad Request: Query Parameter missing or invalid';
    }
  }

  @override
  Future<T> postCall<T>(
    Iterable<String> pathSegments,
    _, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    switch (pathSegments.join('/')) {
      case 'channel_points/custom_rewards':
        return jsonDecode(
          await readFileStringAsync('create_custom_rewards.json'),
        ) as T;
      case 'channels/commercial':
        return jsonDecode(await readFileStringAsync('start_commercial.json'))
            as T;
      default:
        throw 'Bad Request: Query Parameter missing or invalid';
    }
  }

  @override
  TwitchToken? get twitchToken => TwitchToken(
        scope: '',
        token: '',
        tokenType: '',
        userId: '',
      );

  @override
  Future<TwitchToken> validateToken() => throw UnimplementedError();

  @override
  Future<T?> deleteCall<T>(
    Iterable<String> pathSegments, {
    Map<String, dynamic> queryParameters = const {},
  }) async {
    switch (pathSegments.join('/')) {
      case 'channel_points/custom_rewards':
        return '204 No Content' as T;
      default:
        throw 'Bad Request: Query Parameter missing or invalid';
    }
  }
}
