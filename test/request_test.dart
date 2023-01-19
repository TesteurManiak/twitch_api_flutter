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

    group('GET', () {
      group('Custom Rewards', () {
        test('1', () async {
          final data = (await client.getCustomRewards()).data;

          expect(data.length, 1);
        });

        test('2', () async {
          final data =
              (await client.getCustomRewards(onlyManageableRewards: true)).data;
          expect(data.length, 1);
        });

        test('3', () async {
          final data = (await client.getCustomRewards(
            ids: ['92af127c-7326-4483-a52b-b0da0be61c01'],
          ))
              .data;
          expect(data.length, 1);
        });
      });

      group('Custom Reward Redemption', () {
        test('1', () async {
          final data = (await client.getCustomRewardRedemptions(
            rewardId: '92af127c-7326-4483-a52b-b0da0be61c01',
            status: TwitchRewardRedemptionStatus.canceled,
          ))
              .data;
          expect(data!.length, 1);
        });

        test('2', () async {
          final data = (await client.getCustomRewardRedemptions(
            rewardId: '92af127c-7326-4483-a52b-b0da0be61c01',
            ids: ['17fa2df1-ad76-4804-bfa5-a40ef63efe63'],
          ))
              .data;
          expect(data!.length, 1);
        });
      });
    });

    group('DELETE', () {
      test('Delete Custom Reward', () async {
        final data = await client.deleteCustomReward(
          id: 'b045196d-9ce7-4a27-a9b9-279ed341ab28',
        );
        expect(data, '204 No Content');
      });
    });

    group('PATCH', () {
      group('Update Custom Reward', () {
        test('Parameters', () {
          expect(
            () => client.updateCustomReward(
              broadcasterId: '',
              id: '',
              cost: -1,
            ),
            throwsA(isA<AssertionError>()),
          );

          expect(
            () => client.updateCustomReward(
              broadcasterId: '',
              id: '',
              isMaxPerStreamEnabled: true,
            ),
            throwsA(isA<AssertionError>()),
          );

          expect(
            () => client.updateCustomReward(
              broadcasterId: '',
              id: '',
              maxPerStream: 1,
            ),
            throwsA(isA<AssertionError>()),
          );

          expect(
            () => client.updateCustomReward(
              broadcasterId: '',
              id: '',
              isMaxPerUserPerStreamEnabled: true,
            ),
            throwsA(isA<AssertionError>()),
          );

          expect(
            () => client.updateCustomReward(
              broadcasterId: '',
              id: '',
              maxPerUserPerStream: 1,
            ),
            throwsA(isA<AssertionError>()),
          );

          expect(
            () => client.updateCustomReward(
              broadcasterId: '',
              id: '',
              isGlobalCooldownEnabled: true,
            ),
            throwsA(isA<AssertionError>()),
          );
          expect(
            () => client.updateCustomReward(
              broadcasterId: '',
              id: '',
              globalCooldownSeconds: 1,
            ),
            throwsA(isA<AssertionError>()),
          );
        });

        test('1', () async {
          final data = (await client.updateCustomReward(
            broadcasterId: '274637212',
            id: '92af127c-7326-4483-a52b-b0da0be61c01',
            isEnabled: false,
          ))
              .data;
          expect(data.length, 1);

          final customReward = data.first;
          expect(customReward.broadcasterName, 'torpedo09');
          expect(customReward.broadcasterLogin, 'torpedo09');
          expect(customReward.broadcasterId, '274637212');
          expect(customReward.id, '92af127c-7326-4483-a52b-b0da0be61c01');
          expect(customReward.image, isNull);
          expect(customReward.backgroundColor, '#00E5CB');
          expect(customReward.isEnabled, false);
          expect(customReward.cost, 30000);
          expect(customReward.title, 'game analysis 2v2');
          expect(customReward.prompt, '');
          expect(customReward.isUserInputRequired, false);
          expect(customReward.maxPerStreamSetting.isEnabled, true);
          expect(customReward.maxPerStreamSetting.maxPerStream, 60);
          expect(customReward.maxPerUserPerStreamSetting.isEnabled, false);
          expect(
            customReward.maxPerUserPerStreamSetting.maxPerUserPerStream,
            0,
          );
          expect(customReward.globalCooldownSetting.isEnabled, false);
          expect(customReward.globalCooldownSetting.globalCooldownSeconds, 0);
          expect(customReward.isPaused, false);
          expect(customReward.isInStock, false);
          expect(
            customReward.defaultImage.url1x,
            'https://static-cdn.jtvnw.net/custom-reward-images/default-1.png',
          );
          expect(
            customReward.defaultImage.url2x,
            'https://static-cdn.jtvnw.net/custom-reward-images/default-2.png',
          );
          expect(
            customReward.defaultImage.url4x,
            'https://static-cdn.jtvnw.net/custom-reward-images/default-4.png',
          );
          expect(customReward.shouldRedemptionsSkipRequestQueue, true);
          expect(customReward.redemptionsRedeemedCurrentStream, 60);
          expect(customReward.cooldownExpiresAt, isNull);
        });

        test('2', () async {
          final data = (await client.updateCustomReward(
            broadcasterId: '274637212',
            id: '92af127c-7326-4483-a52b-b0da0be61c01',
            title: 'game analysis 2v2',
          ))
              .data;
          expect(data.length, 1);

          final customReward = data.first;
          expect(customReward.broadcasterName, 'torpedo09');
          expect(customReward.broadcasterLogin, 'torpedo09');
          expect(customReward.broadcasterId, '274637212');
          expect(customReward.id, '92af127c-7326-4483-a52b-b0da0be61c01');
          expect(customReward.image, isNull);
          expect(customReward.backgroundColor, '');
          expect(customReward.isEnabled, false);
          expect(customReward.cost, 30000);
          expect(customReward.title, 'game analysis 2v2');
          expect(customReward.prompt, '');
          expect(customReward.isUserInputRequired, false);
          expect(customReward.maxPerStreamSetting.isEnabled, true);
          expect(customReward.maxPerStreamSetting.maxPerStream, 60);
          expect(customReward.maxPerUserPerStreamSetting.isEnabled, false);
          expect(
            customReward.maxPerUserPerStreamSetting.maxPerUserPerStream,
            0,
          );
          expect(customReward.globalCooldownSetting.isEnabled, false);
          expect(customReward.globalCooldownSetting.globalCooldownSeconds, 0);
          expect(customReward.isPaused, false);
          expect(customReward.isInStock, true);
          expect(
            customReward.defaultImage.url1x,
            'https://static-cdn.jtvnw.net/custom-reward-images/default-1.png',
          );
          expect(
            customReward.defaultImage.url2x,
            'https://static-cdn.jtvnw.net/custom-reward-images/default-2.png',
          );
          expect(
            customReward.defaultImage.url4x,
            'https://static-cdn.jtvnw.net/custom-reward-images/default-4.png',
          );
          expect(customReward.shouldRedemptionsSkipRequestQueue, true);
          expect(customReward.redemptionsRedeemedCurrentStream, 60);
          expect(customReward.cooldownExpiresAt, isNull);
        });

        test('3', () async {
          await client.updateCustomReward(
            broadcasterId: '274637212',
            id: '92af127c-7326-4483-a52b-b0da0be61c01',
            title: 'game analysis 2v2',
            prompt: '',
            cost: 30000,
            isUserInputRequired: true,
            isMaxPerStreamEnabled: true,
            maxPerStream: 60,
            isMaxPerUserPerStreamEnabled: true,
            maxPerUserPerStream: 60,
            isGlobalCooldownEnabled: true,
            globalCooldownSeconds: 60,
          );
        });
      });

      group('Update Redemption Status', () {
        test('Parameters', () {
          expect(
            () => client.updateRedemptionStatus(
              broadcasterId: '',
              ids: [],
              rewardId: '',
              status: TwitchRewardRedemptionStatus.canceled,
            ),
            throwsA(isA<AssertionError>()),
          );

          expect(
            () => client.updateRedemptionStatus(
              broadcasterId: '',
              ids: ['1'],
              rewardId: '',
              status: TwitchRewardRedemptionStatus.unfulfilled,
            ),
            throwsA(isA<AssertionError>()),
          );
        });

        test('1', () async {
          final data = (await client.updateRedemptionStatus(
            ids: ['17fa2df1-ad76-4804-bfa5-a40ef63efe63'],
            broadcasterId: '274637212',
            rewardId: '92af127c-7326-4483-a52b-b0da0be61c01',
            status: TwitchRewardRedemptionStatus.canceled,
          ))
              .data;
          expect(data!.length, 1);

          final redemption = data.first;
          expect(redemption.broadcasterName, 'torpedo09');
          expect(redemption.broadcasterLogin, 'torpedo09');
          expect(redemption.broadcasterId, '274637212');
          expect(redemption.id, '17fa2df1-ad76-4804-bfa5-a40ef63efe63');
          expect(redemption.userId, '274637212');
          expect(redemption.userName, 'torpedo09');
          expect(redemption.userLogin, 'torpedo09');
          expect(redemption.userInput, '');
          expect(redemption.status, TwitchRewardRedemptionStatus.canceled);
          expect(
            redemption.redeemedAt.toIso8601String(),
            '2020-07-01T18:37:32.000Z',
          );
          expect(redemption.reward.id, '92af127c-7326-4483-a52b-b0da0be61c01');
          expect(redemption.reward.title, 'game analysis');
          expect(redemption.reward.cost, 50000);
          expect(redemption.reward.prompt, '');
        });
      });
    });
  });
}
