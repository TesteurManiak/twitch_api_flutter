import 'dart:convert';

import 'package:test/test.dart';
import 'package:twitch_api/twitch_api.dart';

import 'utils/test_utils.dart';

void main() {
  group('Parsing', () {
    test('Cheermotes', () {
      final obj = CheermotesResponse.fromJson(readJson('get_cheermotes.json'));

      expect(obj.data.length, 1);

      final cheermote = obj.data.first;
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
      expect(
        darkAnimated['1'],
        'https://d3aqoihi2n8ty8.cloudfront.net/actions/cheer/dark/animated/1/1.gif',
      );

      final darkStatic = cheermoteTier.images.dark.staticImgs;
      expect(darkStatic.containsKey('1'), true);
      expect(
        darkStatic['1'],
        'https://d3aqoihi2n8ty8.cloudfront.net/actions/cheer/dark/static/1/1.png',
      );
    });

    group('Streams', () {
      test('1', () {
        final json = jsonDecode(readFileStringSync('get_streams_1.json'));
        final obj = TwitchResponse<TwitchStreamInfo>.streamsInfo(
          json as Map<String, dynamic>,
        );

        expect(obj.data!.length, 1);

        final twitchStreamInfo = obj.data!.first;
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
        expect(twitchStreamInfo.tagIds?.length, 1);
        expect(twitchStreamInfo.isMature, false);
      });
    });
    test('Empty Tags', () {
      final json = jsonDecode(readFileStringSync('get_streams_3.json'));
      final obj = TwitchResponse<TwitchStreamInfo>.streamsInfo(
        json as Map<String, dynamic>,
      );

      expect(obj.data!.length, 1);

      final twitchStreamInfo = obj.data!.first;
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
      expect(twitchStreamInfo.tagIds?.length, null);
      expect(twitchStreamInfo.isMature, false);
    });
  });
}
