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

    group('GET', () {
      test('Cheermotes', () async {
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

      group('Streams', () {
        test('1', () async {
          final data = (await client.getStreams()).data!;
          expect(data.length, 1);

          final twitchStreamInfo = data.first;
          expect(twitchStreamInfo.id, '41375541868');
          expect(twitchStreamInfo.userId, '459331509');
          expect(twitchStreamInfo.userLogin, 'auronplay');
          expect(twitchStreamInfo.userName, 'auronplay');
          expect(twitchStreamInfo.gameId, '494131');
          expect(twitchStreamInfo.gameName, 'Little Nightmares');
          expect(twitchStreamInfo.type, TwitchStreamType.live);
          expect(
            twitchStreamInfo.title,
            'hablamos y le damos a Little Nightmares 1',
          );
          expect(twitchStreamInfo.viewerCount, 78365);
          expect(twitchStreamInfo.language, 'es');
          expect(
            twitchStreamInfo.thumbnailUrl,
            'https://static-cdn.jtvnw.net/previews-ttv/live_user_auronplay-{width}x{height}.jpg',
          );
          expect(
            twitchStreamInfo.tagIds,
            ['d4bb9c58-2141-4881-bcdc-3fe0505457d1'],
          );
          expect(twitchStreamInfo.isMature, false);
        });

        test('2', () async {
          final data = (await client.getStreams(
            after:
                'eyJiIjp7IkN1cnNvciI6ImV5SnpJam8zT0RNMk5TNDBORFF4TlRjMU1UY3hOU3dpWkNJNlptRnNjMlVzSW5RaU9uUnlkV1Y5In0sImEiOnsiQ3Vyc29yIjoiZXlKeklqb3hOVGs0TkM0MU56RXhNekExTVRZNU1ESXNJbVFpT21aaGJITmxMQ0owSWpwMGNuVmxmUT09In19',
          ))
              .data!;
          expect(data.length, 1);

          final twitchStreamInfo = data.first;
          expect(twitchStreamInfo.id, '40944942733');
          expect(twitchStreamInfo.userId, '67931625');
          expect(twitchStreamInfo.userLogin, 'amar');
          expect(twitchStreamInfo.userName, 'Amar');
          expect(twitchStreamInfo.gameId, '33214');
          expect(twitchStreamInfo.gameName, 'Fortnite');
          expect(twitchStreamInfo.type, TwitchStreamType.live);
          expect(
            twitchStreamInfo.title,
            '27h Stream Pringles Deathrun Map + 12k MK Turnier | !sub !JustLegends !Pc !yfood',
          );
          expect(twitchStreamInfo.viewerCount, 14944);
          expect(twitchStreamInfo.language, 'de');
          expect(
            twitchStreamInfo.thumbnailUrl,
            'https://static-cdn.jtvnw.net/previews-ttv/live_user_amar-{width}x{height}.jpg',
          );
          expect(
            twitchStreamInfo.tagIds,
            ['9166ad14-41f1-4b04-a3b8-c8eb838c6be6'],
          );
          expect(twitchStreamInfo.isMature, false);
        });
      });

      test('Channel Editors', () async {
        final data = (await client.getChannelEditors(broadcasterId: '')).data;
        expect(data!.length, 2);

        final channelEditor = data.first;
        expect(channelEditor.userId, '182891647');
        expect(channelEditor.userName, 'mauerbac');
      });

      group('Custom Rewards', () {
        test('1', () async {
          final data = (await client.getCustomRewards()).data;

          expect(data!.length, 1);
        });

        test('2', () async {
          final data =
              (await client.getCustomRewards(onlyManageableRewards: true)).data;
          expect(data!.length, 1);
        });

        test('3', () async {
          final data = (await client.getCustomRewards(
            ids: ['92af127c-7326-4483-a52b-b0da0be61c01'],
          ))
              .data;
          expect(data!.length, 1);
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

      test('Broadcaster Subscriptions', () async {
        final response = await client.getBroadcasterSubscriptions();
        expect(response.data!.length, 1);
        expect(response.total, 13);

        final subscription = response.data!.first;
        expect(subscription.broadcasterId, '141981764');
      });

      test('Users', () async {
        final data = (await client.getUsers(ids: ['141981764'])).data;
        expect(data.length, 1);

        final user = data.first;
        expect(user.id, '141981764');
        expect(user.login, 'twitchdev');
        expect(user.displayName, 'TwitchDev');
        expect(user.type, '');
        expect(user.broadcasterType, TwitchBroadcasterType.partner);
        expect(
          user.description,
          'Supporting third-party developers building Twitch integrations from chatbots to game integrations.',
        );
        expect(
          user.profileImageUrl,
          'https://static-cdn.jtvnw.net/jtv_user_pictures/8a6381c7-d0c0-4576-b179-38bd5ce1d6af-profile_image-300x300.png',
        );
        expect(
          user.offlineImageUrl,
          'https://static-cdn.jtvnw.net/jtv_user_pictures/3f13ab61-ec78-4fe6-8481-8682cb3b0ac2-channel_offline_image-1920x1080.png',
        );
        expect(user.viewCount, 5980557);
        expect(user.email, 'not-real@email.com');
        expect(user.createdAt, '2016-12-14T20:32:28.894263Z');
      });

      test('Channel Informations', () async {
        final data = (await client.getChannelInformations('141981764')).data!;
        expect(data.length, 1);

        final channel = data.first;
        expect(channel.broadcasterId, '141981764');
        expect(channel.broadcasterName, 'TwitchDev');
        expect(channel.broadcasterLanguage, 'en');
        expect(channel.gameId, '509670');
        expect(channel.gameName, 'Science & Technology');
        expect(channel.title, 'TwitchDev Monthly Update // May 6, 2021');
        expect(channel.delay, 0);
      });

      test('Games', () async {
        final data = (await client.getGames(ids: ['493057'])).data!;
        expect(data.length, 1);

        final game = data.first;
        expect(game.id, '33214');
        expect(
          game.getBoxArtUrl(),
          'https://static-cdn.jtvnw.net/ttv-boxart/Fortnite-52x72.jpg',
        );
        expect(game.name, 'Fortnite');
      });

      test('Users Follows', () async {
        final data = (await client.getUsersFollows(toId: '23161357')).data!;
        expect(data.length, 2);

        final user = data.first;
        expect(user.fromId, '171003792');
        expect(user.fromLogin, 'iiisutha067iii');
        expect(user.fromName, 'IIIsutha067III');
        expect(user.toId, '23161357');
        expect(user.toName, 'LIRIK');
        expect(user.followedAt.toIso8601String(), '2017-08-22T22:55:24.000Z');
      });

      test('Top Games', () async {
        final data = (await client.getTopGames()).data!;
        expect(data.length, 1);

        final game = data.first;
        expect(game.id, '493057');
        expect(game.name, "PLAYERUNKNOWN'S BATTLEGROUNDS");
        expect(
          game.getBoxArtUrl(),
          'https://static-cdn.jtvnw.net/ttv-boxart/PLAYERUNKNOWN%27S%20BATTLEGROUNDS-285x380.jpg',
        );
      });

      test('Search Categories', () async {
        final data = (await client.searchCategories(query: 'fort')).data!;
        expect(data.length, 1);

        final category = data.first;
        expect(category.id, '33214');
        expect(category.name, 'Fortnite');
        expect(
          category.getBoxArtUrl(),
          'https://static-cdn.jtvnw.net/ttv-boxart/Fortnite-285x380.jpg',
        );
      });

      test('Search Channels', () async {
        final data = (await client.searchChannels(query: 'loserfruit')).data!;
        expect(data.length, 1);

        final channel = data.first;
        expect(channel.id, '41245072');
        expect(channel.displayName, 'Loserfruit');
        expect(channel.gameName, 'House Flipper');
        expect(channel.gameId, '498000');
        expect(channel.broadcasterLanguage, 'en');
        expect(channel.broadcasterLogin, 'loserfruit');
        expect(channel.isLive, false);
        expect(channel.tagIds.isEmpty, true);
        expect(
          channel.thumbnailUrl,
          'https://static-cdn.jtvnw.net/jtv_user_pictures/fd17325a-7dc2-46c6-8617-e90ec259501c-profile_image-300x300.png',
        );
        expect(channel.title, 'loserfruit');
        expect(channel.startedAt, isNull);
      });
    });

    group('POST', () {
      test('Create Custom Rewards', () async {
        final data = (await client.createCustomRewards(
          title: 'game analysis 1v1',
          cost: 50000,
        ))
            .data;
        expect(data!.length, 1);

        final customReward = data.first;
        expect(customReward.broadcasterName, 'torpedo09');
        expect(customReward.broadcasterLogin, 'torpedo09');
        expect(customReward.broadcasterId, '274637212');
        expect(customReward.id, 'afaa7e34-6b17-49f0-a19a-d1e76eaaf673');
        expect(customReward.image, isNull);
        expect(customReward.backgroundColor, '#00E5CB');
        expect(customReward.isEnabled, true);
        expect(customReward.cost, 50000);
        expect(customReward.title, 'game analysis 1v1');
        expect(customReward.prompt, '');
        expect(customReward.isUserInputRequired, false);
        expect(customReward.maxPerStreamSetting.isEnabled, false);
        expect(customReward.maxPerStreamSetting.maxPerStream, 0);
        expect(customReward.maxPerUserPerStreamSetting.isEnabled, false);
        expect(customReward.maxPerUserPerStreamSetting.maxPerUserPerStream, 0);
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
        expect(customReward.shouldRedemptionsSkipRequestQueue, false);
        expect(customReward.redemptionsRedeemedCurrentStream, isNull);
        expect(customReward.cooldownExpiresAt, isNull);
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
          expect(data!.length, 1);

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
          expect(data!.length, 1);

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
