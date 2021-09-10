import 'package:test/test.dart';
import 'package:twitch_api/twitch_api.dart';

import 'test_utils.dart';

void main() {
  group('TwitchClient', () {
    final client = TwitchClient(
      clientId: '',
      redirectUri: '',
      token: TwitchToken.fromUrl(
        'http://localhost/#access_token=test&token_type=type&scope=scope',
      ),
    );

    test('TwitchClient with non null token', () {
      final token = client.twitchHttpClient.twitchToken;
      expect(token.token, 'test');
      expect(token.tokenType, 'type');
      expect(token.scope, 'scope');
    });
  });

  group('Request', () {
    final client = TwitchClient(
      clientId: '',
      redirectUri: '',
      twitchHttpClient: TwitchMockProvider(),
    );

    test('authorizeUri', () {
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

    group('GET', () {
      test('Cheermotes', () async {
        final data = (await client.getCheermotes()).data;
        expect(data!.length, 1);

        final cheermote = data.first;
        expect(cheermote.prefix, 'Cheer');
        expect(cheermote.type, TwitchCheermoteType.globalFirstParty);
        expect(cheermote.lastUpdated.year, 2018);
        expect(cheermote.lastUpdated.month, 5);
        expect(cheermote.lastUpdated.day, 22);
        expect(cheermote.isCharitable, false);
        expect(cheermote.tiers.length, 1);

        final cheermoteTier = cheermote.tiers.first;
        expect(cheermoteTier.minBits, 1);
        expect(cheermoteTier.id, '1');
        expect(cheermoteTier.color, '#979797');
        expect(cheermoteTier.canCheer, true);
        expect(cheermoteTier.showInBitsCard, true);
        expect(cheermoteTier.images.dark.animated.length, 5);
        expect(cheermoteTier.images.dark.staticImgs.length, 5);

        final darkAnimated = cheermoteTier.images.dark.animated;
        expect(darkAnimated.containsKey('1'), true);
        expect(darkAnimated['1'],
            'https://d3aqoihi2n8ty8.cloudfront.net/actions/cheer/dark/animated/1/1.gif');

        final darkStatic = cheermoteTier.images.dark.staticImgs;
        expect(darkStatic.containsKey('1'), true);
        expect(darkStatic['1'],
            'https://d3aqoihi2n8ty8.cloudfront.net/actions/cheer/dark/static/1/1.png');
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
          expect(twitchStreamInfo.title,
              'hablamos y le damos a Little Nightmares 1');
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

      test('Bits Leaderboard', () async {
        final data = (await client.getBitsLeaderboard(
          count: 2,
          period: TwitchTimePeriod.week,
        ))
            .data;
        expect(data!.length, 2);

        final leaderboard = data.first;
        expect(leaderboard.userId, '158010205');
        expect(leaderboard.userLogin, 'tundracowboy');
        expect(leaderboard.userName, 'TundraCowboy');
        expect(leaderboard.rank, 1);
        expect(leaderboard.score, 12543);
      });

      test('Broadcaster Subscriptions', () async {
        final response = await client.getBroadcasterSubscriptions();
        expect(response.data!.length, 1);
        expect(response.total, 13);

        final subscription = response.data!.first;
        expect(subscription.broadcasterId, '141981764');
      });

      test('Extension Analytics', () async {
        final response = await client.getExtensionAnalytics();
        expect(response.data!.length, 1);
        expect(
          response.pagination!['cursor'],
          'eyJiIjpudWxsLCJhIjp7Ik9mZnNldCI6NX19',
        );

        final analytics = response.data!.first;
        expect(analytics.extensionId, 'efgh');
        expect(
          analytics.url,
          'https://twitch-piper-reports.s3-us-west-2.amazonaws.com/dynamic/LoL%20ADC_overview_v2_2018-03-01_2018-06-01_8a879932-8e70-7a4c-2b97-e0eaba28c3b0.csv?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIAI7LOPgTrAIVYE6KQ%2F20180731%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20180731T202847Z&X-Amz-Expires=60&X-Amz-Security-Token=FQoDYXdzEDMaDObdwyOVISdo6feHSSK3A9R9gMFeS5frG5Dsr4k4tJemqCIazhsQJrpsehBoOufaQkCxrb8RD3oU0xC5pWrZe9kN%2BnezIoLOgTtFRAqTzdIr7J5iUOxGFyKN9XmrmUHGexFfALvoPQWUJNbxoFU6shajSmO3sPK2GnuEaGmIrAqjKrim8saLHDV%2FdSi2ZH3fFx6sBQEGv13Lx0zua7AsvaL%2BSfhIAcOazWjYLMU5N9bxXmaN7IAIF4UjNPqbg07RMWW70hm0edH0RPi%2Fw00faeeSvmreHq6c1C1Lu8a7AysMb0pEGBT7VxmuGmWsXyjLWZ6oNgbx88HXoMJpmAn5Y1hUu7VzOaa84T%2BmCF5Sbn7hbB1xIiPdzaVQ%2Bd85sy4ln09h7dgKh6GFE1VTas2v7RJU1lyD%2FZ%2FWKBwV5Ol8GEGrF1pme8mSBpPGUAJ4vxjLmrGL7ctty%2F0vXke3PyD%2B4%2FtHZ67xaw0y8EKrau23Xvt3blkcDNoQYOfcS%2FqbaK%2BHpyVq4bIBtQq%2BHYU5MuFkgEuwSe5zPDle1ysKSN11B6B6Sy7Httrq542OONS%2BfURkczMbKSPEShddN32Y9VUqKYdUo%2FsWVQQoy7uC2wU%3D&X-Amz-SignedHeaders=host&response-content-disposition=attachment%3Bfilename%3D%22WoW%20Armory_overview_v1_2018-04-30_2018-06-01.csv%22&X-Amz-Signature=eb7721e40cbfd1d7409887dae3792cdb2add025ace953a63ba8e3545b92ae058',
        );
        expect(analytics.type, 'overview_v2');
        expect(analytics.dateRange.startedAt, '2018-03-01T00:00:00Z');
        expect(analytics.dateRange.endedAt, '2018-06-01T00:00:00Z');
      });

      group('Game Analytics', () {
        test('1', () async {
          final data = (await client.getGameAnalytics(
            gameId: '493057',
            startedAt: '2018-01-01T00:00:00Z',
            endedAt: '2018-03-01T00:00:00Z',
          ))
              .data!;
          expect(data.length, 1);

          final analytics = data.first;
          expect(analytics.gameId, '493057');
          expect(analytics.url,
              'https://twitch-piper-reports.s3-us-west-2.amazonaws.com/games/66170/overview/1518307200000.csv?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIAJP7WFIAF26K7BC2Q%2F20180222%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20180222T220651Z&X-Amz-Expires=60&X-Amz-Security-Token=FQoDYXdzEE0aDLKNl9aCgfuikMKI%2ByK3A4e%2FR%2B4to%2BmRZFUuslNKs%2FOxKeySB%2BAU87PBtNGCxQaQuN2Q8KI4Vg%2Bve2x5eenZdoH0ZM7uviM94sf2GlbE9Z0%2FoJRmNGNhlU3Ua%2FupzvByCoMdefrU8Ziiz4j8EJCgg0M1j2aF9f8bTC%2BRYwcpP0kjaZooJS6RFY1TTkh659KBA%2By%2BICdpVK0fxOlrQ%2FfZ6vIYVFzvywBM05EGWX%2F3flCIW%2BuZ9ZxMAvxcY4C77cOLQ0OvY5g%2F7tuuGSO6nvm9Eb8MeMEzSYPr4emr3zIjxx%2Fu0li9wjcF4qKvdmnyk2Bnd2mepX5z%2BVejtIGBzfpk%2Fe%2FMqpMrcONynKoL6BNxxDL4ITo5yvVzs1x7OumONHcsvrTQsd6aGNQ0E3lrWxcujBAmXmx8n7Qnk4pZnHZLgcBQam1fIGba65Gf5Ern71TwfRUsolxnyIXyHsKhd2jSmXSju8jH3iohjv99a2vGaxSg8SBCrQZ06Bi0pr%2FTiSC52U1g%2BlhXYttdJB4GUdOvaxR8n6PwMS7HuAtDJUui8GKWK%2F9t4OON3qhF2cBt%2BnV%2BDg8bDMZkQ%2FAt5blvIlg6rrlCu0cYko4ojb281AU%3D&X-Amz-SignedHeaders=host&response-content-disposition=attachment%3Bfilename%3DWarframe-overview-2018-02-11.csv&X-Amz-Signature=49cc07cbd9d753b00315b66f49b9e4788570062ff3bd956288ab4f164cf96708');
          expect(analytics.type, 'overview_v2');
          expect(analytics.dateRange.startedAt, '2018-01-01T00:00:00Z');
          expect(analytics.dateRange.endedAt, '2018-03-01T00:00:00Z');
        });

        test('2', () async {
          final response = await client.getGameAnalytics(first: 5);
          expect(response.data!.length, 1);
          expect(response.pagination!['cursor'], 'eyJiIjpudWxsLJxhIjoiIn0gf5');

          final analytics = response.data!.first;
          expect(analytics.gameId, '9821');
          expect(analytics.url,
              'https://twitch-piper-reports.s3-us-west-2.amazonaws.com/games/9821/overview/1526428800000.csv?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIAJQ4MLJCNPIYDOZ4Q%2F20180517%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20180517T231129Z&X-Amz-Expires=60&X-Amz-Security-Token=FQoDYXdzEK7%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaDD0JCM06UswayN4iVyK3AzIiwI0Qf4KRs2yk9nCiocQOwmMWa7FPJnJEd%2FIxljnmZy%2BphQEEWN3%2Bt8k06wZysfPHvW71zcrIeclv11kNtXaYojC%2FHVKJWO8EnicIQE73kokr16fkf1Q4eglQBuu56jJQoTsEn2UkgZff9XHx69LyFvLYf33ue10CjeJE1bY65%2B6LtcPKciJK%2FNRS1TyUsz%2FiQjyxMEUpAKm39HxNtNKFM5xehjAoWC1KfJc52XVQGFO%2Fm2EQiJj6RoifNkiIQKb4m7nGr86zvIQKDQcxcpVbiGNEcC8UugZgCnuspSPjuJLARb%2BNT%2FjLKopd2%2FUKDlIY%2BAoyEk%2B%2FGIWL5TgvjjmT5uaJ5AcnTm4b7DlV%2FkmDsYHFQez0Mu4%2BwoujZEqR0K%2BtDSyAvva2nUUGabZuDeaaiQD4JfrokXC5GWtninHQCAoPiC4q%2FMYkHS82wxPjJp0l4cStwzEDQ5LJ4cehKm4tCoY1m1whWIJsNuyfLtIUH2rBTuF9D5DFmsmpXiKc4LE9saQgSlLwNBEGASqAbRuy7Tc2ZlcIp1lBllioxhoYL3XcjaXOX3qluWGMwgXdV2Odq0L03MkoxuL31wU%3D&X-Amz-SignedHeaders=host&response-content-disposition=attachment%3Bfilename%3D%22Heroes%20of%20Might%20and%20Magic%20IV-overview_v1-2018-05-16.csv%22&X-Amz-Signature=47af9a041970244b51fa6dd6a31d78ae9ff56a4db76a54d3e1b8a7ec4631defa');
          expect(analytics.type, 'overview_v2');
          expect(analytics.dateRange.startedAt, '2018-03-13T00:00:00Z');
          expect(analytics.dateRange.endedAt, '2018-06-13T00:00:00Z');
        });
      });

      test('Users', () async {
        final data = (await client.getUsers(ids: ['141981764'])).data!;
        expect(data.length, 1);

        final user = data.first;
        expect(user.id, '141981764');
        expect(user.login, 'twitchdev');
        expect(user.displayName, 'TwitchDev');
        expect(user.type, '');
        expect(user.broadcasterType, TwitchBroadcasterType.partner);
        expect(user.description,
            'Supporting third-party developers building Twitch integrations from chatbots to game integrations.');
        expect(user.profileImageUrl,
            'https://static-cdn.jtvnw.net/jtv_user_pictures/8a6381c7-d0c0-4576-b179-38bd5ce1d6af-profile_image-300x300.png');
        expect(user.offlineImageUrl,
            'https://static-cdn.jtvnw.net/jtv_user_pictures/3f13ab61-ec78-4fe6-8481-8682cb3b0ac2-channel_offline_image-1920x1080.png');
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
        expect(game.getBoxArtUrl(),
            'https://static-cdn.jtvnw.net/ttv-boxart/Fortnite-52x72.jpg');
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
        expect(customReward.defaultImage.url1x,
            'https://static-cdn.jtvnw.net/custom-reward-images/default-1.png');
        expect(customReward.defaultImage.url2x,
            'https://static-cdn.jtvnw.net/custom-reward-images/default-2.png');
        expect(customReward.defaultImage.url4x,
            'https://static-cdn.jtvnw.net/custom-reward-images/default-4.png');
        expect(customReward.shouldRedemptionsSkipRequestQueue, false);
        expect(customReward.redemptionsRedeemedCurrentStream, isNull);
        expect(customReward.cooldownExpiresAt, isNull);
      });

      test('Start Commercial', () async {
        final data =
            (await client.startCommercial(broadcasterId: '', length: 60)).data;
        expect(data!.length, 1);

        final commercial = data.first;
        expect(commercial.length, 60);
        expect(commercial.message, '');
        expect(commercial.retryAfter, 480);
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
              customReward.maxPerUserPerStreamSetting.maxPerUserPerStream, 0);
          expect(customReward.globalCooldownSetting.isEnabled, false);
          expect(customReward.globalCooldownSetting.globalCooldownSeconds, 0);
          expect(customReward.isPaused, false);
          expect(customReward.isInStock, false);
          expect(customReward.defaultImage.url1x,
              'https://static-cdn.jtvnw.net/custom-reward-images/default-1.png');
          expect(customReward.defaultImage.url2x,
              'https://static-cdn.jtvnw.net/custom-reward-images/default-2.png');
          expect(customReward.defaultImage.url4x,
              'https://static-cdn.jtvnw.net/custom-reward-images/default-4.png');
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
              customReward.maxPerUserPerStreamSetting.maxPerUserPerStream, 0);
          expect(customReward.globalCooldownSetting.isEnabled, false);
          expect(customReward.globalCooldownSetting.globalCooldownSeconds, 0);
          expect(customReward.isPaused, false);
          expect(customReward.isInStock, true);
          expect(customReward.defaultImage.url1x,
              'https://static-cdn.jtvnw.net/custom-reward-images/default-1.png');
          expect(customReward.defaultImage.url2x,
              'https://static-cdn.jtvnw.net/custom-reward-images/default-2.png');
          expect(customReward.defaultImage.url4x,
              'https://static-cdn.jtvnw.net/custom-reward-images/default-4.png');
          expect(customReward.shouldRedemptionsSkipRequestQueue, true);
          expect(customReward.redemptionsRedeemedCurrentStream, 60);
          expect(customReward.cooldownExpiresAt, isNull);
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
