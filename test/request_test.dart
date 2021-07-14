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
          final data =
              (await client.getCustomRewards(broadcasterId: '274637212')).data;

          expect(data!.length, 1);
        });

        test('2', () async {
          final data = (await client.getCustomRewards(
                  broadcasterId: '274637212', onlyManageableRewards: true))
              .data;
          expect(data!.length, 1);
        });

        test('3', () async {
          final data = (await client.getCustomRewards(
            broadcasterId: '274637212',
            ids: ['92af127c-7326-4483-a52b-b0da0be61c01'],
          ))
              .data;
          expect(data!.length, 1);
        });
      });

      group('description', () {
        test('1', () async {
          final data = (await client.getCustomRewardRedemptions(
            broadcasterId: '274637212',
            rewardId: '92af127c-7326-4483-a52b-b0da0be61c01',
            status: TwitchRewardRedemptionStatus.canceled,
          ))
              .data;
          expect(data!.length, 1);
        });

        test('2', () async {
          final data = (await client.getCustomRewardRedemptions(
            broadcasterId: '274637212',
            rewardId: '92af127c-7326-4483-a52b-b0da0be61c01',
            ids: ['17fa2df1-ad76-4804-bfa5-a40ef63efe63'],
          ))
              .data;
          expect(data!.length, 1);
        });
      });
    });

    group('POST', () {
      test('Create Custom Rewards', () async {
        final data = (await client.createCustomRewards(
          broadcasterId: '274637212',
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
    });

    group('DELETE', () {
      test('Delete Custom Reward', () async {
        final data = await client.deleteCustomReward(
          broadcasterId: '274637212',
          id: 'b045196d-9ce7-4a27-a9b9-279ed341ab28',
        );
        expect(data, '204 No Content');
      });
    });
  });
}
