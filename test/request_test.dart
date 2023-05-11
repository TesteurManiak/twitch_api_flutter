import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:twitch_api/twitch_api.dart';

import 'utils/mocks.dart';
import 'utils/test_utils.dart';

void main() {
  group('TwitchClient', () {
    late TwitchHttpClient mockHttpClient;
    late TwitchClient client;

    setUp(() {
      mockHttpClient = MockTwitchHttpClient();
      client = TwitchClient(
        clientId: '',
        redirectUri: '',
        twitchHttpClient: mockHttpClient,
      );
    });

    group('authorizeUri', () {
      test('should return the correct authorization Uri', () {
        expect(
          client.authorizeUri([TwitchApiScope.channelReadRedemptions]),
          TwitchClient.oauth2Url.replace(
            pathSegments: [TwitchClient.oauthPath, TwitchClient.authPath],
            queryParameters: {
              'response_type': 'token',
              'client_id': '',
              'redirect_uri': '',
              'scope':
                  'viewing_activity_read ${TwitchApiScope.channelReadRedemptions.string}',
            },
          ),
        );
      });
    });

    group('startCommercial', () {
      test(
          'should throw an AssertionError if length is not 30, 60, 90, 120, 150 or 180',
          () async {
        expect(
          () => client.startCommercial(broadcasterId: '', length: 0),
          throwsA(isA<AssertionError>()),
        );
      });

      test(
        'should call postCall on channels/commercial and return a valid StartCommercialResponse',
        () async {
          const path = ['channels', 'commercial'];
          const broadcasterId = '123';
          const length = 60;
          final data = <String, String>{
            'broadcaster_id': broadcasterId,
            'length': length.toString(),
          };

          when(
            () => mockHttpClient.postCall<Map<String, dynamic>>(path, data),
          ).thenAnswer((_) async => readJson('start_commercial.json'));

          await client.startCommercial(
            broadcasterId: broadcasterId,
            length: length,
          );

          verify(
            () => mockHttpClient.postCall<Map<String, dynamic>>(path, data),
          );
        },
      );
    });

    group('getExtensionAnalytics', () {
      test(
        'should call getCall on analytics/extensions and return a valid ExtensionAnalyticsResponse',
        () async {
          const path = ['analytics', 'extensions'];
          const queryParams = {'first': '20'};

          when(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          ).thenAnswer((_) async => readJson('get_extension_analytics.json'));

          await client.getExtensionAnalytics();

          verify(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          );
        },
      );
    });

    group('getGameAnalytics', () {
      test(
        'should call getCall on analytics/games and return a valid GameAnalyticsResponse',
        () async {
          const path = ['analytics', 'games'];
          const queryParams = {'first': '20'};

          when(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          ).thenAnswer((_) async => readJson('get_game_analytics.json'));

          await client.getGameAnalytics();

          verify(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          );
        },
      );
    });

    group('getBitsLeaderboard', () {
      test(
        'should call getCall on bits/leaderboard and return a valid BitsLeaderboardResponse',
        () async {
          const path = ['bits', 'leaderboard'];
          final queryParams = {
            'count': '10',
            'period': TwitchTimePeriod.all.name,
          };

          when(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          ).thenAnswer((_) async => readJson('get_bits_leaderboard.json'));

          await client.getBitsLeaderboard();

          verify(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          );
        },
      );
    });

    group('getUsers', () {
      test(
        'should call getCall on users and return a valid UsersResponse',
        () async {
          const path = ['users'];

          when(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: any(named: 'queryParameters'),
            ),
          ).thenAnswer((_) async => readJson('get_users.json'));

          await client.getUsers(ids: ['123']);

          verify(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: any(named: 'queryParameters'),
            ),
          );
        },
      );
    });

    group('getUsersFollows', () {
      test(
        'should call getCall on users/follows and return a valid UsersFollowsResponse',
        () async {
          const path = ['users', 'follows'];
          const fromId = '123';
          const queryParams = {'first': '20', 'from_id': fromId};

          when(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          ).thenAnswer((_) async => readJson('get_users_follows.json'));

          await client.getUsersFollows(fromId: fromId);

          verify(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          );
        },
      );
    });

    group('getTopGames', () {
      test(
        'should call getCall on games/top and return a valid GamesResponse',
        () async {
          const path = ['games', 'top'];
          const queryParams = {'first': '20'};

          when(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          ).thenAnswer((_) async => readJson('get_top_games.json'));

          await client.getTopGames();

          verify(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          );
        },
      );
    });

    group('getGames', () {
      test(
        'should call getCall on games and return a valid GamesResponse',
        () async {
          const path = ['games'];
          const ids = ['123'];
          final queryParams = {'id': ids.join(',')};

          when(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          ).thenAnswer((_) async => readJson('get_games.json'));

          await client.getGames(ids: ids);

          verify(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          );
        },
      );
    });

    group('getChannelInformations', () {
      test(
        'should call getCall on channels and return a valid ChannelsResponse',
        () async {
          const path = ['channels'];
          const id = '141981764';
          final queryParams = {'broadcaster_id': id};

          when(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          ).thenAnswer((_) async => readJson('get_channel_informations.json'));

          await client.getChannelInformations(id);

          verify(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          );
        },
      );
    });

    group('searchCategories', () {
      test(
        'should call getCall on search/categories and return a valid CategoriesResponse',
        () async {
          const path = ['search', 'categories'];
          const query = 'fort';
          final queryParams = {'query': query, 'first': '20'};

          when(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          ).thenAnswer((_) async => readJson('search_categories.json'));

          await client.searchCategories(query: query);

          verify(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          );
        },
      );
    });

    group('searchChannels', () {
      test(
        'should call getCall on search/channels and return a valid ChannelsResponse',
        () async {
          const path = ['search', 'channels'];
          const query = 'fort';
          final queryParams = {
            'query': query,
            'first': '20',
            'live_only': 'false',
          };

          when(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          ).thenAnswer((_) async => readJson('search_channels.json'));

          await client.searchChannels(query: query);

          verify(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          );
        },
      );
    });

    group('getStreams', () {
      test(
        'should call getCall on streams and return a valid StreamsResponse',
        () async {
          const path = ['streams'];
          final queryParams = {'first': '20'};

          when(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          ).thenAnswer((_) async => readJson('get_streams.json'));

          await client.getStreams();

          verify(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          );
        },
      );
    });

    group('getBroadcasterSubscriptions', () {
      test(
        'should call getCall on subscriptions and return a valid SubscriptionsResponse',
        () async {
          const path = ['subscriptions'];
          const id = '141981764';
          const queryParams = {
            'broadcaster_id': id,
            'first': '20',
          };

          when(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          ).thenAnswer(
            (_) async => readJson('get_broadcaster_subscriptions.json'),
          );

          await client.getBroadcasterSubscriptions(broadcasterId: id);

          verify(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: queryParams,
            ),
          );
        },
      );
    });

    group('getCheermotes', () {
      test(
          'should call getCall on bits/cheermotes and return a valid CheermotesResponse',
          () async {
        const path = ['bits', 'cheermotes'];

        when(
          () => mockHttpClient.getCall<Map<String, dynamic>>(
            path,
            queryParameters: any(named: 'queryParameters'),
          ),
        ).thenAnswer((_) async => readJson('get_cheermotes.json'));

        await client.getCheermotes();

        verify(
          () => mockHttpClient.getCall<Map<String, dynamic>>(
            path,
            queryParameters: any(named: 'queryParameters'),
          ),
        );
      });
    });

    group('getExtensionTransactions', () {
      test(
          'should call getCall on extensions/transactions and return a valid ExtensionTransactionResponse',
          () async {
        const path = ['extensions', 'transactions'];
        const id = '1234';
        const queryParams = {
          'extension_id': id,
          'first': '20',
        };

        when(
          () => mockHttpClient.getCall<Map<String, dynamic>>(
            path,
            queryParameters: queryParams,
          ),
        ).thenAnswer(
          (_) async => readJson('get_extension_transactions.json'),
        );

        await client.getExtensionTransactions(extensionId: id);

        verify(
          () => mockHttpClient.getCall<Map<String, dynamic>>(
            path,
            queryParameters: queryParams,
          ),
        );
      });
    });

    group('getChannelEditors', () {
      test(
          'should call getCall on channels/editors and return a valid ChannelEditorsResponse',
          () async {
        const path = ['channels', 'editors'];
        const id = '1234';
        const queryParams = {'broadcaster_id': id};

        when(
          () => mockHttpClient.getCall<Map<String, dynamic>>(
            path,
            queryParameters: queryParams,
          ),
        ).thenAnswer(
          (_) async => readJson('get_channel_editors.json'),
        );

        await client.getChannelEditors(broadcasterId: id);

        verify(
          () => mockHttpClient.getCall<Map<String, dynamic>>(
            path,
            queryParameters: queryParams,
          ),
        );
      });
    });

    group('createCustomRewards', () {
      test(
        'should call postCall on channel_points/custom_rewards and return a valid CustomRewardResponse',
        () async {
          const path = ['channel_points', 'custom_rewards'];
          const title = 'title';
          const cost = 100;
          const id = '92af127c-7326-4483-a52b-b0da0be61c01';
          const queryParams = {'broadcaster_id': id};

          when(
            () => mockHttpClient.postCall<Map<String, dynamic>>(
              path,
              any(),
              queryParameters: queryParams,
            ),
          ).thenAnswer(
            (_) async => readJson('create_custom_rewards.json'),
          );

          await client.createCustomRewards(
            broadcasterId: id,
            title: title,
            cost: cost,
          );

          verify(
            () => mockHttpClient.postCall<Map<String, dynamic>>(
              path,
              any(),
              queryParameters: queryParams,
            ),
          );
        },
      );
    });

    group('deleteCustomReward', () {
      test(
        'should call deleteCall on channel_points/custom_rewards and return a valid CustomRewardResponse',
        () async {
          const path = ['channel_points', 'custom_rewards'];
          const broadcasterId = '92af127c-7326-4483-a52b-b0da0be61c01';
          const rewardId = '92af127c-7326-4483-a52b-b0da0be61c01';
          const queryParams = {
            'broadcaster_id': broadcasterId,
            'id': rewardId,
          };

          when(
            () => mockHttpClient.deleteCall<String>(
              path,
              queryParameters: queryParams,
            ),
          ).thenAnswer((_) async => null);

          await client.deleteCustomReward(
            broadcasterId: broadcasterId,
            rewardId: rewardId,
          );

          verify(
            () => mockHttpClient.deleteCall<String>(
              path,
              queryParameters: queryParams,
            ),
          );
        },
      );
    });

    group('getCustomRewards', () {
      test(
        'should call getCall on channel_points/custom_rewards and return a valid CustomRewardResponse',
        () async {
          const path = ['channel_points', 'custom_rewards'];
          const id = '92af127c-7326-4483-a52b-b0da0be61c01';

          when(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: any(named: 'queryParameters'),
            ),
          ).thenAnswer(
            (_) async => readJson('get_custom_rewards.json'),
          );

          await client.getCustomRewards(broadcasterId: id);

          verify(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: any(named: 'queryParameters'),
            ),
          );
        },
      );
    });

    group('getCustomRewardRedemptions', () {
      test(
        'should call getCall on channel_points/custom_rewards/redemptions and return a valid CustomRewardRedemptionResponse',
        () {
          const path = ['channel_points', 'custom_rewards', 'redemptions'];
          const rewardId = '92af127c-7326-4483-a52b-b0da0be61c01';
          const broadcasterId = '274637212';

          when(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: any(named: 'queryParameters'),
            ),
          ).thenAnswer(
            (_) async => readJson('get_custom_reward_redemption.json'),
          );

          client.getCustomRewardRedemptions(
            broadcasterId: broadcasterId,
            rewardId: rewardId,
            status: TwitchRewardRedemptionStatus.canceled,
          );

          verify(
            () => mockHttpClient.getCall<Map<String, dynamic>>(
              path,
              queryParameters: any(named: 'queryParameters'),
            ),
          );
        },
      );
    });

    group('updateCustomReward', () {
      const path = ['channel_points', 'custom_rewards'];
      const broadcasterId = '92af127c-7326-4483-a52b-b0da0be61c01';
      const rewardId = '92af127c-7326-4483-a52b-b0da0be61c01';

      test(
        'should call patchCall on channel_points/custom_rewards and return a valid CustomRewardResponse',
        () async {
          when(
            () => mockHttpClient.patchCall<Map<String, dynamic>>(
              path,
              any(),
              queryParameters: any(named: 'queryParameters'),
            ),
          ).thenAnswer(
            (_) async => readJson('update_custom_reward.json'),
          );

          await client.updateCustomReward(
            broadcasterId: broadcasterId,
            rewardId: rewardId,
            title: 'title',
          );

          verify(
            () => mockHttpClient.patchCall<Map<String, dynamic>>(
              path,
              any(),
              queryParameters: any(named: 'queryParameters'),
            ),
          );
        },
      );
    });

    group('updateRedemptionStatus', () {
      test(
        'should call patchCall on channel_points/custom_rewards/redemptions and return a valid CustomRewardRedemptionResponse',
        () async {
          const path = ['channel_points', 'custom_rewards', 'redemptions'];
          const ids = ['17fa2df1-ad76-4804-bfa5-a40ef63efe63'];
          const broadcasterId = '274637212';
          const rewardId = '92af127c-7326-4483-a52b-b0da0be61c01';

          when(
            () => mockHttpClient.patchCall<Map<String, dynamic>>(
              path,
              any(),
              queryParameters: any(named: 'queryParameters'),
            ),
          ).thenAnswer(
            (_) async => readJson('update_redemption_status.json'),
          );

          await client.updateRedemptionStatus(
            ids: ids,
            broadcasterId: broadcasterId,
            rewardId: rewardId,
            status: TwitchRewardRedemptionStatus.canceled,
          );

          verify(
            () => mockHttpClient.patchCall<Map<String, dynamic>>(
              path,
              any(),
              queryParameters: any(named: 'queryParameters'),
            ),
          );
        },
      );
    });
  });
}
