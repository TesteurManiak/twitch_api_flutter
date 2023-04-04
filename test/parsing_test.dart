import 'dart:convert';

import 'package:test/test.dart';
import 'package:twitch_api/twitch_api.dart';

import 'utils/test_utils.dart';

void main() {
  group('Parsing', () {
    group('Streams', () {
      test('1', () {
        final json = jsonDecode(readFileStringSync('get_streams.json'));
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
  });
}
