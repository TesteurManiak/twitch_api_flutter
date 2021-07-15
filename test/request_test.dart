import 'package:test/test.dart';
import 'package:twitch_api/twitch_api.dart';

import 'test_utils.dart';

void main() {
  group('Request', () {
    final client = TwitchClient(
      clientId: '',
      redirectUri: '',
      twitchHttpClient: TwitchMockProvider(),
    );

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

      test('Streams', () async {
        final data = (await client.getStreams()).data;
        expect(data!.length, 1);

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
        expect(twitchStreamInfo.thumbnailUrl,
            'https://static-cdn.jtvnw.net/previews-ttv/live_user_auronplay-{width}x{height}.jpg');
        expect(twitchStreamInfo.tagIds.length, 1);
        expect(twitchStreamInfo.isMature, false);
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
  });
}
