import 'dart:convert';

import 'package:test/test.dart';
import 'package:twitch_api/src/models/twitch_channel_editor.dart';
import 'package:twitch_api/src/models/twitch_custom_reward.dart';
import 'package:twitch_api/src/models/twitch_extension_transaction.dart';
import 'package:twitch_api/src/models/twitch_response.dart';
import 'package:twitch_api/twitch_api.dart';

import 'test_utils.dart';

void main() {
  group('Parsing', () {
    test('Cheermotes', () {
      final json = jsonDecode(readFileStringSync('get_cheermotes.json'));
      final obj = TwitchResponse<TwitchCheermote>.cheermotes(
          json as Map<String, dynamic>);

      expect(obj.data!.length, 1);

      final cheermote = obj.data!.first;
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

    test('Get Extension Transactions', () {
      final json =
          jsonDecode(readFileStringSync('get_extension_transactions.json'));
      final obj =
          TwitchResponse<TwitchExtensionTransaction>.extensionTransaction(
              json as Map<String, dynamic>);

      expect(obj.data!.length, 2);

      final extensionTransaction = obj.data!.first;
      expect(extensionTransaction.id, '74c52265-e214-48a6-91b9-23b6014e8041');
      expect(extensionTransaction.timestamp.year, 2019);
      expect(extensionTransaction.timestamp.month, 1);
      expect(extensionTransaction.timestamp.day, 28);
      expect(extensionTransaction.broadcasterId, '439964613');
      expect(extensionTransaction.broadcasterLogin, 'chikuseuma');
      expect(extensionTransaction.broadcasterName, 'chikuseuma');
      expect(extensionTransaction.userId, '424596340');
      expect(extensionTransaction.userLogin, 'quotrok');
      expect(extensionTransaction.userName, 'quotrok');
      expect(extensionTransaction.productType,
          TwitchExtensionTransactionProductType.bitsInExtension);
      expect(extensionTransaction.productData.sku, 'testSku100');
      expect(extensionTransaction.productData.cost.amount, 100);
      expect(extensionTransaction.productData.cost.type, 'bits');
      expect(extensionTransaction.productData.displayName, 'Test Sku');
      expect(extensionTransaction.productData.inDevelopment, false);
    });

    group('Streams', () {
      test('1', () {
        final json = jsonDecode(readFileStringSync('get_streams_1.json'));
        final obj = TwitchResponse<TwitchStreamInfo>.streamsInfo(
            json as Map<String, dynamic>);

        expect(obj.data!.length, 1);

        final twitchStreamInfo = obj.data!.first;
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
    });

    group('Channel Editors', () {
      test('1', () {
        final json = jsonDecode(readFileStringSync('get_channel_editors.json'))
            as Map<String, dynamic>;
        final obj = TwitchResponse<TwitchChannelEditor>.channelEditor(json);
        expect(obj.data!.length, 2);

        final channelEditor = obj.data!.first;
        expect(channelEditor.userId, '182891647');
        expect(channelEditor.userName, 'mauerbac');
      });
    });

    group('Create Custom Rewards', () {
      test('1', () {
        final json =
            jsonDecode(readFileStringSync('create_custom_rewards.json'))
                as Map<String, dynamic>;
        final obj = TwitchResponse<TwitchCustomReward>.customReward(json);
        expect(obj.data!.length, 1);

        final customReward = obj.data!.first;
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
  });
}
